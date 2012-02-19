unit InputBinaryUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ExtCtrls;

type
  TFormInputBinary = class(TForm)
    GroupBoxBinary: TGroupBox;
    CheckListBoxBinary: TCheckListBox;
    PanelButtons: TPanel;
    ButtonOk: TButton;
    ButtonCancel: TButton;
    LabelNumber: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CheckListBoxBinaryClickCheck(Sender: TObject);
  private
    { Private declarations }
    function GetNumber: Integer;
    procedure SetNumber(const Value: Integer);
  public
    { Public declarations }
    property Number: Integer read GetNumber write SetNumber; 
  end;

//var//
//  FormInputBinary: TFormInputBinary;//

implementation

{$R *.dfm}

uses IniFiles, StringFunctions51;

procedure TFormInputBinary.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  CheckListBoxBinary.Clear;
  for I := 0 to 31 do
  begin
    CheckListBoxBinary.Items.Add(Format('$%.8x(%s)', [Int64(1 shl I),
      HexToBin(StrToHex(IntegerToBuffer(1 shl I)), True)]))
  end;

  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do try
    Font.Name := ReadString(Self.ClassName, 'Font.Name', Font.Name);
    Font.Size := ReadInteger(Self.ClassName, 'Font.Size', Font.Size);
    try
      Font.Color := StringToColor(ReadString(Self.ClassName, 'Font.Color', ColorToString(Font.Color)));
    except
    end;
    Left := ReadInteger(Self.ClassName, 'Left', Left);
    Top := ReadInteger(Self.ClassName, 'Top', Top);
    Height := ReadInteger(Self.ClassName, 'Height', Height);
    Width := ReadInteger(Self.ClassName, 'Width', Width);
  finally
    Free;
  end;
end;

function TFormInputBinary.GetNumber: Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to 31 do
    if CheckListBoxBinary.Checked[I] then
      Result := Result or (1 shl I);
end;

procedure TFormInputBinary.SetNumber(const Value: Integer);
var
  I: Integer;
begin
  for I := 0 to 31 do
    CheckListBoxBinary.Checked[I] := Value and (1 shl I) = 1 shl I;
  LabelNumber.Caption := Format('%0:d($%0:.8x)', [Value]);
end;

procedure TFormInputBinary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WindowState := wsNormal;
end;

procedure TFormInputBinary.FormDestroy(Sender: TObject);
begin
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do try
    WriteInteger(Self.ClassName, 'Left', Left);
    WriteInteger(Self.ClassName, 'Top', Top);
    WriteInteger(Self.ClassName, 'Height', Height);
    WriteInteger(Self.ClassName, 'Width', Width);
  finally
    Free;
  end;
end;

procedure TFormInputBinary.CheckListBoxBinaryClickCheck(Sender: TObject);
begin
  LabelNumber.Caption := Format('%0:d($%0:.8x)', [Number]);
end;

end.
