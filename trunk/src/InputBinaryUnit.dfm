object FormInputBinary: TFormInputBinary
  Left = 345
  Top = 241
  Width = 292
  Height = 258
  Caption = 'FormInputBinary'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBinary: TGroupBox
    Left = 0
    Top = 0
    Width = 284
    Height = 185
    Align = alClient
    Caption = #20108#36827#21046
    TabOrder = 0
    object CheckListBoxBinary: TCheckListBox
      Left = 2
      Top = 15
      Width = 280
      Height = 168
      OnClickCheck = CheckListBoxBinaryClickCheck
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object PanelButtons: TPanel
    Left = 0
    Top = 185
    Width = 284
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      284
      39)
    object LabelNumber: TLabel
      Left = 8
      Top = 12
      Width = 6
      Height = 13
      Caption = '0'
    end
    object ButtonOk: TButton
      Left = 118
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#23450'(&Y)'
      ModalResult = 1
      TabOrder = 0
    end
    object ButtonCancel: TButton
      Left = 198
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
