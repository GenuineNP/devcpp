object ParamsForm: TParamsForm
  Left = 581
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Parameters'
  ClientHeight = 187
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object grpParameters: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 71
    Caption = 'Parameters to pass to your program :'
    TabOrder = 0
    object ParamEdit: TEdit
      Left = 14
      Top = 30
      Width = 256
      Height = 25
      TabOrder = 0
    end
  end
  object grpHost: TGroupBox
    Left = 8
    Top = 85
    Width = 281
    Height = 60
    Caption = 'Host Application :'
    TabOrder = 1
    object LoadBtn: TSpeedButton
      Left = 248
      Top = 21
      Width = 22
      Height = 22
      Caption = '...'
      OnClick = LoadBtnClick
    end
    object HostEdit: TEdit
      Left = 14
      Top = 24
      Width = 228
      Height = 25
      TabOrder = 0
    end
  end
  object OkBtn: TBitBtn
    Left = 125
    Top = 151
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object CancelBtn: TBitBtn
    Left = 214
    Top = 151
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
