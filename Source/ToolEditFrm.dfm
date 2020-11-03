object ToolEditForm: TToolEditForm
  Left = 778
  Top = 377
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Edit tool'
  ClientHeight = 339
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    484
    339)
  PixelsPerInch = 96
  TextHeight = 17
  object lblTitle: TLabel
    Left = 8
    Top = 12
    Width = 24
    Height = 17
    Caption = 'Title'
  end
  object lblProg: TLabel
    Left = 8
    Top = 40
    Width = 51
    Height = 17
    Caption = 'Program'
  end
  object lblWorkDir: TLabel
    Left = 8
    Top = 69
    Width = 106
    Height = 17
    Caption = 'Working Directory'
  end
  object lblParam: TLabel
    Left = 8
    Top = 98
    Width = 66
    Height = 17
    Caption = 'Parameters'
  end
  object lblMacros: TLabel
    Left = 7
    Top = 157
    Width = 103
    Height = 17
    Caption = 'Available Macros:'
  end
  object btnProg: TSpeedButton
    Left = 451
    Top = 36
    Width = 23
    Height = 22
    Caption = '. . .'
    OnClick = btnProgClick
  end
  object btnWorkDir: TSpeedButton
    Left = 451
    Top = 65
    Width = 23
    Height = 22
    Caption = '. . .'
    OnClick = btnWorkDirClick
  end
  object lblTitle2: TLabel
    Left = 230
    Top = 0
    Width = 242
    Height = 17
    Caption = '(Better to write in language file manually) '
    Visible = False
  end
  object lblDesc: TMemo
    Left = 167
    Top = 218
    Width = 305
    Height = 61
    Color = clBtnFace
    Enabled = False
    ReadOnly = True
    TabOrder = 10
  end
  object edTitle: TEdit
    Left = 120
    Top = 8
    Width = 325
    Height = 25
    TabOrder = 0
  end
  object edProgram: TEdit
    Left = 120
    Top = 36
    Width = 321
    Height = 25
    TabOrder = 1
    OnChange = edProgramChange
    OnEnter = EditEnter
  end
  object edWorkDir: TEdit
    Left = 120
    Top = 65
    Width = 321
    Height = 25
    TabOrder = 2
    OnEnter = EditEnter
  end
  object edParams: TEdit
    Left = 120
    Top = 94
    Width = 353
    Height = 25
    TabOrder = 3
    OnChange = edParamsChange
    OnEnter = EditEnter
  end
  object btnCancel: TBitBtn
    Left = 304
    Top = 292
    Width = 85
    Height = 39
    Anchors = [akLeft, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 8
    OnClick = btnCancelClick
  end
  object btnOk: TBitBtn
    Left = 214
    Top = 292
    Width = 81
    Height = 39
    Anchors = [akLeft, akBottom]
    Caption = '&OK'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 7
  end
  object lstMacro: TListBox
    Left = 8
    Top = 180
    Width = 153
    Height = 106
    Color = 14548990
    IntegralHeight = True
    ItemHeight = 17
    Items.Strings = (
      '<DEFAULT>'
      '<EXECPATH>'
      '<EXENAME>'
      '<PROJECTPATH>'
      '<PROJECTFILE>'
      '<PROJECTNAME>'
      '<SOURCENAME>'
      '<SOURCEPATH>'
      '<SOURCESPCLIST>'
      '<WORDXY>'
      '<DEVCPPVERSION>'
      '<WINDIR>'
      '<PROGRAMFILES>')
    TabOrder = 4
    OnClick = lstMacroClick
    OnDblClick = btnInsertClick
  end
  object btnInsert: TBitBtn
    Left = 167
    Top = 180
    Width = 103
    Height = 32
    Caption = '&Insert Macro'
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btnInsertClick
  end
  object btnHelp: TBitBtn
    Left = 399
    Top = 292
    Width = 75
    Height = 39
    Anchors = [akLeft, akBottom]
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 6
    OnClick = HelpClick
  end
  object ParamText: TEdit
    Left = 8
    Top = 128
    Width = 465
    Height = 23
    AutoSize = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 9
  end
end
