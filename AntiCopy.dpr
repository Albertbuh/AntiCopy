program AntiCopy;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uCanonization in 'uCanonization.pas',
  uValues in 'uValues.pas',
  uShingleList_Creation in 'uShingleList_Creation.pas',
  uCompare_shingles in 'uCompare_shingles.pas',
  uFrame in 'uFrame.pas' {frMain: TFrame},
  uCreate_combinations in 'uCreate_combinations.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
