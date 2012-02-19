(*//
标题:内存分析器
说明:提供全面的搜索功能和普通的编辑功能
日期:2004-09-30
支持:jihu.wang#gmail.com
设计:ZswangY37
//*)

//*******Begin 修改日志*******//
//2004-09-30 ZswangY37 No.1 建立
//----------------------------------------------------------------------1.00.008
//2005-02-01 ZswangY37 No.1 修正 采用多字节方式时，修改无效
//----------------------------------------------------------------------1.00.010
//2005-02-23 ZswangY37 No.1 添加 搜索字符的程序参数
//2005-02-23 ZswangY37 No.2 修正 文本保存到INI文件中前面有空格的情况
//----------------------------------------------------------------------1.00.011
//2005-06-22 ZswangY37 No.1 修正 WinXP下不能显示汇编的情况
//----------------------------------------------------------------------1.00.012
//2006-07-28 ZswangY37 No.1 添加 提高自己的访问权限，以便访问象War3.exe这样的进程
//----------------------------------------------------------------------1.00.012
//2006-09-22 ZswangY37 No.1 更名 MemoryScaner->MemoryAnalyzer
//2006-09-22 ZswangY37 No.2 添加 文件验证机制
//2006-09-22 ZswangY37 No.3 添加 C语言字符串表达式搜索
//----------------------------------------------------------------------1.01.005
//2006-09-23 ZswangY37 No.1 添加 处理第二个命令行参数
//----------------------------------------------------------------------1.01.006
//2006-10-22 ZswangY37 No.1 添加 整数输入框转换为16进制数值表达式
//2006-10-22 ZswangY37 No.2 优化 内存搜索函数，避免范围太大时候等待时间太长
//----------------------------------------------------------------------1.01.007
//2006-11-17 ZswangY37 No.1 优化 拖拽选择窗体时，按下鼠标获取到文件后焦点置回本窗体
//----------------------------------------------------------------------1.01.008
//2006-12-26 ZswangY37 No.1 优化 能打开"/??/C:\"这样的路径
//----------------------------------------------------------------------1.01.009
//2007-09-10 ZswangY37 No.1 添加 整数二进制输入的方式
//----------------------------------------------------------------------1.01.010
//2007-12-29 ZswangY37 No.1 优化 清除无效的选项
//2007-12-29 ZswangY37 No.2 优化 窗体选中对话框避免选中自己
//*******End 修改日志*******//

unit MemoryAnalyzerUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ActnList, ExtCtrls, StdCtrls, ComCtrls, ToolWin,
  Buttons;

type
  TFormMemoryAnalyzer = class(TForm)
    TimerButton: TTimer;
    MainMenuOne: TMainMenu;
    MenuItemFile: TMenuItem;
    MenuItemSelectProcess: TMenuItem;
    MenuItemSelectWindow: TMenuItem;
    MenuItemSearch: TMenuItem;
    MenuItemSearchA: TMenuItem;
    MenuItemInsert: TMenuItem;
    MenuItemAsmDisplay: TMenuItem;
    MenuItemHexEditor: TMenuItem;
    MenuItemRemove: TMenuItem;
    MenuItemSelect: TMenuItem;
    MenuItemSelectAll: TMenuItem;
    MenuItemSelectNotA: TMenuItem;
    MenuItemSelectChangedA: TMenuItem;
    MenuItemAddressInc: TMenuItem;
    MenuItemAddressDec: TMenuItem;
    MenuItemLengthDec: TMenuItem;
    MenuItemLengthInc: TMenuItem;
    MenuItemCopyA: TMenuItem;
    MenuItemDelete: TMenuItem;
    MenuItemEdit: TMenuItem;
    MenuItemHex: TMenuItem;
    MenuItemRefurbish: TMenuItem;
    MenuItemSave: TMenuItem;
    MenuItemOption: TMenuItem;
    MenuItemAddress: TMenuItem;
    MenuItemAddress1ByteA: TMenuItem;
    MenuItemAddress16ByteA: TMenuItem;
    MenuItemAddress256ByteA: TMenuItem;
    MenuItemAddress1024ByteA: TMenuItem;
    MenuItemAddress4096ByteA: TMenuItem;
    MenuItemAddressCustomA: TMenuItem;
    MenuItemLength: TMenuItem;
    MenuItemLength1ByteA: TMenuItem;
    MenuItemLength16ByteA: TMenuItem;
    MenuItemLength32ByteA: TMenuItem;
    MenuItemLengthCustomA: TMenuItem;
    MenuItemCopy: TMenuItem;
    MenuItemCopyAllA: TMenuItem;
    MenuItemCopyNewA: TMenuItem;
    MenuItemCopyOldA: TMenuItem;
    MenuItemCopyAddressA: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemAbout: TMenuItem;
    ActionListTools: TActionList;
    ActionAddressInc: TAction;
    ActionAddressDec: TAction;
    ActionLengthInc: TAction;
    ActionLengthDec: TAction;
    ActionSearch: TAction;
    ActionAddress1Byte: TAction;
    ActionAddress16Byte: TAction;
    ActionAddress32Byte: TAction;
    ActionAddress256Byte: TAction;
    ActionAddress1024Byte: TAction;
    ActionAddress4096Byte: TAction;
    ActionAddressCustom: TAction;
    ActionLength1Byte: TAction;
    ActionLength16Byte: TAction;
    ActionLength32Byte: TAction;
    ActionLengthCustom: TAction;
    ActionDelete: TAction;
    ActionClear: TAction;
    ActionEdit: TAction;
    ActionSave: TAction;
    ActionCopy: TAction;
    ActionHex: TAction;
    ActionRefurbish: TAction;
    ActionSelectAll: TAction;
    ActionInsert: TAction;
    ActionRemove: TAction;
    ActionHexEditor: TAction;
    ActionAsmDisplay: TAction;
    ActionCopyAll: TAction;
    ActionCopyNew: TAction;
    ActionCopyOld: TAction;
    ActionCopyAddress: TAction;
    ActionSelectWindow: TAction;
    ActionSelectProcess: TAction;
    ActionSelectNot: TAction;
    ActionSelectChanged: TAction;
    ActionAbout: TAction;
    PopupMenuAddress: TPopupMenu;
    MenuItemAddress1Byte: TMenuItem;
    MenuItemAddress16Byte: TMenuItem;
    MenuItemAddress32Byte: TMenuItem;
    MenuItemAddress256Byte: TMenuItem;
    MenuItemAddress1024Byte: TMenuItem;
    MenuItemAddress4096Byte: TMenuItem;
    MenuItemAddressCustom: TMenuItem;
    PopupMenuLength: TPopupMenu;
    MenuItemLength1Byte: TMenuItem;
    MenuItemLength16Byte: TMenuItem;
    MenuItemLength32Byte: TMenuItem;
    MenuItemLengthCustom: TMenuItem;
    PopupMenuCopy: TPopupMenu;
    MenuItemCopyNew: TMenuItem;
    MenuItemCopyOld: TMenuItem;
    MenuItemCopyAddress: TMenuItem;
    MenuItemCopyAll: TMenuItem;
    ImageListDrag: TImageList;
    ImageListTools: TImageList;
    ImageListSort: TImageList;
    OpenDialogOne: TOpenDialog;
    SaveDialogOne: TSaveDialog;
    PopupMenuList: TPopupMenu;
    MenuItemRefurbishB: TMenuItem;
    MenuItemHexB: TMenuItem;
    MenuItemSearchB: TMenuItem;
    MenuItemDeleteB: TMenuItem;
    MenuItemClear: TMenuItem;
    MenuItemCopyB: TMenuItem;
    MenuItemSelected: TMenuItem;
    MenuItemSelectAllB: TMenuItem;
    MenuItemSelectNot: TMenuItem;
    MenuItemSelectChanged: TMenuItem;
    MenuItemSaveB: TMenuItem;
    MenuItemInsertB: TMenuItem;
    ToolBarSelect: TToolBar;
    ImageDrag: TImage;
    ToolButtonSelectWindow: TToolButton;
    ToolButtonSelectProcess: TToolButton;
    ToolButtonSeparatorSelect: TToolButton;
    ComboBoxSelect: TComboBox;
    GroupBoxSearch: TGroupBox;
    PageControlSearch: TPageControl;
    TabSheetGeneral: TTabSheet;
    ComboBoxGeneral: TComboBox;
    TabSheetMark: TTabSheet;
    ComboBoxMark: TComboBox;
    TabSheetPascal: TTabSheet;
    ComboBoxPascal: TComboBox;
    TabSheetC: TTabSheet;
    ComboBoxC: TComboBox;
    TabSheetHex: TTabSheet;
    ComboBoxHex: TComboBox;
    TabSheetInteger: TTabSheet;
    ComboBoxInteger: TComboBox;
    TabSheetBin: TTabSheet;
    ComboBoxBin: TComboBox;
    TabSheetSmallint: TTabSheet;
    ComboBoxSmallint: TComboBox;
    TabSheetInt64: TTabSheet;
    ComboBoxInt64: TComboBox;
    TabSheetSingle: TTabSheet;
    ComboBoxSingle: TComboBox;
    TabSheetDouble: TTabSheet;
    ComboBoxDouble: TComboBox;
    TabSheetGUID: TTabSheet;
    ComboBoxGUID: TComboBox;
    TabSheetBase64: TTabSheet;
    ComboBoxBase64: TComboBox;
    GroupBoxRange: TGroupBox;
    LabelRange: TLabel;
    ComboBoxStartAddress: TComboBox;
    ComboBoxEndAddress: TComboBox;
    CheckBoxIgnoreCase: TCheckBox;
    ComboBoxCode: TComboBox;
    GroupBoxMemoryList: TGroupBox;
    ListViewMemoryList: TListView;
    ToolBarMemoryList: TToolBar;
    ToolButtonAddressInc: TToolButton;
    ToolButtonAddressDec: TToolButton;
    ToolButtonSeparatorAddress: TToolButton;
    ToolButtonLengthInc: TToolButton;
    ToolButtonLengthDec: TToolButton;
    ToolButtonRemove: TToolButton;
    ToolButtonSeparatorLength: TToolButton;
    ToolButtonDelete: TToolButton;
    ToolButtonHex: TToolButton;
    ToolButtonCopy: TToolButton;
    ToolButtonSave: TToolButton;
    ToolButtonInsert: TToolButton;
    ToolButtonSeparatorEdit: TToolButton;
    ToolButtonRefurbish: TToolButton;
    ToolButtonEdit: TToolButton;
    ToolButtonEditor: TToolButton;
    ToolButtonHexEditor: TToolButton;
    ToolButtonAsmDisplay: TToolButton;
    ToolButtonSeparatorSearch: TToolButton;
    ToolButtonClear: TToolButton;
    ToolButtonSearch: TToolButton;
    StatusBarOne: TStatusBar;
    LabelHttp: TLabel;
    ActionClose: TAction;
    ActionFileAnalyzer: TAction;
    MenuItem: TMenuItem;
    MenuItemClose: TMenuItem;
    ActionOpenDir: TAction;
    MenuItemOpenDir: TMenuItem;
    ToolButtonFileAnalyzer: TToolButton;
    ToolButtonOpenDir: TToolButton;
    SpeedButtonIntegerHex: TSpeedButton;
    ActionDoubleGet: TAction;
    ActionDoubleHex: TAction;
    ActionDoubleDisplay: TAction;
    ActionGetNewValue: TAction;
    MenuItemLineC: TMenuItem;
    MenuItemCopyC: TMenuItem;
    MenuItemCopyOldC: TMenuItem;
    MenuItemCopyNewC: TMenuItem;
    MenuItemCopyAddressC: TMenuItem;
    MenuItemCopyAllC: TMenuItem;
    MenuItemDoubleClickC: TMenuItem;
    MenuItemDoubleDisplayC: TMenuItem;
    MenuItemDoubleHexC: TMenuItem;
    MenuItemDoubleGetC: TMenuItem;
    MenuItemDoubleClickA: TMenuItem;
    MenuItemDoubleDisplayA: TMenuItem;
    MenuItemDoubleHexA: TMenuItem;
    MenuItemDoubleGetA: TMenuItem;
    MenuItemGetNewValueC: TMenuItem;
    ActionHelp: TAction;
    MenuItemHelpA: TMenuItem;
    ActionBlog: TAction;
    MenuItemBlog: TMenuItem;
    SpeedButtonBin: TSpeedButton;
    ActionLiveUpdate: TAction;
    MenuItemLiveUpdate: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBoxChange(Sender: TObject);
    procedure ComboBoxSelectChange(Sender: TObject);
    procedure ComboBoxCodeSelect(Sender: TObject);
    procedure PageControlSearchChange(Sender: TObject);
    procedure ImageDragMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageDragMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageDragMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolBarSelectResize(Sender: TObject);
    procedure StatusBarOneResize(Sender: TObject);
    procedure LabelHttpClick(Sender: TObject);
    procedure ActionSearchExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ComboBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButtonMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ToolButtonMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ActionOffsetExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListViewMemoryListChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ListViewMemoryListColumnClick(Sender: TObject;
      Column: TListColumn);
    procedure ListViewMemoryListCompare(Sender: TObject; Item1,
      Item2: TListItem; Data: Integer; var Compare: Integer);
    procedure ListViewMemoryListCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ListViewMemoryListSelectItem(Sender: TObject;
      Item: TListItem; Selected: Boolean);
    procedure ListViewMemoryListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TimerButtonTimer(Sender: TObject);
    procedure ActionNByteExecute(Sender: TObject);
    procedure ActionAddressCustomExecute(Sender: TObject);
    procedure ActionLengthCustomExecute(Sender: TObject);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure ActionClearExecute(Sender: TObject);
    procedure ActionEditExecute(Sender: TObject);
    procedure ActionSaveExecute(Sender: TObject);
    procedure ActionInsertExecute(Sender: TObject);
    procedure ComboBoxStartAddressChange(Sender: TObject);
    procedure ActionCopyExecute(Sender: TObject);
    procedure ActionHexExecute(Sender: TObject);
    procedure ActionSelectAllExecute(Sender: TObject);
    procedure ActionRemoveExecute(Sender: TObject);
    procedure ActionHexEditorExecute(Sender: TObject);
    procedure ActionAsmDisplayExecute(Sender: TObject);
    procedure ActionSelectWindowExecute(Sender: TObject);
    procedure ActionSelectProcessExecute(Sender: TObject);
    procedure ActionSelectNotExecute(Sender: TObject);
    procedure ActionSelectChangedExecute(Sender: TObject);
    procedure ActionAboutExecute(Sender: TObject);
    procedure ActionRefurbishExecute(Sender: TObject);
    procedure ActionCopyAllExecute(Sender: TObject);
    procedure ListViewMemoryListDblClick(Sender: TObject);
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionFileAnalyzerExecute(Sender: TObject);
    procedure ActionOpenDirExecute(Sender: TObject);
    procedure SpeedButtonIntegerHexClick(Sender: TObject);
    procedure ActionDoubleGetExecute(Sender: TObject);
    procedure ActionGetNewValueExecute(Sender: TObject);
    procedure ActionBlogExecute(Sender: TObject);
    procedure ActionHelpExecute(Sender: TObject);
    procedure TabSheetIntegerResize(Sender: TObject);
    procedure SpeedButtonBinClick(Sender: TObject);
    procedure ActionLiveUpdateExecute(Sender: TObject);
  private
    { Private declarations }
    FMouseDown: Boolean;
    FWindowHandle: THandle;
    FProcessId: THandle;
    FChanging: Boolean;
    FSearchText: string;
    FSearching: Boolean;
    FEndAddress: Integer;
    FStartAddress: Integer;
    FDownButton: TControl;
    FDownTickCount: DWORD;
    FFileAnalyzer: string;
    procedure DoChange;
    procedure ApplicationHint(Sender: TObject);
    procedure FormDasmBrowerClickAddr(Sender: TObject;
      mAddress: Integer; mLength: Integer);
  public
    { Public declarations }
  end;

var
  FormMemoryAnalyzer: TFormMemoryAnalyzer;

implementation

{$R *.dfm}

{$R CursorRes.res}

uses TlHelp32, PsAPI, ShellAPI, EncdDecd, Math, Clipbrd, IniFiles,
  StringFunctions51, CommonFunctions51, ControlFunctions51, MemoryFunctions51,
  MemoUnit, DasmBrowerUnit, HexEditorUnit, ProcessListUnit, WindowDialog,
  InputBinaryUnit;

const crFindWindow = 10;

type
  TDisplayStyle = (dsPascal, dsHex);
  TItemInfo = record
    rDisplayStyle: TDisplayStyle; //显示方式
    rAddress: Integer; //地址
    rSize: Integer; //大小
  end;
  PItemInfo = ^TItemInfo;

procedure TFormMemoryAnalyzer.FormCreate(Sender: TObject);
var
  I, J: Integer;
  vComboBoxSearch: TComboBox;
  vProcessID: THandle;
  S: string;
begin
  ProcessPrivilege(GetCurrentProcess, 'SeDebugPrivilege', True); // 提高自己的访问权限

  Font.Assign(Screen.MenuFont);
  Screen.Cursors[crFindWindow] :=
    {//打开可以重文件载入}LoadCursor(HInstance, 'CursorFindWindow'); (*//
LoadCursorFromFile(PChar(ExtractFilePath(ParamStr(0)) + 'FindWindow2.cur'));//*)
  ImageListDrag.GetBitmap(Ord(FMouseDown), ImageDrag.Picture.Bitmap);

  LabelHttp.Font.Color := clBlue;
  LabelHttp.Font.Style := [fsUnderline];

  Application.OnHint := ApplicationHint;
  Application.Title := vModuleVersionInfomation.rProductName + '-' +
    vModuleVersionInfomation.rProductVersion;
  Application.HelpFile := ChangeFileExt(ParamStr(0), '.hlp');
  Caption := Application.Title;
  FFileAnalyzer := ExtractFilePath(ParamStr(0)) + 'FileAnalyzerApp.exe';
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do try
    FFileAnalyzer := ReadString(Self.ClassName, 'FileAnalyzer', FFileAnalyzer);
    Font.Name := ReadString(Self.ClassName, 'Font.Name', Font.Name);
    Font.Size := ReadInteger(Self.ClassName, 'Font.Size', Font.Size);
    try
      Font.Color := StringToColor(ReadString(Self.ClassName, 'Font.Color',
        ColorToString(Font.Color)));
    except
    end;

    Left := ReadInteger(Self.ClassName, 'Left', Left);
    Top := ReadInteger(Self.ClassName, 'Top', Top);
    Height := ReadInteger(Self.ClassName, 'Height', Height);
    Width := ReadInteger(Self.ClassName, 'Width', Width);
    for I := 0 to ComponentCount - 1 do
    begin
      if Components[I] is TComboBox then
        with TComboBox(Components[I]) do
        begin
          if Style = csDropDownList then
            ItemIndex := ReadInteger(Name, 'ItemIndex', ItemIndex)
          else                     
          begin
            Items.Text := DecodeString(ReadString(Name, 'Items.Text',
              EncodeString(Items.Text)));
            Text := ReadString(Name, 'Text', Text);
          end;
        end
      else if Components[I] is TPageControl then
        with TPageControl(Components[I]) do
          ActivePageIndex :=
            ReadInteger(Name, 'ActivePageIndex', ActivePageIndex)
      else if Components[I] is TCheckBox then
        with TCheckBox(Components[I]) do
          Checked := ReadBool(Name, 'Checked', Checked)
      else if Components[I] is TOpenDialog then
        with TOpenDialog(Components[I]) do
          FilterIndex := ReadInteger(Name, 'FilterIndex', FilterIndex)
      else if Components[I] is TListView then
        with TListView(Components[I]) do
          for J := 0 to Columns.Count - 1 do
            Columns[J].Width := ReadInteger(Name,
              Format('Columns[%d].Width', [J]), Columns[J].Width);
    end;
    PopupMenuAddress.Tag :=
      ReadInteger('Fields', 'AddressByte', PopupMenuAddress.Tag);
    PopupMenuLength.Tag :=
      ReadInteger('Fields', 'LengthByte', PopupMenuLength.Tag);
    PopupMenuCopy.Tag :=
      ReadInteger('Fields', 'CopyStyle', PopupMenuCopy.Tag);
    PopupMenuList.Tag :=
      ReadInteger('Fields', 'DoubleStyle', PopupMenuList.Tag);
  finally
    Free;
  end;

  ///////Begin 清除无效的选项                                                   //2007-12-29 ZswangY37 No.1
  for I := ComboBoxSelect.Items.Count - 1 downto 0 do
  begin
    S := ComboBoxSelect.Items[I];
    vProcessID := StrToIntDef(StrLeft(S + '=', '='), 0);
    if not ProcessExists(vProcessID) or
      not SameText(StrRight(S, '='), ProcessFileName(vProcessID)) then
      ComboBoxSelect.Items.Delete(I);
  end;
  S := ComboBoxSelect.Text;
  vProcessID := StrToIntDef(StrLeft(S + '=', '='), 0);
  if not ProcessExists(vProcessID) or
    not SameText(StrRight(S, '='), ProcessFileName(vProcessID)) then
    ComboBoxSelect.Text := '';
  ///////End 清除无效的选项

  if ParamStr(1) <> '' then
  begin
    ComboBoxSelect.Text := ParamStr(1);
    ComboBoxSelectChange(ComboBoxSelect);
  end;
  if ParamStr(2) <> '' then                                                     //2006-09-23 No.1 ZswangY37
  begin
    FSearchText := HexToStr(ParamStr(2));
    PageControlSearchChange(PageControlSearch);
  end else
  begin
    vComboBoxSearch := nil;
    for I := 0 to PageControlSearch.ActivePage.ControlCount - 1 do
      if PageControlSearch.ActivePage.Controls[I] is TComboBox then
      begin
        vComboBoxSearch := TComboBox(PageControlSearch.ActivePage.Controls[I]);
        Break;
      end;
    if Assigned(vComboBoxSearch) then ComboBoxChange(vComboBoxSearch);
    ComboBoxSelectChange(ComboBoxSelect);
    ComboBoxCodeSelect(ComboBoxCode);
  end;
  case PopupMenuAddress.Tag of
    1: ActionAddress1Byte.Checked := True;
    16: ActionAddress16Byte.Checked := True;
    32: ActionAddress32Byte.Checked := True;
    256: ActionAddress256Byte.Checked := True;
    1024: ActionAddress1024Byte.Checked := True;
    4096: ActionAddress4096Byte.Checked := True;
  else
    begin
      ActionAddressCustom.Checked := True;
      ActionAddressCustom.Caption :=
        Format('自定义--%d字节', [PopupMenuAddress.Tag]);
    end;
  end;

  case PopupMenuLength.Tag of
    1: ActionLength1Byte.Checked := True;
    16: ActionLength16Byte.Checked := True;
    32: ActionLength32Byte.Checked := True;
  else
    begin
      ActionLengthCustom.Checked := True;
      ActionLengthCustom.Caption :=
        Format('自定义--%d字节', [PopupMenuLength.Tag]);
    end;
  end;

  case PopupMenuCopy.Tag of
    1: ActionCopyAll.Checked := True;
    2: ActionCopyNew.Checked := True;
    3: ActionCopyOld.Checked := True;
  else  ActionCopyAddress.Checked := True;
  end;

  case PopupMenuList.Tag of
    1: ActionDoubleGet.Checked := True;
    2: ActionDoubleHex.Checked := True;
  else ActionDoubleDisplay.Checked := True;
  end;

  ListViewHeaderImages(ListViewMemoryList, ImageListSort);
  DoChange;
end;

procedure TFormMemoryAnalyzer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WindowState := wsNormal;
end;

procedure TFormMemoryAnalyzer.ApplicationHint(Sender: TObject);
var
  vStatusBar: TStatusBar;
begin
  if not Assigned(Screen.ActiveForm) then Exit;
  TComponent(vStatusBar) := Screen.ActiveForm.FindComponent('StatusBarOne');
  if not Assigned(vStatusBar) then Exit;
  if Length(Application.Hint) > 0 then
  begin
    vStatusBar.SimplePanel := True;
    vStatusBar.SimpleText := Application.Hint;
  end else vStatusBar.SimplePanel := False;
  LabelHttp.Visible := not vStatusBar.SimplePanel;
end;

procedure TFormMemoryAnalyzer.DoChange;
begin
  ActionSearch.Enabled := (FSearchText <> '') and (FProcessId <> 0);
  ActionClear.Enabled := ListViewMemoryList.Items.Count > 0;
  ActionSelectAll.Enabled := ListViewMemoryList.Items.Count > 0;
  ActionSelectNot.Enabled := ListViewMemoryList.Items.Count > 0;
  ActionSelectChanged.Enabled := ListViewMemoryList.Items.Count > 0;

  ActionSave.Enabled := ListViewMemoryList.SelCount = 1;
  ActionGetNewValue.Enabled := ListViewMemoryList.SelCount = 1;

  ActionDelete.Enabled := ListViewMemoryList.SelCount > 0;
  ActionCopy.Enabled := ListViewMemoryList.SelCount > 0;
  ActionHex.Enabled := ListViewMemoryList.SelCount > 0;
  ActionEdit.Enabled := ListViewMemoryList.SelCount > 0;
  ActionAddressInc.Enabled := ListViewMemoryList.SelCount > 0;
  ActionAddressDec.Enabled := ListViewMemoryList.SelCount > 0;
  ActionLengthInc.Enabled := ListViewMemoryList.SelCount > 0;
  ActionLengthDec.Enabled := ListViewMemoryList.SelCount > 0;
  ActionRefurbish.Enabled := ListViewMemoryList.SelCount > 0;
  ActionRemove.Enabled := ListViewMemoryList.SelCount = 2;
  ActionHexEditor.Enabled := ListViewMemoryList.SelCount = 1;
  ActionAsmDisplay.Enabled := ListViewMemoryList.SelCount = 1;
  ActionFileAnalyzer.Enabled := FProcessID <> 0;
  ActionFileAnalyzer.Visible := FileExists(FFileAnalyzer);
  ActionOpenDir.Enabled := ProcessExists(FProcessID);

  LabelHttp.Visible := not FSearching;
  LabelHttp.Caption := vModuleVersionInfomation.rComments;

  PageControlSearch.Enabled := not FSearching;
  GroupBoxRange.Enabled := not FSearching;
  if FSearching then begin
    ActionSearch.ImageIndex := 5;
    ActionSearch.Caption := '停止(&S)';
    ActionSearch.Hint := '停止';
  end else begin
    ActionSearch.ImageIndex := 4;
    ActionSearch.Caption := '搜索(&S)';
    ActionSearch.Hint := '搜索';
  end;
  StatusBarOne.Panels[0].Text := Format('Count:%d', [ListViewMemoryList.Items.Count]);
end;

procedure TFormMemoryAnalyzer.ComboBoxChange(Sender: TObject);
var
  vInteger: Integer;
  vInt64: Int64;
  vSingle: Single;
  vDouble: Double;
begin
  if FChanging then Exit;
  if Sender = ComboBoxGeneral then
    case ComboBoxCode.ItemIndex of
      0: FSearchText := TComboBox(Sender).Text;
      1: FSearchText := WideStringToBuffer(TComboBox(Sender).Text);
      2: FSearchText := AnsiToUtf8(TComboBox(Sender).Text);
    end
  else if Sender = ComboBoxBin then
    FSearchText := HexToStr(BinToHex(ComboBoxBin.Text))
  else if Sender = ComboBoxHex then
    FSearchText := HexToStr(ComboBoxHex.Text)
  else if Sender = ComboBoxBase64 then
    try
      FSearchText := DecodeString(ComboBoxBase64.Text);
    except
    end
  else if Sender = ComboBoxC then
    FSearchText := ExpressionToString(ComboBoxC.Text)
  else if Sender = ComboBoxPascal then
    FSearchText := DisplayToString(ComboBoxPascal.Text)
  else if Sender = ComboBoxInteger then
    if TryStrToInt(Trim(ComboBoxInteger.Text), vInteger) then
      FSearchText := IntegerToBuffer(vInteger)
    else FSearchText := ''
  else if Sender = ComboBoxInt64 then
    if TryStrToInt64(Trim(ComboBoxInt64.Text), vInt64) then
      FSearchText := Int64ToBuffer(StrToInt64Def(ComboBoxInt64.Text, 0))
    else FSearchText := ''
  else if Sender = ComboBoxSingle then
    if TryStrToFloat(Trim(ComboBoxInt64.Text), vSingle) then
      FSearchText := SingleToBuffer(vSingle)
    else FSearchText := ''
  else if Sender = ComboBoxDouble then
    if TryStrToFloat(Trim(ComboBoxInt64.Text), vDouble) then
      FSearchText := DoubleToBuffer(vDouble)
    else FSearchText := ''
  else if Sender = ComboBoxSmallint then
    if TryStrToInt(Trim(ComboBoxInteger.Text), vInteger) then
      FSearchText := SmallintToBuffer(vInteger)
    else FSearchText := ''
  else if Sender = ComboBoxGUID then
    try
      FSearchText := GUIDToBuffer(StringToGUID(ComboBoxGUID.Text))
    except
    end
  else if Sender = ComboBoxMark then
    FSearchText := HexToStr(ComboBoxMark.Text);
  DoChange;
end;

procedure TFormMemoryAnalyzer.ComboBoxSelectChange(Sender: TObject);
var
  vSelStart, vSelLength: Integer;
  vText: string;
begin
  FProcessID := StrToIntDef(StrLeft(TComboBox(Sender).Text + '=', '='), 0);
  vSelStart := TComboBox(Sender).SelStart;
  vSelLength := TComboBox(Sender).SelLength;
  vText := TComboBox(Sender).Text;
  if Pos('=', TComboBox(Sender).Text) <= 0 then
    if ProcessExists(FProcessID) then
      TComboBox(Sender).Font.Color := clWindowText
    else TComboBox(Sender).Font.Color := clRed
  else if SameText(StrRight(TComboBox(Sender).Text, '='),
    ProcessFileName(FProcessID)) then
      TComboBox(Sender).Font.Color := clWindowText
    else TComboBox(Sender).Font.Color := clRed;
  TComboBox(Sender).Text := vText;
  TComboBox(Sender).SelStart := vSelStart;
  TComboBox(Sender).SelLength := vSelLength;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ComboBoxCodeSelect(Sender: TObject);
begin
  if PageControlSearch.ActivePage = TabSheetGeneral then
    case ComboBoxCode.ItemIndex of
      0: FSearchText := ComboBoxGeneral.Text;
      1: FSearchText := WideStringToBuffer(ComboBoxGeneral.Text);
      2: FSearchText := AnsiToUtf8(ComboBoxGeneral.Text);
    end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.PageControlSearchChange(Sender: TObject);
begin
  FChanging := True;
  try
    if TPageControl(Sender).ActivePage = TabSheetBin then
      ComboBoxBin.Text := HexToBin(StrToHex(FSearchText, False), True)
    else if TPageControl(Sender).ActivePage = TabSheetGeneral then
      case ComboBoxCode.ItemIndex of
        0: ComboBoxGeneral.Text := FSearchText;
        1: ComboBoxGeneral.Text := BufferToWideString(FSearchText);
        2: ComboBoxGeneral.Text := Utf8ToAnsi(FSearchText);
      end
    else if TPageControl(Sender).ActivePage = TabSheetHex then
      ComboBoxHex.Text := StrToHex(FSearchText, True)
    else if TPageControl(Sender).ActivePage = TabSheetBase64 then
      ComboBoxBase64.Text := EncodeString(FSearchText)
    else if TPageControl(Sender).ActivePage = TabSheetPascal then
      ComboBoxPascal.Text := StringToDisplay(FSearchText)
    else if TPageControl(Sender).ActivePage = TabSheetC then
      ComboBoxC.Text := StringToExpression(FSearchText)
    else if TPageControl(Sender).ActivePage = TabSheetInteger then
      ComboBoxInteger.Text := IntToStr(BufferToInteger(FSearchText))
    else if TPageControl(Sender).ActivePage = TabSheetInt64 then
      ComboBoxInt64.Text := IntToStr(BufferToInt64(FSearchText))
    else if TPageControl(Sender).ActivePage = TabSheetSingle then
      ComboBoxSingle.Text := FloatToStr(BufferToSingle(FSearchText))
    else if TPageControl(Sender).ActivePage = TabSheetDouble then
      ComboBoxDouble.Text := FloatToStr(BufferToDouble(FSearchText))
    else if TPageControl(Sender).ActivePage = TabSheetSmallint then
      ComboBoxSmallint.Text := IntToStr(BufferToSmallint(FSearchText))
    else if TPageControl(Sender).ActivePage = TabSheetGUID then
      ComboBoxGUID.Text := GUIDToString(BufferToGUID(FSearchText))
    else if TPageControl(Sender).ActivePage = TabSheetMark then
      ComboBoxMark.Text := StrToHex(FSearchText, True)
  finally
    FChanging := False;
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ImageDragMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  vRect: TRect;
begin
  if Button <> mbLeft then Exit;
  FProcessId := 0;
  FWindowHandle := 0;
  ComboBoxSelect.Text := '';
  FMouseDown := True;
  ImageListDrag.GetBitmap(Ord(FMouseDown), TImage(Sender).Picture.Bitmap);
  vRect := TImage(Sender).BoundsRect;
  InvalidateRect(TImage(Sender).Parent.Handle, @vRect, True);
  Screen.Cursor := crFindWindow;
end;

procedure TFormMemoryAnalyzer.ImageDragMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  vHandle: THandle;
  vProcessId: Longword;
begin
  if not FMouseDown then Exit;
  vHandle := WindowFromPoint(Mouse.CursorPos);
  if vHandle = FWindowHandle then Exit; // 窗体一样
  GetWindowThreadProcessId(vHandle, vProcessId);
  if vProcessId = GetCurrentProcessId then Exit;
  if FWindowHandle <> 0 then TrackerWindow(FWindowHandle);
  FWindowHandle := vHandle;
  TrackerWindow(FWindowHandle);
  if FProcessId = vProcessId then Exit;
  FProcessId := vProcessId;
  ComboBoxSelect.Text := Format('%d=%s', [FProcessId, ProcessFileName(FProcessId)]);
  ComboBoxSelectChange(ComboBoxSelect);
end;

procedure TFormMemoryAnalyzer.ImageDragMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  vRect: TRect;
begin
  if not FMouseDown then Exit;
  if FWindowHandle <> 0 then TrackerWindow(FWindowHandle);
  FMouseDown := False;
  ImageListDrag.GetBitmap(Ord(FMouseDown), TImage(Sender).Picture.Bitmap);
  vRect := TImage(Sender).BoundsRect;
  InvalidateRect(TImage(Sender).Parent.Handle, @vRect, True);
  Screen.Cursor := crDefault;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ToolBarSelectResize(Sender: TObject);
begin
  ComboBoxSelect.Width := TToolBar(Sender).Width - ComboBoxSelect.Left - 2;
end;

procedure TFormMemoryAnalyzer.StatusBarOneResize(Sender: TObject);
begin
  LabelHttp.Left := (LabelHttp.Parent.Width - LabelHttp.Width) - 12;
end;

procedure TFormMemoryAnalyzer.LabelHttpClick(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar(TLabel(Sender).Caption), nil, nil, SW_SHOW);
end;

procedure TFormMemoryAnalyzer.ActionSearchExecute(Sender: TObject);
var
  I: Integer;
  vTickCount: DWORD;
  vOldItemCount: Integer;
  vComboBoxSearch: TComboBox;
  vLength: Integer;
  vItemInfo: PItemInfo;
begin
  vTickCount := GetTickCount;
  FSearching := not FSearching;
  DoChange;
  if not FSearching then Exit;
  if LabelHttp.Caption <>
    DecodeString('aHR0cDovL2Jsb2cuY3Nkbi5uZXQvenN3YW5n') then Exit;
  if FSearchText = '' then Exit;
  FProcessID := StrToIntDef(StrLeft(ComboBoxSelect.Text + '=', '='), 0);
  vComboBoxSearch := nil;
  for I := 0 to PageControlSearch.ActivePage.ControlCount - 1 do
    if PageControlSearch.ActivePage.Controls[I] is TComboBox then
    begin
      vComboBoxSearch := TComboBox(PageControlSearch.ActivePage.Controls[I]);
      Break;
    end;
  if not Assigned(vComboBoxSearch) then Exit;
  ComboBoxChange(vComboBoxSearch);
  with ComboBoxSelect do if Text <> '' then begin
    I := Items.IndexOf(Text);
    if I < 0 then
      Items.Insert(0, Text)
    else Items.Move(I, 0);
    ItemIndex := 0;
  end;
  with vComboBoxSearch do if Text <> '' then begin
    I := Items.IndexOf(Text);
    if I < 0 then
      Items.Insert(0, Text)
    else Items.Move(I, 0);
    ItemIndex := 0;
  end;

  FStartAddress := StrToIntDef(ComboBoxStartAddress.Text, 0);
  FEndAddress := StrToIntDef(ComboBoxEndAddress.Text, $0FFFFFFF);
  with ComboBoxStartAddress do if Text <> '' then begin
    I := Items.IndexOf(Text);
    if I < 0 then
      Items.Insert(0, Text)
    else begin
      Items.Move(I, 0);
      ItemIndex := 0;
    end;
  end;
  with ComboBoxEndAddress do if Text <> '' then begin
    I := Items.IndexOf(Text);
    if I < 0 then
      Items.Insert(0, Text)
    else begin
      Items.Move(I, 0);
      ItemIndex := 0;
    end;
  end;

  vOldItemCount := ListViewMemoryList.Items.Count;

  if ComboBoxMark = vComboBoxSearch then
  begin
    vLength := Length(HexToStr(StringReplace(ComboBoxMark.Text, '%', '0',
      [rfReplaceAll])));
    I := Process_SearchMark(FProcessId, ComboBoxMark.Text,
      FStartAddress, FEndAddress, CheckBoxIgnoreCase.Checked)
  end
  else
  begin
    vLength := Length(FSearchText);
    I := Process_SearchString(FProcessId, FSearchText,
      FStartAddress, FEndAddress, CheckBoxIgnoreCase.Checked);
  end;
  while I >= 0 do
  begin
    with ListViewMemoryList.Items.Add do
    begin
      New(vItemInfo);
      vItemInfo^.rDisplayStyle := dsPascal;
      vItemInfo^.rAddress := I;
      vItemInfo^.rSize := vLength;
      Data := vItemInfo;
      Caption := Format('%d', [FProcessId]);
      SubItems.Add(Format('$%.8x', [I]));
      SubItems.Add(
        StringToDisplay(Process_Read(FProcessId, I, vLength)));
      SubItems.Add(SubItems[SubItems.Count - 1]);
    end;
    if ComboBoxMark = vComboBoxSearch then
      I := Process_SearchMark(FProcessId, ComboBoxMark.Text,
        I + vLength, FEndAddress, CheckBoxIgnoreCase.Checked)
    else I := Process_SearchString(FProcessId, FSearchText, I + vLength,
      FEndAddress, CheckBoxIgnoreCase.Checked);
    Application.ProcessMessages;
    StatusBarOne.SimpleText := Format('%.8x', [I]);
    if not FSearching then Break;
  end;
  FSearching := False;
  StatusBarOne.SimpleText := Format('耗时:%d; 返回:%d',
    [GetTickCount - vTickCount, ListViewMemoryList.Items.Count - vOldItemCount]);
  DoChange;
end;

procedure TFormMemoryAnalyzer.FormResize(Sender: TObject);
var
  I, J: Integer;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TComboBox then
      with TComboBox(Components[I]) do
      begin
        if Style = csDropDownList then Continue;
        J := Items.IndexOf(Text);
        if J >= 0 then SendMessage(Handle, CB_SETCURSEL, J, 0);
      end;
end;

procedure TFormMemoryAnalyzer.ComboBoxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DELETE:
      if (Shift = [ssCtrl, ssShift]) and (TComboBox(Sender).Items.Count > 0) then
      begin
        TComboBox(Sender).Items.Clear;
        TComboBox(Sender).Text := '';
      end else if (Shift = [ssCtrl]) and (TComboBox(Sender).ItemIndex >= 0) then
      begin
        TComboBox(Sender).Items.Delete(TComboBox(Sender).ItemIndex);
        TComboBox(Sender).Text := '';
      end;
    VK_RETURN:
      ActionSearch.Execute;
  end;
end;

procedure TFormMemoryAnalyzer.ToolButtonMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  FDownButton := TControl(Sender);
  FDownTickCount := GetTickCount;
  TimerButton.Enabled := True;
end;

procedure TFormMemoryAnalyzer.ToolButtonMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TimerButton.Enabled := False;
end;

procedure TFormMemoryAnalyzer.ActionOffsetExecute(Sender: TObject);
var
  J: Integer;
  vItemInfo: PItemInfo;
begin
  ListViewMemoryList.Items.BeginUpdate;
  try
    for J := 0 to ListViewMemoryList.Items.Count - 1 do
      with ListViewMemoryList.Items[J] do
      begin
        if not Selected then Continue;
        if not Assigned(Data) then Break;
        vItemInfo := Data;
        if Sender = ActionAddressInc then
          vItemInfo^.rAddress :=
            Min($7FFFFFFF, vItemInfo^.rAddress + PopupMenuAddress.Tag)
        else if Sender = ActionAddressDec then
          vItemInfo^.rAddress :=
            Max($00000000, vItemInfo^.rAddress - PopupMenuAddress.Tag)
        else if Sender = ActionLengthInc then
          vItemInfo^.rSize := Min($100, vItemInfo^.rSize + PopupMenuLength.Tag)
        else if Sender = ActionLengthDec then
          vItemInfo^.rSize := Max($000, vItemInfo^.rSize - PopupMenuLength.Tag)
        else if Sender = ActionHex then
          vItemInfo^.rDisplayStyle :=
            TDisplayStyle((Ord(vItemInfo^.rDisplayStyle) + 1) mod 2);
        SubItems[0] := Format('$%.8x', [vItemInfo^.rAddress]);
        case vItemInfo^.rDisplayStyle of
          dsPascal: SubItems[1] := StringToDisplay(
            Process_Read(StrToIntDef(Caption, 0), vItemInfo^.rAddress, vItemInfo^.rSize));
        else SubItems[1] := StrToHex(
          Process_Read(StrToIntDef(Caption, 0), vItemInfo^.rAddress, vItemInfo^.rSize));
        end;
        SubItems[2] := SubItems[1];
      end;
  finally
    ListViewMemoryList.Items.EndUpdate;
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.FormDestroy(Sender: TObject);
var
  I, J: Integer;
  vItemInfo: PItemInfo;
begin
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do try
    WriteInteger(Self.ClassName, 'Left', Left);
    WriteInteger(Self.ClassName, 'Top', Top);
    WriteInteger(Self.ClassName, 'Height', Height);
    WriteInteger(Self.ClassName, 'Width', Width);

    for I := 0 to ComponentCount - 1 do
    begin
      if Components[I] is TComboBox then
        with TComboBox(Components[I]) do
        begin
          if Style = csDropDownList then
            WriteInteger(Name, 'ItemIndex', ItemIndex)
          else
          begin
            WriteString(Name, 'Items.Text', EncodeString(Items.Text));
            WriteString(Name, 'Text', '"' + Text + '"');
          end;
        end
      else if Components[I] is TPageControl then
        with TPageControl(Components[I]) do
          WriteInteger(Name, 'ActivePageIndex', ActivePageIndex)
      else if Components[I] is TCheckBox then
        with TCheckBox(Components[I]) do
          WriteBool(Name, 'Checked', Checked)
      else if Components[I] is TOpenDialog then
        with TOpenDialog(Components[I]) do
          WriteInteger(Name, 'FilterIndex', FilterIndex)
      else if Components[I] is TListView then
        with TListView(Components[I]) do
          for J := 0 to Columns.Count - 1 do
            WriteInteger(Name, Format('Columns[%d].Width', [J]),
              Columns[J].Width);
    end;
    WriteInteger('Fields', 'AddressByte', PopupMenuAddress.Tag);
    WriteInteger('Fields', 'LengthByte', PopupMenuLength.Tag);
    WriteInteger('Fields', 'CopyStyle', PopupMenuCopy.Tag);
    WriteInteger('Fields', 'DoubleStyle', PopupMenuList.Tag);
  finally
    Free;
  end;
  for I := 0 to ListViewMemoryList.Items.Count - 1 do
  begin
    vItemInfo := ListViewMemoryList.Items[I].Data;
    ListViewMemoryList.Items[I].Data := nil;
    Dispose(vItemInfo);
  end;
end;

procedure TFormMemoryAnalyzer.ListViewMemoryListChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  DoChange;
end;

procedure TFormMemoryAnalyzer.ListViewMemoryListColumnClick(
  Sender: TObject; Column: TListColumn);
var
  I: Integer;
begin
  if Abs(TListView(Sender).Tag) = Column.Index + 1 then
    TListView(Sender).Tag := -TListView(Sender).Tag
  else TListView(Sender).Tag := Column.Index + 1;
  TListView(Sender).AlphaSort;

  for I := 0 to TListView(Sender).Columns.Count - 1 do
    ListColumnImageIndex(TListView(Sender).Columns[I], -1);
  ListColumnImageIndex(Column, Ord(TListView(Sender).Tag > 0));
  DoChange;
end;

procedure TFormMemoryAnalyzer.ListViewMemoryListCompare(Sender: TObject;
  Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
var
  I: Integer;
  A, B: string;
  vDataA, vDataB: Extended;
begin
  I := TListView(Sender).Tag;
  if I = 0 then Exit;
  if Abs(I) = 1 then begin
    A := Item1.Caption;
    B := Item2.Caption;
  end else begin
    if Abs(I) - 2 < Item1.SubItems.Count then
      A := Item1.SubItems[Abs(I) - 2]
    else A := '';
    if Abs(I) - 2 < Item2.SubItems.Count then
      B := Item2.SubItems[Abs(I) - 2]
    else B := '';
  end;
  if TryStrToFloat(A, vDataA) and TryStrToFloat(B, vDataB) then
    Compare := Trunc(I * vDataA - I * vDataB)
  else Compare := CompareText(A, B) * I;
end;

procedure TFormMemoryAnalyzer.ListViewMemoryListCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  if Item.SubItems[1] <> Item.SubItems[2] then
  begin
    Sender.Canvas.Font.Color := clRed;
    Sender.Canvas.Brush.Color := clMoneyGreen;
  end;
end;

procedure TFormMemoryAnalyzer.ListViewMemoryListSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  DoChange;
end;

procedure TFormMemoryAnalyzer.ListViewMemoryListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_EQUAL: ActionLengthInc.Execute;
    VK_MINUS: ActionLengthDec.Execute;
    VK_COMMA: ActionAddressInc.Execute;
    VK_PERIOD: ActionAddressDec.Execute;
    VK_A: if ssCtrl in Shift then ActionSelectAll.Execute;
    VK_C: if ssCtrl in Shift then ActionCopy.Execute;
    VK_S: if ssCtrl in Shift then ActionSave.Execute;
    VK_DELETE: if ssCtrl in Shift then ActionDelete.Execute;
  end;
end;

procedure TFormMemoryAnalyzer.TimerButtonTimer(Sender: TObject);
begin
  if FChanging then Exit;
  if not Assigned(FDownButton) then Exit;
  if GetTickCount - FDownTickCount < 1000 then Exit;
  FChanging := True;
  try
    TToolButton(FDownButton).Click;
  finally
    FChanging := False;
  end;
end;

procedure TFormMemoryAnalyzer.ActionNByteExecute(Sender: TObject);
begin
  TAction(Sender).Checked := True;
  if Pos('ActionAddress', TAction(Sender).Name) = 1 then
  begin
    PopupMenuAddress.Tag := TAction(Sender).Tag;
    ActionAddressCustom.Caption := '自定义';
  end else
  begin
    PopupMenuLength.Tag := TAction(Sender).Tag;
    ActionLengthCustom.Caption := '自定义';
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionAddressCustomExecute(Sender: TObject);
var
  S: string;
begin
  S := IntToStr(PopupMenuAddress.Tag);
  if not InputQuery('地址偏移', '', S) then Exit;
  PopupMenuAddress.Tag := Max(StrToIntDef(S, PopupMenuAddress.Tag), 1);
  case PopupMenuAddress.Tag of
    1: ActionAddress1Byte.Checked := True;
    16: ActionAddress16Byte.Checked := True;
    32: ActionAddress32Byte.Checked := True;
    256: ActionAddress256Byte.Checked := True;
    1024: ActionAddress1024Byte.Checked := True;
    4096: ActionAddress4096Byte.Checked := True;
  else
    begin
      ActionAddressCustom.Checked := True;
      ActionAddressCustom.Caption :=
        Format('自定义--%d字节', [PopupMenuAddress.Tag]);
    end;
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionLengthCustomExecute(Sender: TObject);
var
  S: string;
begin
  S := IntToStr(PopupMenuLength.Tag);
  if not InputQuery('长度偏移', '', S) then Exit;
  PopupMenuLength.Tag := Max(StrToIntDef(S, PopupMenuLength.Tag), 1);
  case PopupMenuLength.Tag of
    1: ActionLength1Byte.Checked := True;
    16: ActionLength16Byte.Checked := True;
    32: ActionLength32Byte.Checked := True;
  else
    begin
      ActionLengthCustom.Checked := True;
      ActionLengthCustom.Caption :=
        Format('自定义--%d字节', [PopupMenuLength.Tag]);
    end;
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionDeleteExecute(Sender: TObject);
var
  I: Integer;
  vItemInfo: PItemInfo;
begin
  ListViewMemoryList.Items.BeginUpdate;
  try
    for I := ListViewMemoryList.Items.Count - 1 downto 0 do
      if ListViewMemoryList.Items[I].Selected then
      begin
        vItemInfo := ListViewMemoryList.Items[I].Data;
        Dispose(vItemInfo);
        ListViewMemoryList.Items[I].Delete;
      end;
  finally
    ListViewMemoryList.Items.EndUpdate;
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionClearExecute(Sender: TObject);
var
  I: Integer;
  vItemInfo: PItemInfo;
begin
  for I := ListViewMemoryList.Items.Count - 1 downto 0 do
    begin
      vItemInfo := ListViewMemoryList.Items[I].Data;
      Dispose(vItemInfo);
    end;
  ListViewMemoryList.Items.Clear;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionEditExecute(Sender: TObject);
var
  I: Integer;
  vComboBoxSearch: TComboBox;
  vItemInfo: PItemInfo;
begin
  if MessageDlg('确定修改内存？', mtWarning, [mbYes, mbNo], 0) <> mrYes then Exit;
  vComboBoxSearch := nil;
  for I := 0 to PageControlSearch.ActivePage.ControlCount - 1 do
    if PageControlSearch.ActivePage.Controls[I] is TComboBox then
    begin
      vComboBoxSearch := TComboBox(PageControlSearch.ActivePage.Controls[I]);
      Break;
    end;
  if not Assigned(vComboBoxSearch) then Exit;
  ComboBoxChange(vComboBoxSearch);
  with vComboBoxSearch do if Text <> '' then
  begin
    I := Items.IndexOf(Text);
    if I < 0 then
      Items.Insert(0, Text)
    else Items.Move(I, 0);
    ItemIndex := 0;
  end else Exit;

  for I := ListViewMemoryList.Items.Count - 1 downto 0 do
    with ListViewMemoryList.Items[I] do
    begin
      vItemInfo := Data;
      if not Selected then Continue;
      if not Assigned(vItemInfo) then Break;
      Process_Write(StrToIntDef(Caption, 0), vItemInfo^.rAddress, FSearchText);
    end;
  ActionRefurbish.Execute;
end;

procedure TFormMemoryAnalyzer.ActionSaveExecute(Sender: TObject);
var
  S: string;
  L: Integer;
  vItemInfo: PItemInfo;
begin
  if ListViewMemoryList.SelCount <> 1 then Exit;
  S := IntToStr(PopupMenuLength.Tag);
  if not InputQuery('数据长度', '', S) then Exit;
  L := StrToIntDef(S, 0);
  if L <= 0 then Exit;
  with ListViewMemoryList.Selected do
  begin
    vItemInfo := Data;
    if not Assigned(vItemInfo) then Exit;
    S := Process_Read(StrToIntDef(Caption, 0), vItemInfo^.rAddress, L);
  end;
  if not SaveDialogOne.Execute then Exit;
  if FileExists(SaveDialogOne.FileName) and
    (MessageDlg(Format('文件"%s"已经存在，是否覆盖？',
    [SaveDialogOne.FileName]), mtWarning, [mbYes, mbNo], 0) <> mrYes) then Exit;
  StringToFile(S, SaveDialogOne.FileName);
end;

procedure TFormMemoryAnalyzer.ActionInsertExecute(Sender: TObject);
var
  S: string;
  I: Integer;
  L: Integer;
  vItemInfo: PItemInfo;
begin
  if Assigned(ListViewMemoryList.Selected) then
    S := ListViewMemoryList.Selected.SubItems[0]
  else S := '$00000000';
  if not InputQuery('输入首地址', '', S) then Exit;
  I := StrToIntDef(S, 0);
  if Assigned(ListViewMemoryList.Selected) then
  begin
    vItemInfo := ListViewMemoryList.Selected.Data;
    if Assigned(vItemInfo) then S := IntToStr(vItemInfo^.rSize);
  end else S := '1';
  if not InputQuery('输入长度', '', S) then Exit;
  L := StrToIntDef(S, 0);
  if L <= 0 then Exit;
  ListViewMemoryList.Selected := nil;
  ListViewMemoryList.ItemFocused := ListViewMemoryList.Items.Add;
  ListViewMemoryList.Selected := ListViewMemoryList.ItemFocused;
  with ListViewMemoryList.Selected do
  begin
    New(vItemInfo);
    vItemInfo^.rDisplayStyle := dsPascal;
    vItemInfo^.rAddress := I;
    vItemInfo^.rSize := L;
    Data := vItemInfo;

    Caption := IntToStr(FProcessID);
    SubItems.Add('$' + IntToHex(I, 8));
    SubItems.Add(StringToDisplay(Process_Read(FProcessID, I, L)));
    SubItems.Add(SubItems[SubItems.Count - 1]);
    ListViewMemoryList.ItemIndex := Index;
    MakeVisible(True)
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ComboBoxStartAddressChange(Sender: TObject);
begin
  FStartAddress := StrToIntDef(ComboBoxStartAddress.Text, 0);
  FEndAddress := StrToIntDef(ComboBoxEndAddress.Text, $0FFFFFFF);
  if FStartAddress > FEndAddress then
  begin
    ComboBoxStartAddress.Color := clRed;
    ComboBoxEndAddress.Color := clRed;
  end else
  begin
    ComboBoxStartAddress.Color := clWindow;
    ComboBoxEndAddress.Color := clWindow;
  end;
end;

procedure TFormMemoryAnalyzer.ActionCopyExecute(Sender: TObject);
var
  I: Integer;
  S: string;
begin
  S := '';
  for I := 0 to ListViewMemoryList.Items.Count - 1 do
    with ListViewMemoryList.Items[I] do
      if Selected then
      begin
        if ActionCopyAll.Checked then
          S := S + #13#10 + SubItems[0] + #9 + SubItems[1] + #9 + SubItems[2]
        else if ActionCopyNew.Checked then
          S := S + #13#10 + SubItems[1]
        else if ActionCopyOld.Checked then
          S := S + #13#10 + SubItems[2]
        else if ActionCopyAddress.Checked then
          S := S + #13#10 + SubItems[0]
      end;
  Delete(S, 1, 2);
  Clipboard.AsText := S;
end;

procedure TFormMemoryAnalyzer.ActionHexExecute(Sender: TObject);
var
  J: Integer;
  vItemInfo: PItemInfo;
begin
  ListViewMemoryList.Items.BeginUpdate;
  try
    for J := 0 to ListViewMemoryList.Items.Count - 1 do
      with ListViewMemoryList.Items[J] do
      begin
        if not Selected then Continue;
        if not Assigned(Data) then Break;
        vItemInfo := Data;
        if Sender = ActionAddressInc then
          vItemInfo^.rAddress :=
            Min($70000000, vItemInfo^.rAddress + PopupMenuAddress.Tag)
        else if Sender = ActionAddressDec then
          vItemInfo^.rAddress :=
            Max($00000000, vItemInfo^.rAddress - PopupMenuAddress.Tag)
        else if Sender = ActionLengthInc then
          vItemInfo^.rSize := Min($100, vItemInfo^.rSize + PopupMenuLength.Tag)
        else if Sender = ActionLengthDec then
          vItemInfo^.rSize := Max($000, vItemInfo^.rSize - PopupMenuLength.Tag)
        else if Sender = ActionHex then
          vItemInfo^.rDisplayStyle :=
            TDisplayStyle((Ord(vItemInfo^.rDisplayStyle) + 1) mod 2);
        SubItems[0] := Format('$%.8x', [vItemInfo^.rAddress]);
        case vItemInfo^.rDisplayStyle of
          dsPascal: SubItems[1] := StringToDisplay(
            Process_Read(StrToIntDef(Caption, 0), vItemInfo^.rAddress, vItemInfo^.rSize));
        else SubItems[1] := StrToHex(
          Process_Read(StrToIntDef(Caption, 0), vItemInfo^.rAddress, vItemInfo^.rSize));
        end;
        SubItems[2] := SubItems[1];
      end;
  finally
    ListViewMemoryList.Items.EndUpdate;
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionSelectAllExecute(Sender: TObject);
begin
  ListViewMemoryList.SelectAll;
end;

procedure TFormMemoryAnalyzer.ActionRemoveExecute(Sender: TObject);
var
  I, J: Integer;
  vItemInfo: PItemInfo;
begin
  J := -1;
  for I := 0 to ListViewMemoryList.Items.Count - 1 do
  begin
    if ListViewMemoryList.Items[I].Selected then
    begin
      vItemInfo := ListViewMemoryList.Items[I].Data;
      if not Assigned(vItemInfo) then Exit;
      if J >= 0 then
      begin
        J := Abs(J - vItemInfo^.rAddress);
        Break;
      end;
      J := vItemInfo^.rAddress;
    end;
  end;
  if J < 0 then Exit;
  with TFormMemo.Create(Self) do try
    Caption := TAction(Sender).Caption;
    MemoText.Text := Format('%d($%.8x)', [J, J]);
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMemoryAnalyzer.ActionHexEditorExecute(Sender: TObject);
var
  vAddress: Integer;
  vLength: Integer;
  vItemInfo: PItemInfo;
  vProcessID: Longword;
  I: Integer;
begin
  if ListViewMemoryList.SelCount <> 1 then Exit;

  with ListViewMemoryList.Selected do
  begin
    vItemInfo := ListViewMemoryList.Selected.Data;
    if Assigned(vItemInfo) then
    begin
      vAddress := vItemInfo^.rAddress;
      vLength := vItemInfo^.rSize;
    end else
    begin
      vAddress := 0;
      vLength := 0;
    end;
    vProcessID := StrToIntDef(Caption, 0);
  end;

  for I := 0 to Screen.FormCount - 1 do
    if Screen.Forms[I] is TFormHexEditor then
      if (TFormHexEditor(Screen.Forms[I]).Address = vAddress) and
        (TFormHexEditor(Screen.Forms[I]).ProcessID = vProcessID) then
      begin
        TFormHexEditor(Screen.Forms[I]).Show;
        Exit;
      end;

  with TFormHexEditor.Create(Self) do
  begin
    AutoFree := True;
    Caption := Format('%d:($%.8x)', [vProcessID, vAddress]);
    ProcessID := vProcessID;
    Address := vAddress;
    ActionRefurbish := Self.ActionRefurbish;
    Show;
    GotoAddress(vAddress, vLength);
  end;
end;

procedure TFormMemoryAnalyzer.ActionAsmDisplayExecute(Sender: TObject);
var
  vAddress: Integer;
  vItemInfo: PItemInfo;
  vProcessID: Integer;
  I: Integer;
begin
  if ListViewMemoryList.SelCount <> 1 then Exit;

  with ListViewMemoryList.Selected do
  begin
    vItemInfo := ListViewMemoryList.Selected.Data;
    if Assigned(vItemInfo) then
      vAddress := vItemInfo^.rAddress
    else vAddress := 0;
    vProcessID := StrToIntDef(Caption, 0);
  end;

  for I := 0 to Screen.FormCount - 1 do
    if Screen.Forms[I] is TFormDasmBrower then
      if (TFormDasmBrower(Screen.Forms[I]).Address = vAddress) and
        (TFormDasmBrower(Screen.Forms[I]).ProcessId = Longword(vProcessId)) then
      begin
        TFormDasmBrower(Screen.Forms[I]).Show;
        Exit;
      end;

  with TFormDasmBrower.Create(Self) do
  begin
    OnClickAddr := FormDasmBrowerClickAddr;
    AutoFree := True;
    Caption := Format('%d:($%.8x)', [vProcessID, vAddress]);
    ProcessID := vProcessID;
    Address := vAddress;
    GotoAddress(vAddress);
    Show;
  end;
end;

procedure TFormMemoryAnalyzer.ActionSelectWindowExecute(Sender: TObject);
begin
  with TWindowDialog.Create(nil) do try
    Hide;
    if not Execute then Exit;
    GetWindowThreadProcessId(Selected, FProcessId);
    ComboBoxSelect.Text := Format('%d=%s', [FProcessId, ProcessFileName(FProcessId)]);
    ComboBoxSelectChange(ComboBoxSelect);
    ForceForegroundWindow(Self.Handle);                                         //2006-11-17 ZswangY37 No.1
  finally
    ForceForegroundWindow(Self.Handle);
    Show;
    Free;
  end;
end;

procedure TFormMemoryAnalyzer.ActionSelectProcessExecute(Sender: TObject);
begin
  with TFormProcessList.Create(nil) do try
    Caption := '选择进程';
    if ShowModal <> mrOK then Exit;
    FProcessId := Selected;
    ComboBoxSelect.Text := Format('%d=%s', [FProcessId, ProcessFileName(FProcessId)]);
    ComboBoxSelectChange(ComboBoxSelect);
  finally
    Free;
  end;
end;

procedure TFormMemoryAnalyzer.ActionSelectNotExecute(Sender: TObject);
var
  I: Integer;
begin
  with ListViewMemoryList.Items do try
    BeginUpdate;
    for I := 0 to Count - 1 do
      Item[I].Selected := not Item[I].Selected;
  finally
    EndUpdate;
  end;
end;

procedure TFormMemoryAnalyzer.ActionSelectChangedExecute(Sender: TObject);
var
  I: Integer;
begin
  with ListViewMemoryList.Items do try
    BeginUpdate;
    for I := 0 to Count - 1 do
      Item[I].Selected := Item[I].SubItems[1] <> Item[I].SubItems[2];
  finally
    EndUpdate;
  end;
end;

procedure TFormMemoryAnalyzer.ActionAboutExecute(Sender: TObject);
begin
  ShowMessage(Format(
'程序名称:%s'#13#10 +
'程序版本:%s'#13#10 +
'文件版本:%s'#13#10 +
'%s'#13#10 +
'设计:ZswangY37' +
'', [
    vModuleVersionInfomation.rProductName,
    vModuleVersionInfomation.rProductVersion,
    vModuleVersionInfomation.rFileVersion,
    vModuleVersionInfomation.rLegalCopyright
  ]));
end;

procedure TFormMemoryAnalyzer.ActionRefurbishExecute(Sender: TObject);
var
  J: Integer;
  vItemInfo: PItemInfo;
begin
  ListViewMemoryList.Items.BeginUpdate;
  try
    for J := 0 to ListViewMemoryList.Items.Count - 1 do
      with ListViewMemoryList.Items[J] do
      begin
        vItemInfo := Data;
        if not Selected then Continue;
        if not Assigned(vItemInfo) then Break;
        SubItems[2] := SubItems[1];
        case vItemInfo^.rDisplayStyle of
          dsPascal: SubItems[1] := StringToDisplay(
            Process_Read(StrToIntDef(Caption, 0), vItemInfo^.rAddress, vItemInfo^.rSize));
        else SubItems[1] := StrToHex(
          Process_Read(StrToIntDef(Caption, 0), vItemInfo^.rAddress, vItemInfo^.rSize));
        end;
      end;
  finally
    ListViewMemoryList.Items.EndUpdate;
  end;
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionCopyAllExecute(Sender: TObject);
begin
  TAction(Sender).Checked := True;
  PopupMenuCopy.Tag := TAction(Sender).Tag;
end;

procedure TFormMemoryAnalyzer.ListViewMemoryListDblClick(Sender: TObject);
begin
  if ActionDoubleGet.Checked then
    ActionGetNewValue.Execute
  else if ActionDoubleHex.Checked then
    ActionHexEditor.Execute
  else if ActionDoubleDisplay.Checked then
    ActionHex.Execute;
end;

procedure TFormMemoryAnalyzer.ActionCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormMemoryAnalyzer.ActionFileAnalyzerExecute(Sender: TObject);
var
  vProcessFileName: string;
  vSearchText: string;
  vItemInfo: PItemInfo;
begin
  if Assigned(ListViewMemoryList.Selected) then
  begin
    with ListViewMemoryList.Selected do
    begin
      vProcessFileName := ProcessFileName(StrToIntDef(Caption, 0));
      vItemInfo := Data;
      case vItemInfo^.rDisplayStyle of
        dsPascal: vSearchText := DisplayToString(SubItems[1]);
      else vSearchText := HexToStr(SubItems[1]);
      end;
    end;
  end else
  begin
    vProcessFileName := ProcessFileName(FProcessID);
    vSearchText := FSearchText;
  end;
  if vProcessFileName <> '' then
    vProcessFileName := '"' + vProcessFileName + '" ' + StrToHex(vSearchText);
  ShellExecute(Handle, nil, PChar(FFileAnalyzer), PChar(vProcessFileName), nil, SW_SHOW);
end;

procedure TFormMemoryAnalyzer.ActionOpenDirExecute(Sender: TObject);
var
  vProcessFileName: string;
begin
  if ListViewMemoryList.SelCount = 1 then
    vProcessFileName :=
      ProcessFileName(StrToIntDef(ListViewMemoryList.Selected.Caption, 0))
  else vProcessFileName := ProcessFileName(FProcessID);
  if not FileExists(vProcessFileName) then Exit;
  WinExec(PChar(Format('explorer "%s",/n,/select', [vProcessFileName])), SW_SHOW);
end;

procedure TFormMemoryAnalyzer.SpeedButtonIntegerHexClick(Sender: TObject);
begin
  if Pos('$', ComboBoxInteger.Text) + Pos('0x', ComboBoxInteger.Text) > 0 then
    ComboBoxInteger.Text := IntToStr(StrToIntDef(ComboBoxInteger.Text, 0))
  else ComboBoxInteger.Text := Format('$%.8x', [StrToIntDef(ComboBoxInteger.Text, 0)]);
end;

procedure TFormMemoryAnalyzer.FormDasmBrowerClickAddr(Sender: TObject;
  mAddress: Integer; mLength: Integer);
var
  vItemInfo: PItemInfo;
begin
  ListViewMemoryList.Selected := nil;
  ListViewMemoryList.ItemFocused := ListViewMemoryList.Items.Add;
  ListViewMemoryList.Selected := ListViewMemoryList.ItemFocused;
  with ListViewMemoryList.Selected do
  begin
    New(vItemInfo);
    vItemInfo^.rDisplayStyle := dsHex;
    vItemInfo^.rAddress := mAddress;
    vItemInfo^.rSize := mLength;
    Data := vItemInfo;

    Caption := IntToStr(TFormDasmBrower(Sender).ProcessId);
    SubItems.Add('$' + IntToHex(mAddress, 8));
    SubItems.Add(StrToHex(Process_Read(TFormDasmBrower(Sender).ProcessId, mAddress, mLength)));
    SubItems.Add(SubItems[SubItems.Count - 1]);
    ListViewMemoryList.ItemIndex := Index;
    MakeVisible(True);
  end;
  ActionGetNewValue.Execute;
  ForceForegroundWindow(Handle);
  DoChange;
end;

procedure TFormMemoryAnalyzer.ActionDoubleGetExecute(Sender: TObject);
begin
  TAction(Sender).Checked := True;
  PopupMenuList.Tag := TAction(Sender).Tag;
end;

procedure TFormMemoryAnalyzer.ActionGetNewValueExecute(Sender: TObject);
var
  vItemInfo: PItemInfo;
begin
  if not Assigned(ListViewMemoryList.Selected) then Exit;
  with ListViewMemoryList.Selected do
  begin
    if SubItems.Count <= 1 then Exit;
    vItemInfo := Data;
    case vItemInfo^.rDisplayStyle of
      dsPascal: FSearchText := DisplayToString(SubItems[2]);
    else FSearchText := HexToStr(SubItems[2]);
    end;
  end;
  PageControlSearchChange(PageControlSearch);
end;

procedure TFormMemoryAnalyzer.ActionBlogExecute(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar(TAction(Sender).Hint), nil, nil, SW_SHOW);
end;

procedure TFormMemoryAnalyzer.ActionHelpExecute(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TFormMemoryAnalyzer.TabSheetIntegerResize(Sender: TObject);
begin
  SpeedButtonBin.Left := SpeedButtonBin.Parent.Width - SpeedButtonBin.Width - 1;
end;

procedure TFormMemoryAnalyzer.SpeedButtonBinClick(Sender: TObject);
begin
  with TFormInputBinary.Create(nil) do try
    Font.Assign(Self.Font);
    Caption := '二进制输入';
    Number := StrToIntDef(ComboBoxInteger.Text, 0);
    case ShowModal of
      mrOK, mrYes: ;
    else Exit;
    end;
    ComboBoxInteger.Text := IntToStr(Number);
  finally
    Free;
  end;
end;

procedure TFormMemoryAnalyzer.ActionLiveUpdateExecute(Sender: TObject);
begin
  WinExec(PChar(Format('"%s/LiveUpdate/LiveUpdateApp.exe" cmd=close&handle=%d&success=%s',
     [ExePath, Handle, StringToURL(ParamStr(0))])), SW_SHOWNORMAL);
end;

end.
