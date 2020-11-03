object NewTemplateForm: TNewTemplateForm
  Left = 557
  Top = 743
  BorderStyle = bsDialog
  Caption = 'New Template'
  ClientHeight = 321
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object devPages1: TPageControl
    Left = 0
    Top = 0
    Width = 358
    Height = 281
    ActivePage = pgTemplate
    Align = alTop
    TabOrder = 0
    object pgTemplate: TTabSheet
      Caption = 'Template info'
      object lblName: TLabel
        Left = 8
        Top = 12
        Width = 40
        Height = 16
        Caption = 'Name:'
      end
      object lblDescr: TLabel
        Left = 8
        Top = 40
        Width = 71
        Height = 16
        Caption = 'Description:'
      end
      object lblCateg: TLabel
        Left = 8
        Top = 68
        Width = 58
        Height = 16
        Caption = 'Category:'
      end
      object txtDescr: TEdit
        Left = 112
        Top = 36
        Width = 225
        Height = 24
        TabOrder = 1
        Text = 'txtDescr'
      end
      object cmbCateg: TComboBox
        Left = 112
        Top = 64
        Width = 225
        Height = 24
        AutoDropDown = True
        Sorted = True
        TabOrder = 2
        Text = 'cmbCateg'
        OnChange = cmbNameChange
      end
      object cmbName: TComboBox
        Left = 112
        Top = 8
        Width = 225
        Height = 24
        AutoDropDown = True
        Sorted = True
        TabOrder = 0
        Text = 'cmbName'
        OnChange = cmbNameChange
      end
      object grpIcons: TGroupBox
        Left = 8
        Top = 120
        Width = 329
        Height = 118
        Caption = 'Icons'
        TabOrder = 3
        object lstIcons: TListBox
          Left = 12
          Top = 20
          Width = 181
          Height = 85
          Style = lbOwnerDrawFixed
          ExtendedSelect = False
          ItemHeight = 36
          TabOrder = 0
          OnClick = lstIconsClick
          OnDrawItem = lstIconsDrawItem
        end
        object btnLib: TBitBtn
          Left = 208
          Top = 17
          Width = 113
          Height = 24
          Hint = 'Select a icon from Dev-C++'#39's icon collection'
          Caption = 'Library'
          NumGlyphs = 2
          TabOrder = 1
          OnClick = btnLibClick
        end
        object btnBrowse: TBitBtn
          Left = 208
          Top = 51
          Width = 113
          Height = 22
          Hint = 'Select a custom icon'
          Caption = 'Browse...'
          NumGlyphs = 2
          TabOrder = 2
          OnClick = btnBrowseClick
        end
        object btnRemove: TBitBtn
          Left = 208
          Top = 83
          Width = 113
          Height = 22
          Hint = 'Do not use an icon for this project'
          Caption = 'Remove'
          Enabled = False
          TabOrder = 3
          OnClick = btnRemoveClick
        end
      end
    end
    object pgFiles: TTabSheet
      Caption = 'Files'
      object lblFiles: TLabel
        Left = 8
        Top = 12
        Width = 100
        Height = 16
        Caption = 'Files in template:'
      end
      object lstFiles: TCheckListBox
        Left = 16
        Top = 28
        Width = 321
        Height = 213
        TabOrder = 0
      end
    end
    object pgExtras: TTabSheet
      Caption = 'Extras'
      object lblCompiler: TLabel
        Left = 8
        Top = 12
        Width = 136
        Height = 16
        Caption = 'Compiler extra options:'
      end
      object lblLinker: TLabel
        Left = 244
        Top = 12
        Width = 118
        Height = 16
        Caption = 'Linker extra options:'
      end
      object lblCppCompiler: TLabel
        Left = 128
        Top = 12
        Width = 128
        Height = 16
        Caption = 'C++ compiler options:'
      end
      object memCompiler: TMemo
        Left = 12
        Top = 28
        Width = 101
        Height = 149
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object memLinker: TMemo
        Left = 240
        Top = 29
        Width = 105
        Height = 148
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object memCppCompiler: TMemo
        Left = 120
        Top = 28
        Width = 109
        Height = 149
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object cbInclude: TCheckBox
        Left = 16
        Top = 192
        Width = 329
        Height = 17
        Caption = 'Use project'#39's Include directories'
        TabOrder = 3
      end
      object cbLibrary: TCheckBox
        Left = 16
        Top = 208
        Width = 329
        Height = 17
        Caption = 'Use project'#39's Library directories'
        TabOrder = 4
      end
      object cbResource: TCheckBox
        Left = 16
        Top = 224
        Width = 329
        Height = 17
        Caption = 'Use project'#39's Resource directories'
        TabOrder = 5
      end
    end
  end
  object btnCreate: TButton
    Left = 130
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Create'
    Default = True
    TabOrder = 1
    OnClick = btnCreateClick
  end
  object btnCancel: TButton
    Left = 266
    Top = 288
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object dlgPic: TOpenPictureDialog
    DefaultExt = 'ico'
    Filter = 'Icons (*.ico)|*.ico'
    Title = 'Open icon'
    Left = 87
    Top = 286
  end
end
