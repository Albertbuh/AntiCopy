unit uFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ActnList,
  uCanonization, uValues, uShingleList_creation,ucompare_shingles,
  Buttons,  ImgList, ToolWin, ExtCtrls;

type
  TfrMain = class(TFrame)
    btnOpen: TButton;
    reMain: TRichEdit;
    odMain: TOpenDialog;
    alMain: TActionList;
    actOpen: TAction;
    actSave: TAction;
    ilMain: TImageList;
    actSaveAs: TAction;
    sdMain: TSaveDialog;
    actClear: TAction;
    actReWrite: TAction;
    toolbMain: TToolBar;
    tbSave: TToolButton;
    ToolButton3: TToolButton;
    tbSaveAs: TToolButton;
    ToolButton4: TToolButton;
    tbClear: TToolButton;
    ToolButton6: TToolButton;
    tbRewrite: TToolButton;
    clrdMain: TColorDialog;
    actChangeColor: TAction;
    ToolButton1: TToolButton;
    tbChangeColor: TToolButton;
    procedure CreateParams(var Params: TCreateParams);override;
    
    procedure actOpenExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actSaveAsExecute(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure actReWriteExecute(Sender: TObject);
    procedure IsTextEmpty;
    procedure actChangeColorExecute(Sender: TObject);

  private
  {..}
  public
  FileAdr:string;
 // FileisOpen:boolean;
  SavedText, TextInMoment:string;
  clr:integer;
  saved_clr:integer;
  constructor Create(AOwner:TComponent);override;
  procedure Print(var a:TSubstr);
  procedure LinesToSolid;

  end;

implementation

{$R *.dfm}

constructor TfrMain.Create(AOwner: TComponent);
begin
  inherited;
  Brush.Style := bsClear;
  clr:=clBlack;
end;

procedure TfrMain.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
end;

function get_text(adr: string): string;
var
   s:string;
   f:TextFile;
begin
     AssignFile(f, adr);
     reset(f);

     result:='';
     while (not EOF(f)) do
     begin
         readln(f,s);
         if pos('.', s) <> 0 then insert(' ', s, pos('.', s)+1);
         result:=result+s;

     end;
     CloseFile(f);

end;

procedure TfrMain.Print(var a:TSubstr);
var
   i,k:integer;
begin
     reMain.Clear;
    a[0].substr:=' '+a[0].substr;
    for i:=low(a) to high(a) do
    begin
        if a[i].clr=Red then
           reMain.SelAttributes.Color:=clRed
        else   if clr <> clGreen then reMain.SelAttributes.Color:=clr
               else
               begin
                  if saved_clr <> clGreen then reMain.SelAttributes.Color:=saved_clr
                  else  reMain.SelAttributes.Color:=clBlack;
               end;

        with reMain.Lines do
        begin
            Add(a[i].substr);
        end;
    end;
    reMain.SelAttributes.Color:=clBlack;

end;

procedure SolidText(var s:string);
begin
    while pos(#13#10, s) <> 0 do
    begin
        delete(s,pos(#13#10, s) ,2);
    end;
end;

procedure TfrMain.LinesToSolid;
var
   text:string;
begin

     text:=reMain.Text;
     reMain.Clear;
     SolidText(text);
     reMain.Text:=text;
end;

procedure TfrMain.actOpenExecute(Sender: TObject);
begin
    if not odMain.Execute then exit;


    FileAdr:=odMain.Files[0];
    ReMain.Clear;
    ReMain.Text:=get_text(FileAdr);
     if saved_clr <> clGreen then ReMain.Font.Color:=saved_clr
     else ReMain.Font.Color:=clBlack;
    saved_clr:=clr;

  //  FileIsOpen:=true;
    SavedText:=reMain.Text;
    ReMain.SetFocus;
end;


procedure TfrMain.actSaveExecute(Sender: TObject);
begin

  if fileAdr <> '' then
  begin
     reMain.PlainText:=true;
     LinesToSolid;
     reMain.Lines.SaveToFile(FileAdr);

     reMain.PlainText:=false;
     SavedText:=reMain.Text;

     actSave.Enabled:=false;
  end;
end;

procedure TfrMain.actSaveAsExecute(Sender: TObject);
var
   filename:string;
   text:string;
   cmp_text:string;
begin
     if not sdMain.Execute then exit;

     reMain.PlainText:=true;
     sdMain.InitialDir := GetCurrentDir;
     filename:=sdMain.FileName;

     LinesToSolid;

     reMain.Lines.SaveToFile(filename);

     FileAdr:=filename;
     SavedText:=reMain.Text;
     reMain.PlainText:=false;
end;

procedure TfrMain.actClearExecute(Sender: TObject);
begin
     ReMain.clear;
     clr:=clBlack;
     saved_clr:=clBlack;
     ReMain.Text:=ReMain.Text+' ';
     ReMain.Clear;
end;

procedure TfrMain.actReWriteExecute(Sender: TObject);
var
   text:string;
begin
     reMain.Font.Color:=saved_clr;
     LinesToSolid;
     actRewrite.Enabled:=false;
end;

procedure TfrMain.IsTextEmpty;
begin
     TextinMoment:=reMain.Text;
     if trim(TextInMoment)<>'' then
     begin
         self.actSaveAs.Enabled:=true;
         self.actClear.Enabled:=true;
         if ( trim(TextInMoment) <> trim(SavedText)) and (FileAdr<>'') then
            self.actSave.Enabled:=true
         else
            self.actSave.Enabled:=false;
     end
     else
     begin
         self.actSave.Enabled:=false;
         self.actSaveAs.Enabled:=false;
         self.actClear.Enabled:=false;
         self.actReWrite.Enabled:=false;
     end;
end;

procedure TfrMain.actChangeColorExecute(Sender: TObject);
begin
     if not(clrdMain.Execute) then exit;



     clr:=clrdMain.Color;
     reMain.SelAttributes.Color := clr;
     saved_clr:=clr;
end;





end.
