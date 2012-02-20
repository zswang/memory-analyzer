program MemoryAnalyzerApp;

uses
  Forms,
  MemoryAnalyzerUnit in 'MemoryAnalyzerUnit.pas' {FormMemoryAnalyzer},
  DasmBrowerUnit in 'DasmBrowerUnit.pas' {FormDasmBrower},
  HexEditorUnit in 'HexEditorUnit.pas' {FormHexEditor},
  MemoUnit in 'MemoUnit.pas' {FormMemo},
  ProcessListUnit in 'ProcessListUnit.pas' {FormProcessList},
  WindowDialog in 'WindowDialog.pas',
  InputBinaryUnit in 'InputBinaryUnit.pas' {FormInputBinary},
  ControlFunctions51 in 'ControlFunctions51.pas',
  CommonFunctions51 in 'CommonFunctions51.pas',
  StringFunctions51 in 'StringFunctions51.pas',
  MemoryFunctions51 in 'MemoryFunctions51.pas',
  LovelyHex20 in 'LovelyHex20.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMemoryAnalyzer, FormMemoryAnalyzer);
  Application.Run;
end.
