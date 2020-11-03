object FormatterOptionsForm: TFormatterOptionsForm
  Left = 412
  Top = 756
  BorderStyle = bsDialog
  Caption = 'Formatter Options'
  ClientHeight = 600
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    600
    600)
  PixelsPerInch = 96
  TextHeight = 17
  object lblPoweredBy: TLabel
    Left = 8
    Top = 569
    Width = 305
    Height = 23
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    Caption = 'Powered by Artistic Style'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = lblPoweredByClick
  end
  object lblPreview: TLabel
    Left = 8
    Top = 296
    Width = 47
    Height = 17
    Caption = 'Preview:'
  end
  object btnOk: TBitBtn
    Left = 330
    Top = 559
    Width = 85
    Height = 34
    Anchors = [akLeft, akBottom]
    Caption = '&OK'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnCancel: TBitBtn
    Left = 420
    Top = 559
    Width = 85
    Height = 34
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = '&Cancel'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnHelp: TBitBtn
    Left = 510
    Top = 559
    Width = 85
    Height = 34
    Anchors = [akLeft, akBottom]
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 3
    OnClick = btnHelpClick
  end
  object synExample: TSynEdit
    Left = 8
    Top = 314
    Width = 584
    Height = 239
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 0
    CodeFolding.GutterShapeSize = 11
    CodeFolding.CollapsedLineColor = clGrayText
    CodeFolding.FolderBarLinesColor = clGrayText
    CodeFolding.IndentGuidesColor = clGray
    CodeFolding.IndentGuides = True
    CodeFolding.ShowCollapsedLine = False
    CodeFolding.ShowHintMark = True
    UseCodeFolding = False
    ClickCodeFolding = False
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.RightOffset = 21
    Lines.Strings = (
      'int Foo(bool isBar) {'
      #9'if(isBar) {'
      #9#9'bar();'
      #9#9'return 1;'
      #9'} else {'
      #9#9'return 0;'
      #9'}'
      '}')
    ReadOnly = True
    FontSmoothing = fsmNone
  end
  object grpOptions: TGroupBox
    Left = 8
    Top = 40
    Width = 584
    Height = 250
    Caption = 'Options'
    TabOrder = 4
    object lblBracketStyle: TLabel
      Left = 16
      Top = 24
      Width = 75
      Height = 17
      Caption = 'Bracket style:'
    end
    object lblIndentStyle: TLabel
      Left = 16
      Top = 56
      Width = 69
      Height = 17
      Caption = 'Indent style:'
    end
    object lblTabWidth: TLabel
      Left = 16
      Top = 88
      Width = 60
      Height = 17
      Caption = 'Tab width:'
    end
    object lblCommand: TLabel
      Left = 16
      Top = 154
      Width = 246
      Height = 17
      Caption = 'Final command (add customizations here):'
    end
    object bvCustom: TBevel
      Left = 20
      Top = 146
      Width = 544
      Height = 2
    end
    object lblIndentParts: TLabel
      Left = 288
      Top = 51
      Width = 201
      Height = 17
      Caption = 'Indent the following kinds of code:'
    end
    object cmbBracketStyle: TComboBox
      Left = 104
      Top = 20
      Width = 145
      Height = 25
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = '(do not modify)'
      OnChange = OptionChange
      Items.Strings = (
        '(do not modify)'
        'Allman'
        'Java'
        'K&R'
        'Stroustrup'
        'Whitesmith'
        'Banner'
        'GNU'
        'Linux'
        'Horstmann'
        'OTBS'
        'Pico'
        'Lisp')
    end
    object cmbIndentStyle: TComboBox
      Left = 104
      Top = 52
      Width = 145
      Height = 25
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = '(do not modify)'
      OnChange = OptionChange
      Items.Strings = (
        '(do not modify)'
        'Spaces'
        'Tabs'
        'Force Tab'
        'Force Tab X')
    end
    object spinTabWidth: TSpinEdit
      Left = 130
      Top = 84
      Width = 50
      Height = 27
      MaxValue = 20
      MinValue = 2
      TabOrder = 2
      Value = 4
      OnChange = OptionChange
    end
    object chkClasses: TCheckBox
      Left = 288
      Top = 74
      Width = 129
      Height = 17
      Caption = 'Classes'
      TabOrder = 3
      OnClick = OptionChange
    end
    object chkSwitches: TCheckBox
      Left = 288
      Top = 97
      Width = 129
      Height = 17
      Caption = 'Switches'
      TabOrder = 4
      OnClick = OptionChange
    end
    object chkNamespace: TCheckBox
      Left = 432
      Top = 77
      Width = 129
      Height = 17
      Caption = 'Namespaces'
      TabOrder = 6
      OnClick = OptionChange
    end
    object chkCases: TCheckBox
      Left = 288
      Top = 120
      Width = 129
      Height = 17
      Caption = 'Cases'
      TabOrder = 5
      OnClick = OptionChange
    end
    object chkLabels: TCheckBox
      Left = 432
      Top = 100
      Width = 129
      Height = 17
      Caption = 'Labels'
      TabOrder = 7
      OnClick = OptionChange
    end
    object chkPreprocessor: TCheckBox
      Left = 432
      Top = 123
      Width = 129
      Height = 17
      Caption = 'Preprocessor'
      TabOrder = 8
      OnClick = OptionChange
    end
    object memFullCommand: TMemo
      Left = 16
      Top = 177
      Width = 552
      Height = 64
      TabOrder = 9
      OnChange = CommandChange
    end
    object spinMaxLineLength: TSpinEdit
      Left = 130
      Top = 116
      Width = 50
      Height = 27
      MaxValue = 200
      MinValue = 50
      TabOrder = 10
      Value = 100
      OnChange = OptionChange
    end
    object chkMaxLineLength: TCheckBox
      Left = 16
      Top = 120
      Width = 112
      Height = 17
      Caption = 'Max line length:'
      TabOrder = 11
      OnClick = OptionChange
    end
    object chkAdjustSpaces: TCheckBox
      Left = 432
      Top = 24
      Width = 129
      Height = 17
      Caption = 'Adjust spaces'
      TabOrder = 12
      OnClick = OptionChange
    end
    object chkAdjustLines: TCheckBox
      Left = 288
      Top = 20
      Width = 129
      Height = 25
      Caption = 'Adjust lines'
      TabOrder = 13
      OnClick = OptionChange
    end
  end
  object chkAutoFormat: TCheckBox
    Left = 24
    Top = 6
    Width = 449
    Height = 33
    Caption = 'Automatically format current file before saving'
    TabOrder = 5
  end
end
