object FormMemoryAnalyzer: TFormMemoryAnalyzer
  Left = 193
  Top = 115
  Width = 525
  Height = 350
  Caption = 'FormMemoryAnalyzer'
  Color = clBtnFace
  Constraints.MinHeight = 350
  Constraints.MinWidth = 525
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenuOne
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBarSelect: TToolBar
    Left = 0
    Top = 0
    Width = 517
    Height = 31
    ButtonHeight = 23
    Caption = 'ToolBarMemoryList'
    EdgeBorders = [ebTop, ebBottom]
    Images = ImageListTools
    TabOrder = 3
    OnResize = ToolBarSelectResize
    object ImageDrag: TImage
      Left = 0
      Top = 2
      Width = 31
      Height = 23
      Hint = #36890#36807#25176#25341#36873#25321#31383#20307#36827#31243
      OnMouseDown = ImageDragMouseDown
      OnMouseMove = ImageDragMouseMove
      OnMouseUp = ImageDragMouseUp
    end
    object ToolButtonSelectWindow: TToolButton
      Left = 31
      Top = 2
      Action = ActionSelectWindow
    end
    object ToolButtonSelectProcess: TToolButton
      Left = 54
      Top = 2
      Action = ActionSelectProcess
    end
    object ToolButtonSeparatorSelect: TToolButton
      Left = 77
      Top = 2
      Width = 8
      Caption = 'ToolButtonSeparatorSelect'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object ComboBoxSelect: TComboBox
      Left = 85
      Top = 3
      Width = 100
      Height = 21
      Hint = #38656#35201#20998#26512#30340#36827#31243'ID'
      AutoComplete = False
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnChange = ComboBoxSelectChange
      OnKeyDown = ComboBoxKeyDown
    end
  end
  object GroupBoxSearch: TGroupBox
    Left = 0
    Top = 31
    Width = 517
    Height = 67
    Align = alTop
    Caption = #25628#32034#26465#20214
    TabOrder = 0
    object PageControlSearch: TPageControl
      Left = 2
      Top = 15
      Width = 513
      Height = 50
      ActivePage = TabSheetGeneral
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      OnChange = PageControlSearchChange
      object TabSheetGeneral: TTabSheet
        Caption = #26222#36890
        DesignSize = (
          505
          22)
        object ComboBoxGeneral: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetMark: TTabSheet
        Caption = #29305#24449#30721
        ImageIndex = 10
        DesignSize = (
          505
          22)
        object ComboBoxMark: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetPascal: TTabSheet
        Caption = 'Pascal'
        ImageIndex = 3
        DesignSize = (
          505
          22)
        object ComboBoxPascal: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetC: TTabSheet
        Caption = 'C'
        ImageIndex = 12
        DesignSize = (
          505
          22)
        object ComboBoxC: TComboBox
          Left = -1
          Top = 0
          Width = 506
          Height = 21
          Hint = 'GUID'
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetHex: TTabSheet
        Caption = #21313#20845#36827#21046
        ImageIndex = 1
        DesignSize = (
          505
          22)
        object ComboBoxHex: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetInteger: TTabSheet
        Caption = 'Integer'
        ImageIndex = 4
        OnResize = TabSheetIntegerResize
        DesignSize = (
          505
          22)
        object SpeedButtonIntegerHex: TSpeedButton
          Left = 0
          Top = 0
          Width = 23
          Height = 22
          Caption = 'Hex'
          OnClick = SpeedButtonIntegerHexClick
        end
        object SpeedButtonBin: TSpeedButton
          Left = 480
          Top = 0
          Width = 23
          Height = 22
          Caption = 'Bin'
          OnClick = SpeedButtonBinClick
        end
        object ComboBoxInteger: TComboBox
          Left = 24
          Top = 0
          Width = 456
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetBin: TTabSheet
        Caption = #20108#36827#21046
        ImageIndex = 10
        DesignSize = (
          505
          22)
        object ComboBoxBin: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetSmallint: TTabSheet
        Caption = 'Smallint'
        ImageIndex = 11
        DesignSize = (
          505
          22)
        object ComboBoxSmallint: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetInt64: TTabSheet
        Caption = 'Int64'
        ImageIndex = 6
        DesignSize = (
          505
          22)
        object ComboBoxInt64: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetSingle: TTabSheet
        Caption = 'Single'
        ImageIndex = 5
        DesignSize = (
          505
          22)
        object ComboBoxSingle: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetDouble: TTabSheet
        Caption = 'Double'
        ImageIndex = 7
        DesignSize = (
          505
          22)
        object ComboBoxDouble: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetGUID: TTabSheet
        Caption = 'GUID'
        ImageIndex = 8
        DesignSize = (
          505
          22)
        object ComboBoxGUID: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          Hint = 'GUID'
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
      object TabSheetBase64: TTabSheet
        Caption = 'Base64'
        ImageIndex = 2
        DesignSize = (
          505
          22)
        object ComboBoxBase64: TComboBox
          Left = 0
          Top = 0
          Width = 506
          Height = 21
          AutoComplete = False
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxChange
          OnKeyDown = ComboBoxKeyDown
        end
      end
    end
  end
  object GroupBoxRange: TGroupBox
    Left = 0
    Top = 98
    Width = 517
    Height = 41
    Align = alTop
    Caption = #25628#32034#33539#22260
    TabOrder = 1
    DesignSize = (
      517
      41)
    object LabelRange: TLabel
      Left = 92
      Top = 17
      Width = 18
      Height = 13
      Caption = '-->>'
    end
    object ComboBoxStartAddress: TComboBox
      Left = 3
      Top = 14
      Width = 87
      Height = 21
      Hint = #25628#32034#30340#24320#22987#20301#32622
      AutoComplete = False
      ItemHeight = 13
      TabOrder = 0
      Text = '$00000000'
      OnChange = ComboBoxStartAddressChange
      OnKeyDown = ComboBoxKeyDown
    end
    object ComboBoxEndAddress: TComboBox
      Left = 120
      Top = 14
      Width = 87
      Height = 21
      Hint = #25628#32034#30340#32467#26463#20301#32622
      AutoComplete = False
      ItemHeight = 13
      TabOrder = 1
      Text = '$0FFFFFFF'
      OnChange = ComboBoxStartAddressChange
      OnKeyDown = ComboBoxKeyDown
    end
    object CheckBoxIgnoreCase: TCheckBox
      Left = 418
      Top = 16
      Width = 91
      Height = 19
      Hint = #26159#21542#24573#30053#22823#23567#20889
      Anchors = [akTop, akRight]
      Caption = #24573#30053#22823#23567#20889
      TabOrder = 3
    end
    object ComboBoxCode: TComboBox
      Left = 219
      Top = 13
      Width = 125
      Height = 21
      Hint = #26222#36890#23383#31526#32534#30721#26041#24335
      AutoComplete = False
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Ansi'
      OnSelect = ComboBoxCodeSelect
      Items.Strings = (
        'Ansi'
        'Unicode'
        'Utf8')
    end
  end
  object GroupBoxMemoryList: TGroupBox
    Left = 0
    Top = 139
    Width = 517
    Height = 138
    Align = alClient
    Caption = #20869#23384#25968#25454
    TabOrder = 2
    object ListViewMemoryList: TListView
      Left = 2
      Top = 44
      Width = 513
      Height = 92
      Align = alClient
      Columns = <
        item
          Caption = #36827#31243'ID'
          Width = 80
        end
        item
          Caption = #22320#22336
          Width = 80
        end
        item
          Caption = #26368#26032#20540
          Width = 140
        end
        item
          Caption = #21382#21490#20540
          Width = 140
        end>
      HideSelection = False
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      PopupMenu = PopupMenuList
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = ListViewMemoryListChange
      OnColumnClick = ListViewMemoryListColumnClick
      OnCompare = ListViewMemoryListCompare
      OnCustomDrawItem = ListViewMemoryListCustomDrawItem
      OnDblClick = ListViewMemoryListDblClick
      OnKeyDown = ListViewMemoryListKeyDown
      OnSelectItem = ListViewMemoryListSelectItem
    end
    object ToolBarMemoryList: TToolBar
      Left = 2
      Top = 15
      Width = 513
      Height = 29
      ButtonWidth = 24
      Caption = 'ToolBarMemoryList'
      EdgeBorders = [ebTop, ebBottom]
      Images = ImageListTools
      TabOrder = 1
      object ToolButtonAddressInc: TToolButton
        Left = 0
        Top = 2
        Action = ActionAddressInc
        OnMouseDown = ToolButtonMouseDown
        OnMouseUp = ToolButtonMouseUp
      end
      object ToolButtonAddressDec: TToolButton
        Left = 24
        Top = 2
        Action = ActionAddressDec
        DropdownMenu = PopupMenuAddress
        Style = tbsDropDown
        OnMouseDown = ToolButtonMouseDown
        OnMouseUp = ToolButtonMouseUp
      end
      object ToolButtonSeparatorAddress: TToolButton
        Left = 61
        Top = 2
        Width = 8
        Caption = 'ToolButtonSeparatorAddress'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButtonLengthInc: TToolButton
        Left = 69
        Top = 2
        Action = ActionLengthInc
        OnMouseDown = ToolButtonMouseDown
        OnMouseUp = ToolButtonMouseUp
      end
      object ToolButtonLengthDec: TToolButton
        Left = 93
        Top = 2
        Action = ActionLengthDec
        DropdownMenu = PopupMenuLength
        Style = tbsDropDown
        OnMouseDown = ToolButtonMouseDown
        OnMouseUp = ToolButtonMouseUp
      end
      object ToolButtonRemove: TToolButton
        Left = 130
        Top = 2
        Action = ActionRemove
      end
      object ToolButtonSeparatorLength: TToolButton
        Left = 154
        Top = 2
        Width = 8
        Caption = 'ToolButtonSeparatorLength'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButtonDelete: TToolButton
        Left = 162
        Top = 2
        Action = ActionDelete
      end
      object ToolButtonHex: TToolButton
        Left = 186
        Top = 2
        Action = ActionHex
      end
      object ToolButtonCopy: TToolButton
        Left = 210
        Top = 2
        Action = ActionCopy
        DropdownMenu = PopupMenuCopy
        Style = tbsDropDown
      end
      object ToolButtonSave: TToolButton
        Left = 247
        Top = 2
        Action = ActionSave
      end
      object ToolButtonInsert: TToolButton
        Left = 271
        Top = 2
        Action = ActionInsert
      end
      object ToolButtonSeparatorEdit: TToolButton
        Left = 295
        Top = 2
        Width = 8
        Caption = 'ToolButtonSeparatorEdit'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButtonRefurbish: TToolButton
        Left = 303
        Top = 2
        Action = ActionRefurbish
      end
      object ToolButtonEdit: TToolButton
        Left = 327
        Top = 2
        Action = ActionEdit
      end
      object ToolButtonEditor: TToolButton
        Left = 351
        Top = 2
        Width = 8
        ImageIndex = 20
        Style = tbsSeparator
      end
      object ToolButtonHexEditor: TToolButton
        Left = 359
        Top = 2
        Action = ActionHexEditor
      end
      object ToolButtonAsmDisplay: TToolButton
        Left = 383
        Top = 2
        Action = ActionAsmDisplay
      end
      object ToolButtonFileAnalyzer: TToolButton
        Left = 407
        Top = 2
        Action = ActionFileAnalyzer
      end
      object ToolButtonOpenDir: TToolButton
        Left = 431
        Top = 2
        Action = ActionOpenDir
      end
      object ToolButtonSeparatorSearch: TToolButton
        Left = 455
        Top = 2
        Width = 7
        Caption = 'ToolButtonSeparatorSearch'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButtonClear: TToolButton
        Left = 462
        Top = 2
        Action = ActionClear
      end
      object ToolButtonSearch: TToolButton
        Left = 486
        Top = 2
        Action = ActionSearch
      end
    end
  end
  object StatusBarOne: TStatusBar
    Left = 0
    Top = 277
    Width = 517
    Height = 19
    Panels = <
      item
        Width = 80
      end
      item
        Width = 100
      end>
    SimplePanel = False
    OnResize = StatusBarOneResize
    DesignSize = (
      517
      19)
    object LabelHttp: TLabel
      Left = 117
      Top = 4
      Width = 162
      Height = 12
      Cursor = crHandPoint
      Anchors = []
      Caption = 'http://blog.csdn.net/zswang'
      Transparent = True
      OnClick = LabelHttpClick
    end
  end
  object TimerButton: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerButtonTimer
    Left = 16
    Top = 216
  end
  object MainMenuOne: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Images = ImageListTools
    Left = 48
    Top = 216
    object MenuItemFile: TMenuItem
      Caption = #25991#20214'(&F)'
      object MenuItemSelectProcess: TMenuItem
        Action = ActionSelectProcess
      end
      object MenuItemSelectWindow: TMenuItem
        Action = ActionSelectWindow
      end
      object MenuItem: TMenuItem
        Action = ActionFileAnalyzer
      end
      object MenuItemOpenDir: TMenuItem
        Action = ActionOpenDir
      end
      object MenuItemClose: TMenuItem
        Action = ActionClose
      end
    end
    object MenuItemSearch: TMenuItem
      Caption = #25628#32034'(&S)'
      object MenuItemSearchA: TMenuItem
        Action = ActionSearch
      end
      object MenuItemInsert: TMenuItem
        Action = ActionInsert
      end
      object MenuItemAsmDisplay: TMenuItem
        Action = ActionAsmDisplay
      end
      object MenuItemHexEditor: TMenuItem
        Action = ActionHexEditor
      end
      object MenuItemRemove: TMenuItem
        Action = ActionRemove
      end
    end
    object MenuItemSelect: TMenuItem
      Caption = #36873#25321'(&E)'
      object MenuItemSelectAll: TMenuItem
        Action = ActionSelectAll
      end
      object MenuItemSelectNotA: TMenuItem
        Action = ActionSelectNot
      end
      object MenuItemSelectChangedA: TMenuItem
        Action = ActionSelectChanged
      end
      object MenuItemAddressInc: TMenuItem
        Action = ActionAddressInc
      end
      object MenuItemAddressDec: TMenuItem
        Action = ActionAddressDec
      end
      object MenuItemLengthDec: TMenuItem
        Action = ActionLengthDec
      end
      object MenuItemLengthInc: TMenuItem
        Action = ActionLengthInc
      end
      object MenuItemCopyA: TMenuItem
        Action = ActionCopy
      end
      object MenuItemDelete: TMenuItem
        Action = ActionDelete
      end
      object MenuItemEdit: TMenuItem
        Action = ActionEdit
      end
      object MenuItemHex: TMenuItem
        Action = ActionHex
      end
      object MenuItemRefurbish: TMenuItem
        Action = ActionRefurbish
      end
      object MenuItemSave: TMenuItem
        Action = ActionSave
      end
    end
    object MenuItemOption: TMenuItem
      Caption = #36873#39033'(&O)'
      object MenuItemAddress: TMenuItem
        Caption = #22320#22336#20559#31227'(&A)'
        object MenuItemAddress1ByteA: TMenuItem
          Action = ActionAddress1Byte
        end
        object MenuItemAddress16ByteA: TMenuItem
          Action = ActionAddress16Byte
        end
        object MenuItemAddress256ByteA: TMenuItem
          Action = ActionAddress256Byte
        end
        object MenuItemAddress1024ByteA: TMenuItem
          Action = ActionAddress1024Byte
        end
        object MenuItemAddress4096ByteA: TMenuItem
          Action = ActionAddress4096Byte
        end
        object MenuItemAddressCustomA: TMenuItem
          Action = ActionAddressCustom
        end
      end
      object MenuItemLength: TMenuItem
        Caption = #38271#24230#20559#31227'(&L)'
        object MenuItemLength1ByteA: TMenuItem
          Action = ActionLength1Byte
        end
        object MenuItemLength16ByteA: TMenuItem
          Action = ActionLength16Byte
        end
        object MenuItemLength32ByteA: TMenuItem
          Action = ActionLength32Byte
        end
        object MenuItemLengthCustomA: TMenuItem
          Action = ActionLengthCustom
        end
      end
      object MenuItemCopy: TMenuItem
        Caption = #22797#21046#26041#24335'(&C)'
        object MenuItemCopyAllA: TMenuItem
          Action = ActionCopyAll
        end
        object MenuItemCopyNewA: TMenuItem
          Action = ActionCopyNew
        end
        object MenuItemCopyOldA: TMenuItem
          Action = ActionCopyOld
        end
        object MenuItemCopyAddressA: TMenuItem
          Action = ActionCopyAddress
        end
      end
      object MenuItemDoubleClickA: TMenuItem
        Caption = #21452#20987#21151#33021'(&D)'
        object MenuItemDoubleGetA: TMenuItem
          Action = ActionDoubleGet
        end
        object MenuItemDoubleHexA: TMenuItem
          Action = ActionDoubleHex
        end
        object MenuItemDoubleDisplayA: TMenuItem
          Action = ActionDoubleDisplay
        end
      end
    end
    object MenuItemHelp: TMenuItem
      Caption = #24110#21161'(&H)'
      object MenuItemLiveUpdate: TMenuItem
        Action = ActionLiveUpdate
      end
      object MenuItemHelpA: TMenuItem
        Action = ActionHelp
      end
      object MenuItemBlog: TMenuItem
        Action = ActionBlog
      end
      object MenuItemAbout: TMenuItem
        Action = ActionAbout
      end
    end
  end
  object ActionListTools: TActionList
    Images = ImageListTools
    Left = 78
    Top = 216
    object ActionAddressInc: TAction
      Caption = #24038#31227#22320#22336'(&L)'#9'<'
      Hint = #24038#31227#22320#22336
      ImageIndex = 0
      OnExecute = ActionOffsetExecute
    end
    object ActionAddressDec: TAction
      Caption = #21491#31227#22320#22336'(&R)'#9'>'
      Hint = #21491#31227#22320#22336
      ImageIndex = 1
      OnExecute = ActionOffsetExecute
    end
    object ActionLengthInc: TAction
      Caption = #22686#21152#38271#24230'(&A)'#9'+'
      Hint = #22686#21152#38271#24230
      ImageIndex = 2
      OnExecute = ActionOffsetExecute
    end
    object ActionLengthDec: TAction
      Caption = #20943#23569#38271#24230'(&S)'#9'-'
      Hint = #20943#23569#38271#24230
      ImageIndex = 3
      OnExecute = ActionOffsetExecute
    end
    object ActionSearch: TAction
      Caption = #25628#32034'(&S)'
      Hint = #25628#32034
      ImageIndex = 4
      ShortCut = 114
      OnExecute = ActionSearchExecute
    end
    object ActionAddress1Byte: TAction
      Tag = 1
      Caption = '1'#23383#33410'(&1)'
      Checked = True
      GroupIndex = 1
      Hint = '1'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionAddress16Byte: TAction
      Tag = 16
      Caption = '16'#23383#33410'(&2)'
      GroupIndex = 1
      Hint = '16'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionAddress32Byte: TAction
      Tag = 32
      Caption = '32'#23383#33410'(&3)'
      GroupIndex = 1
      Hint = '32'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionAddress256Byte: TAction
      Tag = 256
      Caption = '256'#23383#33410'(&4)'
      GroupIndex = 1
      Hint = '256'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionAddress1024Byte: TAction
      Tag = 1024
      Caption = '1024'#23383#33410'(&5)'
      GroupIndex = 1
      Hint = '1024'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionAddress4096Byte: TAction
      Tag = 4096
      Caption = '4096'#23383#33410'(&6)'
      GroupIndex = 1
      Hint = '4096'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionAddressCustom: TAction
      Caption = #33258#23450#20041'(&0)'
      GroupIndex = 1
      Hint = #33258#23450#20041
      OnExecute = ActionAddressCustomExecute
    end
    object ActionLength1Byte: TAction
      Tag = 1
      Caption = '1'#23383#33410'(&1)'
      Checked = True
      GroupIndex = 2
      Hint = '1'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionLength16Byte: TAction
      Tag = 16
      Caption = '16'#23383#33410'(&2)'
      GroupIndex = 2
      Hint = '16'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionLength32Byte: TAction
      Tag = 32
      Caption = '32'#23383#33410'(&3)'
      GroupIndex = 2
      Hint = '32'#23383#33410
      OnExecute = ActionNByteExecute
    end
    object ActionLengthCustom: TAction
      Caption = #33258#23450#20041'(&0)'
      GroupIndex = 2
      Hint = #33258#23450#20041
      OnExecute = ActionLengthCustomExecute
    end
    object ActionDelete: TAction
      Caption = #21024#38500'(&D)'
      Hint = #21024#38500#36873#25321#39033
      ImageIndex = 8
      OnExecute = ActionDeleteExecute
    end
    object ActionClear: TAction
      Caption = #28165#38500'(&C)'
      Hint = #28165#38500
      ImageIndex = 9
      OnExecute = ActionClearExecute
    end
    object ActionEdit: TAction
      Caption = #32534#36753'(&E)'
      Hint = #32534#36753
      ImageIndex = 13
      OnExecute = ActionEditExecute
    end
    object ActionSave: TAction
      Caption = #20445#23384'(&S)'
      Hint = #25968#25454#22359#23384#20026#25991#20214
      ImageIndex = 11
      OnExecute = ActionSaveExecute
    end
    object ActionCopy: TAction
      Caption = #22797#21046'(&C)'
      Hint = #22797#21046
      ImageIndex = 10
      OnExecute = ActionCopyExecute
    end
    object ActionHex: TAction
      Caption = #20999#25442#26174#31034#26041#24335'(&H)'
      Hint = #20999#25442#26174#31034#26041#24335
      ImageIndex = 12
      OnExecute = ActionHexExecute
    end
    object ActionRefurbish: TAction
      Caption = #21047#26032'(&R)'
      Hint = #21047#26032
      ImageIndex = 14
      ShortCut = 116
      OnExecute = ActionRefurbishExecute
    end
    object ActionSelectAll: TAction
      Caption = #20840#36873'(&O)'
      Hint = #20840#36873
      OnExecute = ActionSelectAllExecute
    end
    object ActionInsert: TAction
      Caption = #25554#20837'(&I)'
      Hint = #25554#20837#22320#22336#39033
      ImageIndex = 15
      ShortCut = 45
      OnExecute = ActionInsertExecute
    end
    object ActionRemove: TAction
      Caption = #20559#31227'(&M)'
      Hint = #35745#31639#20004#20010#22320#22336#38388#20559#31227
      ImageIndex = 17
      OnExecute = ActionRemoveExecute
    end
    object ActionHexEditor: TAction
      Caption = #21313#20845#36827#21046#32534#36753'(&H)'
      Hint = #21313#20845#36827#21046#32534#36753
      ImageIndex = 18
      OnExecute = ActionHexEditorExecute
    end
    object ActionAsmDisplay: TAction
      Caption = #27719#32534#23519#30475'(&A)'
      Hint = #27719#32534#23519#30475
      ImageIndex = 19
      OnExecute = ActionAsmDisplayExecute
    end
    object ActionCopyAll: TAction
      Tag = 1
      Caption = #22797#21046#25972#39033'(&O)'
      Checked = True
      GroupIndex = 3
      Hint = #22797#21046#25972#39033
      OnExecute = ActionCopyAllExecute
    end
    object ActionCopyNew: TAction
      Tag = 2
      Caption = #22797#21046#26368#26032#20540'(&N)'
      GroupIndex = 3
      Hint = #22797#21046#26368#26032#20540
      OnExecute = ActionCopyAllExecute
    end
    object ActionCopyOld: TAction
      Tag = 3
      Caption = #22797#21046#21382#21490#20540'(&O)'
      GroupIndex = 3
      Hint = #22797#21046#21382#21490#20540
      OnExecute = ActionCopyAllExecute
    end
    object ActionCopyAddress: TAction
      Tag = 4
      Caption = #22797#21046#22320#22336'(&A)'
      GroupIndex = 3
      Hint = #22797#21046#22320#22336
      OnExecute = ActionCopyAllExecute
    end
    object ActionSelectWindow: TAction
      Caption = #36873#25321#31383#20307#36827#31243'(&W)'
      Hint = #36890#36807#31383#20307#36873#25321#36827#31243
      ImageIndex = 6
      ShortCut = 16471
      OnExecute = ActionSelectWindowExecute
    end
    object ActionSelectProcess: TAction
      Caption = #36873#25321#36827#31243'(&P)'
      Hint = #36890#36807#21015#34920#36873#25321#36827#31243
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = ActionSelectProcessExecute
    end
    object ActionSelectNot: TAction
      Caption = #21453#36873'(&N)'
      Hint = #21453#21521#36873#25321
      OnExecute = ActionSelectNotExecute
    end
    object ActionSelectChanged: TAction
      Caption = #36873#25321#25913#21464#39033'(&G)'
      Hint = #36873#25321#25913#21464#39033
      OnExecute = ActionSelectChangedExecute
    end
    object ActionAbout: TAction
      Caption = #20851#20110'(&A)'
      Hint = #20851#20110#26412#36719#20214
      OnExecute = ActionAboutExecute
    end
    object ActionFileAnalyzer: TAction
      Caption = #25991#20214#20998#26512#22120'(&F)'
      Hint = #25171#24320#25991#20214#20998#26512#22120
      ImageIndex = 20
      OnExecute = ActionFileAnalyzerExecute
    end
    object ActionClose: TAction
      Caption = #20851#38381'(&C)'
      Hint = #36864#20986#31243#24207
      OnExecute = ActionCloseExecute
    end
    object ActionOpenDir: TAction
      Caption = #25171#24320#25991#20214#25152#22312#30446#24405'(&D)'
      Hint = #25171#24320#25991#20214#25152#22312#30446#24405
      ImageIndex = 21
      OnExecute = ActionOpenDirExecute
    end
    object ActionDoubleGet: TAction
      Tag = 1
      Caption = #24471#21040#26368#26032#20540'(&G)'
      Checked = True
      GroupIndex = 4
      Hint = #21452#20987#36873#25321#39033#24471#21040#26368#26032#20540#21040#36755#20837#26694#20013
      OnExecute = ActionDoubleGetExecute
    end
    object ActionDoubleHex: TAction
      Tag = 2
      Caption = #21313#20845#36827#21046#32534#36753#22120'(&H)'
      GroupIndex = 4
      Hint = #21452#20987#36873#25321#39033#29992#21313#20845#36827#21046#32534#36753#22120
      OnExecute = ActionDoubleGetExecute
    end
    object ActionDoubleDisplay: TAction
      Tag = 3
      Caption = #20999#25442#26174#31034#26041#24335'(&D)'
      GroupIndex = 4
      Hint = #21452#20987#36873#25321#39033#20999#25442#26174#31034#26041#24335
      OnExecute = ActionDoubleGetExecute
    end
    object ActionGetNewValue: TAction
      Caption = #33719#24471#26368#26032#20540
      Hint = #33719#24471#26368#26032#20540
      OnExecute = ActionGetNewValueExecute
    end
    object ActionHelp: TAction
      Caption = #24110#21161'(&H)'
      Hint = #24110#21161
      ImageIndex = 22
      OnExecute = ActionHelpExecute
    end
    object ActionBlog: TAction
      Caption = 'Blog(&B)'
      Hint = 'http://blog.sina.com.cn/u/589d32f5010007jh'
      OnExecute = ActionBlogExecute
    end
    object ActionLiveUpdate: TAction
      Caption = #22312#32447#21319#32423
      OnExecute = ActionLiveUpdateExecute
    end
  end
  object PopupMenuAddress: TPopupMenu
    Tag = 1
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Images = ImageListTools
    Left = 109
    Top = 216
    object MenuItemAddress1Byte: TMenuItem
      Action = ActionAddress1Byte
    end
    object MenuItemAddress16Byte: TMenuItem
      Action = ActionAddress16Byte
    end
    object MenuItemAddress32Byte: TMenuItem
      Action = ActionAddress32Byte
    end
    object MenuItemAddress256Byte: TMenuItem
      Action = ActionAddress256Byte
    end
    object MenuItemAddress1024Byte: TMenuItem
      Action = ActionAddress1024Byte
    end
    object MenuItemAddress4096Byte: TMenuItem
      Action = ActionAddress4096Byte
    end
    object MenuItemAddressCustom: TMenuItem
      Action = ActionAddressCustom
    end
  end
  object PopupMenuLength: TPopupMenu
    Tag = 1
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Images = ImageListTools
    Left = 140
    Top = 216
    object MenuItemLength1Byte: TMenuItem
      Action = ActionLength1Byte
    end
    object MenuItemLength16Byte: TMenuItem
      Action = ActionLength16Byte
    end
    object MenuItemLength32Byte: TMenuItem
      Action = ActionLength32Byte
    end
    object MenuItemLengthCustom: TMenuItem
      Action = ActionLengthCustom
    end
  end
  object PopupMenuCopy: TPopupMenu
    Tag = 1
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Images = ImageListTools
    Left = 172
    Top = 216
    object MenuItemCopyNew: TMenuItem
      Action = ActionCopyNew
    end
    object MenuItemCopyOld: TMenuItem
      Action = ActionCopyOld
    end
    object MenuItemCopyAddress: TMenuItem
      Action = ActionCopyAddress
    end
    object MenuItemCopyAll: TMenuItem
      Action = ActionCopyAll
    end
  end
  object ImageListDrag: TImageList
    Height = 23
    Width = 27
    Left = 202
    Top = 216
    Bitmap = {
      494C01010200040004001B001700FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006C000000170000000100200000000000D026
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C60000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF00000000000000C6C6
      C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6C6000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E000000280000006C0000001700000001000100
      00000000700100000000000000000000000000000000000000000000FFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ImageListTools: TImageList
    Left = 233
    Top = 216
    Bitmap = {
      494C010117001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBEBEBFF928F8FFF583B37FFACACACFF0000
      00000000000000000000000000000000000000000000F6F6F600DFDFDF00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600DFDFDF00F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFDDDDDDFF766665FFB6422EFF855446FFA1928DFF5D5A59FFF4F4
      F4FF00000000000000000000000000000000F6F6F600C8C8C800838383006D6D
      6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D
      6D006D6D6D006D6D6D0083838300C8C8C8000000000000000000000000000000
      0000000000000000000000000000840084008400840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFFCACA
      CAFF684541FFC85D46FFD2C3C0FFFFFFFFFFFFFFFFFFFFFFFFFF633731FFB1B1
      B1FF00000000000000000000000000000000DFDFDF001D82B5001B81B300187E
      B000167CAE001379AB001076A8000D73A5000B71A300086EA000066C9E00046A
      9C0002689A00016799004C4C4C00838383000000000000000000000000000000
      00000000000084008400840084000000000000000000C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFFB7B7B7FF6D3029FFD58F
      82FFFAF2F1FFDAA7A1FFC86458FFC23622FFAD3325FFCFD5D6FFB4BDBFFF6666
      66FFF9F9F9FF0000000000000000000000002287BA0067CCFF002085B80099FF
      FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4FF006FD4
      FF003BA0D30099FFFF00016799006E6E6E000000000000000000000000008400
      84008400840000000000000000000000000000000000C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D3E38FF91251CFF9B342AFF9F3F
      34FFA44D40FFB26453FFD27460FFDD826EFFDB8270FF9B6862FFABAFB1FF6137
      32FFC1C1C1FF000000000000000000000000258ABD0067CCFF00278CBF0099FF
      FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0FF007BE0
      FF0044A9DC0099FFFF0002689A006D6D6D008484840084008400840084000000
      0000000000000000000000000000840084008400840000000000C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C4032FF833F32FF7E382DFF7F3E
      31FF954F40FFB66657FFCF7460FFDD7D67FFDE7E68FFB44B3CFFC4C6C6FF8F91
      91FF727272FFFCFCFCFF0000000000000000288DC00067CCFF002D92C50099FF
      FF0085EBFF0085EBFF0085EBFF0085EBFF0085EBFF0085EBFF0085EBFF0085EB
      FF004EB3E60099FFFF00046A9C006D6D6D008484840084008400000000000000
      000000000000840084008400840084008400840084008400840000000000C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000793B2DFF7D382DFF8841
      33FFA25343FFC46F5DFFD77964FFDF7E68FFEC8770FFF0917CFFAE5549FFB6BA
      BBFF5E3A35FFCFCFCFFF00000000000000002A8FC20067CCFF003398CB0099FF
      FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7FF0091F7
      FF0057BCEF0099FFFF00066C9E006D6D6D008484840000000000000000008400
      840084008400840084000084840000FFFF008400840084008400840084000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824435FF8945
      37FF9B4C3BFFBB6855FFD77B67FFDD7C67FFEB8972FFE78871FFC56555FFB9BF
      C1FF888A8BFF707070FFA5A5A5FF000000002D92C5006FD4FF003499CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0060C5F80099FFFF00086EA0006E6E6E008484840084008400840084008400
      8400840084008400840084008400008484008400840084008400840084008400
      840000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009665
      54FFA15544FFAF5B49FFBD6451FFD07560FFD27B66FFCE7663FFC3735FFF8930
      25FFB4B7B7FF9B4B3EFF594E4CFFF1F1F1FF2F94C7007BE0FF002D92C500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0081E6FF00FFFFFF000B71A3008C8C8C000000000084008400000000008400
      84008400840084008400840084008400840000FFFF0000FFFF00840084008400
      8400840084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6624EFFAA5C48FFB05A48FFBA634FFFB7634FFFB56A57FFAB6453FFA758
      48FFB4AEACFF8D8D8CFF8B473AFFB6B6B6FF3196C90085EBFF0081E6FF002D92
      C5002D92C5002D92C5002D92C5002D92C5002D92C500288DC0002489BC002085
      B8001C81B4001B81B3001B81B300DFDFDF000000000000000000840084000000
      000084008400840084008400840084008400840084000084840000FFFF0000FF
      FF00840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A36955FFA55C49FFA95A49FFAA5744FFA04B3AFF9F5846FFA55B
      4AFF8F3223FFADB7B8FFA6594BFFECECECFF3398CB0091F7FF008EF4FF008EF4
      FF008EF4FF008EF4FF008EF4FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00167CAE008C8C8C00DEDEDE00000000000000000000000000000000008400
      840000000000840084008400840084008400008484008400840000FFFF0000FF
      FF00840084008400840084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C604CFF955F4DFF944C3BFF954837FF994B3AFFA452
      40FFA7604DFF977E7CFFF7F7F7FFFCFCFCFF3499CC00FFFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00FFFFFF00258ABD002287BA001F84B7001D82B5001B81
      B300187EB000DFDFDF00F7F7F700000000000000000000000000000000000000
      00008400840000000000840084008400840000FFFF0000FFFF0000FFFF008400
      8400840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008A726BFF7A4A3CFF894837FF934737FF9A48
      39FFA15B49FF904131FFFAFAFAFFFCFCFCFF000000003499CC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002A8FC200C8C8C800F6F6F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400840000000000840084008400840084008400840084008400
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFEFE
      FEFFFAFAFAFFCDCBCAFFFCFCFCFFFCFCFCFF00000000000000003499CC003398
      CB003196C9002F94C700DFDFDF00F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400000000008400840084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      84000084840000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000084848400FFFFFF000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF000000000000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF000000000000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF000000000084848400FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF000000000000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000080000000800000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6008484840000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00C6C6C60000840000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C6000084000000840000FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF000000
      0000FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C6000084000000840000008400000084000000840000C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C6000084000000840000FFFFFF00848400008484
      0000C6C6C600C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000FFFF
      FF00000000000000000084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00C6C6C60000840000C6C6C600FFFFFF008484
      0000FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00C6C6C60084840000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6008484
      0000C6C6C600C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF000000
      0000FFFFFF008484840084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00FFFFFF0084840000FFFFFF00C6C6C60000840000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00C6C6C6008484000084840000FFFFFF000084000000840000C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C60000000000000000008484840000FF
      000000FF00000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000FFFF
      FF00000000000000000084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C6000084000000840000008400000084000000840000C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      00000000000000000000000000000000000000000000848484008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6008484840000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF008484840084848400848484008484840084848400FFFFFF008484
      840084848400848484008484840000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C6008484
      8400FFFFFF000000000000000000000000000000000000000000848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      000000FF00000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      00000000000000000000848484000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60084848400000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000FF000000FF000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF000000FF0000000000FFFFFF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000840000000000000084000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF000000FF000000FF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00008484840000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF000000000000000000FF00000000000000FF000000000000008484
      840000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000FF00000000000000FF000000000000008484
      84000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF000000000000000000FF00000000000000FF000000000000008484
      840000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      00000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000FF00000000000000FF000000000000008484
      84000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FF00000000000000FF000000000000008484
      840000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000FF00000000000000FF000000000000008484
      840084848400848484008484840000FFFF000000000000FFFF000000000000FF
      FF000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400FFFFFF008400000084000000840000008400000084000000FFFFFF008400
      0000FFFFFF000000000000000000FF00000000000000FF000000000000008484
      840000FFFF000000000000FFFF00848484008484840084848400848484008484
      84000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C6C6C6000000000000000000FF000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000FF00000000000000FF000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840084848400C6C6C6000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000084848400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000000000000000000000000000848484000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FF9FFFFFFFFF0000FE1F8000FE3F0000
      F00F0000F81F0000C00F0000E18F000000070000860700000007000018030000
      00030000200100008003000000000000C001000000010000E0000000A0010000
      F0000000D0010000F8000001E8000000FC000001F4000000FE00807FFA030000
      FFC0C0FFFD0F0000FFFFFFFFFE3F0000FFFFFFFFB42EB46EFFFFF3FFB5F5B7AE
      001FE1FF843B842A000FC0FFB5F5B5E40007807FB42ECE2E0003003FFFFFFFFF
      0001801F000000000000C00F00000000001FE00700000000001FF00300000000
      001FF801000000008FF1FC0000000000FFF9FE0100000000FF75FF0300000000
      FF8FFF8700000000FFFFFFCF00000000B42EFFFFC001FFFFB5F58001C001C007
      843B8001C001DFF7B5F58001C001D017B42E8001C001DFF7FFFF8001C001D017
      E01F8001C001DFF7EA9F8001C001D017ED5F8001C001DFE30A998001C001D0C3
      4FD08001C001DF8160198001C001D00040198001C001DF007EF98003C003C001
      00E18007C007FFC300FF800FC00FFFE7FFFFEFFDFFFFFFFFDFFB0000FFFFC001
      8FFFC3FBFE00800187F70000FEFE8001C7EF81E7FE828001E3CF000080FE8001
      F19FE00FBE828001F83F0000A0FE8001FC7FF81FBE908001F83F0000A0F58001
      F19FE027BEF38001C3CF0000A407800187E7C3CDBD7F80018FFB0000BCFF8001
      FFFF8FFB81FF8001FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      07C180018000800147D18001BFFEBFFD47D18001A002A00501018001A002A555
      20418001A002AAA520418001A002A55520418001A002AAA580038001A002A555
      D1478001A002A0A5C1078001A002A40DE38F8001A002B1FDEBAF8001BFFEBFFD
      E38F800180008001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF83FFFFFFFFFFFFFF83FFFFFFFFFFFFFF83FFFFFFF7FFEFFF83FFFFF
      F87FFE1F8003FFFFC003C00380038001F87FFE1F80038001FF7FFEFF80038001
      FFFFFFFF80038001FFFFFFFFF83FFFFFFFFFFFFFF83FFFFFFFFFFFFFF83FFFFF
      FFFFFFFFF83FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageListSort: TImageList
    Height = 10
    Width = 10
    Left = 264
    Top = 216
    Bitmap = {
      494C01010200040004000A000A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000280000000A00000001002000000000004006
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000008484840084848400FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000848484000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      000084848400848484000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000000000FFFFFF00000000000000000000000000000000000000
      00008484840000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00FFFFFF00000000000000000000000000000000008484
      84008484840000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000280000000A0000000100010000000000500000000000000000000000
      000000000000000000000000FFFFFF00FFFFF00000000000807CF00000000000
      9E78700000000000DEFB700000000000CCF3300000000000EDF7B00000000000
      E1E7900000000000F3E0100000000000FFFFF00000000000FFFFF00000000000
      00000000000000000000000000000000000000000000}
  end
  object OpenDialogOne: TOpenDialog
    Left = 296
    Top = 216
  end
  object SaveDialogOne: TSaveDialog
    Filter = 
      'All files(*.*)|*.*|Text files(*.txt)|*.txt|Data file(*.dat)|*.da' +
      't'
    Left = 326
    Top = 216
  end
  object PopupMenuList: TPopupMenu
    Tag = 1
    Images = ImageListTools
    Left = 360
    Top = 216
    object MenuItemRefurbishB: TMenuItem
      Action = ActionRefurbish
    end
    object MenuItemHexB: TMenuItem
      Action = ActionHex
    end
    object MenuItemSearchB: TMenuItem
      Action = ActionSearch
    end
    object MenuItemDeleteB: TMenuItem
      Action = ActionDelete
    end
    object MenuItemClear: TMenuItem
      Action = ActionClear
    end
    object MenuItemCopyB: TMenuItem
      Action = ActionCopy
    end
    object MenuItemSelected: TMenuItem
      Caption = #36873#25321
      object MenuItemSelectAllB: TMenuItem
        Action = ActionSelectAll
      end
      object MenuItemSelectNot: TMenuItem
        Action = ActionSelectNot
      end
      object MenuItemSelectChanged: TMenuItem
        Action = ActionSelectChanged
      end
    end
    object MenuItemSaveB: TMenuItem
      Action = ActionSave
    end
    object MenuItemInsertB: TMenuItem
      Action = ActionInsert
    end
    object MenuItemGetNewValueC: TMenuItem
      Action = ActionGetNewValue
    end
    object MenuItemLineC: TMenuItem
      Caption = '-'
    end
    object MenuItemCopyC: TMenuItem
      Caption = #22797#21046#26041#24335
      Hint = #22797#21046#26041#24335
      object MenuItemCopyAllC: TMenuItem
        Action = ActionCopyAll
      end
      object MenuItemCopyAddressC: TMenuItem
        Action = ActionCopyAddress
      end
      object MenuItemCopyNewC: TMenuItem
        Action = ActionCopyNew
      end
      object MenuItemCopyOldC: TMenuItem
        Action = ActionCopyOld
      end
    end
    object MenuItemDoubleClickC: TMenuItem
      Caption = #21452#20987#21151#33021
      Hint = #21452#20987#21151#33021
      object MenuItemDoubleGetC: TMenuItem
        Action = ActionDoubleGet
      end
      object MenuItemDoubleHexC: TMenuItem
        Action = ActionDoubleHex
      end
      object MenuItemDoubleDisplayC: TMenuItem
        Action = ActionDoubleDisplay
      end
    end
  end
end
