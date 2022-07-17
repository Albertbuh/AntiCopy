unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList,
  uCanonization, uValues, uShingleList_creation,uCompare_shingles,
  ComCtrls,  ExtCtrls, uFrame;

const
     ESCAPE = #27;
type
  TfrmMain = class(TForm)
    frLeftText: TfrMain;
    frRightText: TfrMain;
    alMain: TActionList;
    actCompare: TAction;
    btnCompare: TButton;
    lbPrintCompare: TLabel;
    lbHead: TLabel;
    imFullScreen: TImage;
    procedure actCompareExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmpbtnEnable(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);


  private
  {..}
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
implementation

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
     createSW(stop_wordsStr);
end;

function textsNotEmpty(t1,t2:string):boolean;
begin
    result:= (trim(t1)<>'') and ( trim(t2)<>'');
end;



procedure TfrmMain.actCompareExecute(Sender: TObject);
var
   a: array [1..2] of ptShingle;
   x:real;
   s:string;
   SubStrings1,SubStrings2:TSubStr;
begin

   a[1]:=make_shingles(frLeftText.TextInMoment);
   a[2]:=make_shingles(frRightText.TextInMoment);
   x:=compare(a[1],a[2]);

   s:=FloatToStr(int(X));
   s:=s+','+FloatToStr(int(frac(x)*1000));


   with lbPrintCompare do
   begin
       if x<= 20+0.0001 then
          Font.Color:=clLime
       else if x<=60+0.0001 then
            Font.Color:=clYellow
       else
           Font.Color:=clRed;
       Caption:= s + '%';
       Visible:=true;
   end;
   lbHead.Visible:=true;
   lbHead.Font.Color:=lbPrintCompare.Font.Color;



   with frLeftText do
   begin
   StrToSentence(frLeftText.TextInMoment, SubStrings1);
   sentcmp (Substrings1, a[2]);
   print(substrings1);

   actReWrite.Enabled:=true;
   substrings1:=nil;
   clr:=clGreen;
   end;

   with frRightText do
   begin
   StrToSentence(frRightText.TextInMoment, SubStrings2);
   sentcmp (Substrings2, a[1]);
   print(substrings2);
   actReWrite.Enabled:=true;
   substrings2:=nil;
   clr:=clGreen;
   end;
   {frRightText.remain.Text:=a[1]^.next^.ShingComb[5].words;
   frRightText.remain.Lines.Add(IntToStr(a[1]^.next^.ShingComb[5].hash));
   frLeftText.remain.Text:=a[2]^.next^.ShingComb[0].words;
   frLeftText.remain.Lines.Add(IntToStr(a[2]^.next^.ShingComb[0].hash));}

   //ShowMessage(IntTOStr(trunc(x)) + ' ' + IntToStr(count_shingles(a[1])) + ' ' + IntToStr(count_shingles(a[2])));
   shFree(a[1]);
   shFree(a[2]);

end;



procedure TfrmMain.cmpbtnEnable(Sender: TObject);
var
   FrameEdit:TRichEdit;
begin
      if (not(Sender is TRichEdit)) then Exit;
         frameEdit:=sender as TRichEdit;

      case FrameEdit.Tag of
      1:
      begin
        frLeftText.IsTextEmpty;
        frameEdit.SelAttributes.Color:=frLeftText.clr;
      end;
      2:
        begin
        frRightText.IsTextEmpty;
        frameEdit.SelAttributes.Color:=frRightText.clr;
        end;
      end;

      if (TextsNotEmpty(frRightText.TextInMoment,frLeftText.TextInMoment)) then
      begin
        actCompare.Enabled:=true;
     end
     else
     begin
         actCompare.Enabled:=false;
     end;
end;




procedure TfrmMain.FormActivate(Sender: TObject);
begin

    imFullScreen.Picture.LoadFromFile('background3.bmp');
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: char);
begin
     if key = ESCAPE then Close;
end;

end.




