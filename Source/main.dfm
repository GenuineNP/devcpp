object MainForm: TMainForm
  Left = 272
  Top = 140
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Dev-C++'
  ClientHeight = 466
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDefault
  ShowHint = True
  OnClose = FormClose
  OnContextPopup = FormContextPopup
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SplitterLeft: TSplitter
    Left = 193
    Top = 56
    Height = 210
    MinSize = 45
    ResizeStyle = rsUpdate
    ExplicitHeight = 279
  end
  object SplitterBottom: TSplitter
    Left = 0
    Top = 266
    Width = 1047
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    OnMoved = SplitterBottomMoved
    ExplicitTop = 335
    ExplicitWidth = 999
  end
  object MessageControl: TPageControl
    Left = 0
    Top = 269
    Width = 1047
    Height = 177
    ActivePage = CompSheet
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = dmMain.MenuImages_Modern
    MultiLine = True
    ParentFont = False
    PopupMenu = MessagePopup
    TabOrder = 2
    OnChange = MessageControlChange
    object CompSheet: TTabSheet
      Caption = 'Compiler'
      ImageIndex = 41
      object CompilerOutput: TListView
        Left = 0
        Top = 0
        Width = 1039
        Height = 148
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsNone
        Columns = <
          item
            Caption = 'Line'
            Width = 40
          end
          item
            Caption = 'Col'
            Width = 40
          end
          item
            Caption = 'Unit'
            Width = 320
          end
          item
            AutoSize = True
            Caption = 'Message'
          end>
        ColumnClick = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        GridLines = True
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ViewStyle = vsReport
        OnAdvancedCustomDraw = CompilerOutputAdvancedCustomDraw
        OnAdvancedCustomDrawItem = CompilerOutputAdvancedCustomDrawItem
        OnDblClick = CompilerOutputDblClick
        OnDeletion = CompilerOutputDeletion
        OnKeyDown = CompilerOutputKeyDown
      end
    end
    object ResSheet: TTabSheet
      Caption = 'Resource'
      ImageIndex = 12
      object ResourceOutput: TListView
        Left = 0
        Top = 0
        Width = 1039
        Height = 148
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsNone
        Columns = <
          item
            Caption = 'Line'
            Width = 40
          end
          item
            Caption = 'Col'
            Width = 40
          end
          item
            Caption = 'Unit'
            Width = 320
          end
          item
            AutoSize = True
            Caption = 'Message'
          end>
        ColumnClick = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        GridLines = True
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ViewStyle = vsReport
        OnAdvancedCustomDraw = CompilerOutputAdvancedCustomDraw
        OnAdvancedCustomDrawItem = CompilerOutputAdvancedCustomDrawItem
        OnDblClick = CompilerOutputDblClick
        OnDeletion = ResourceOutputDeletion
        OnKeyDown = CompilerOutputKeyDown
      end
    end
    object LogSheet: TTabSheet
      Caption = 'Compile log'
      ImageIndex = 48
      object InfoGroupBox: TPanel
        Left = 0
        Top = 0
        Width = 156
        Height = 148
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          156
          148)
        object btnAbortCompilation: TSpeedButton
          Left = 4
          Top = 4
          Width = 144
          Height = 30
          Action = actAbortCompilation
        end
        object pbCompilation: TProgressBar
          Left = 4
          Top = 40
          Width = 144
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Step = 1
          TabOrder = 0
        end
        object chkShortenPaths: TCheckBox
          Left = 6
          Top = 69
          Width = 144
          Height = 17
          Action = actShortenCompPaths
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object chkTranslateMsg: TCheckBox
          Left = 6
          Top = 92
          Width = 144
          Height = 17
          Action = actMsgTranslate
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
        end
      end
      object CompResGroupBox: TPanel
        Left = 156
        Top = 0
        Width = 883
        Height = 148
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object LogOutput: TMemo
          Left = 0
          Top = 0
          Width = 883
          Height = 148
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
          WantTabs = True
          WordWrap = False
        end
      end
    end
    object DebugSheet: TTabSheet
      Caption = 'Debugging'
      ImageIndex = 46
      object DebugSendPanel: TPanel
        Left = 589
        Top = 0
        Width = 450
        Height = 148
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          450
          148)
        object lblSendCommandGdb: TLabel
          Left = 6
          Top = 12
          Width = 115
          Height = 13
          Caption = 'Send command to GDB:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edGdbCommand: TComboBox
          Left = 168
          Top = 3
          Width = 265
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          OnKeyPress = edGdbCommandKeyPress
        end
        object DebugOutput: TMemo
          Left = 6
          Top = 31
          Width = 443
          Height = 111
          Anchors = [akLeft, akTop, akRight, akBottom]
          DoubleBuffered = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object DebugStartPanel: TPanel
        Left = 0
        Top = 0
        Width = 589
        Height = 148
        Align = alLeft
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          589
          148)
        object DDebugBtn: TSpeedButton
          Left = 4
          Top = 8
          Width = 112
          Height = 25
          Action = actDebug
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            0202029D5374EFAAC9F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FD92
            92FD1E1EFD9292F0F0F0F0F0F0F0F0F000000082425E000000A7778CF0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF8484FF0000FF8484F0F0F0F0F0F0F0F0F0
            000000FF85BBE576A7000000000000D799B4F0F0F0F0F0F0F0F0F0F0F0F0FF84
            84FF0000FF8484F0F0F0F0F0F0F0F0F0000000FF97C4FF8EBEFF7FB7BE5E8800
            0000000000EFAAC9F0F0F0F0F0F0FF8484FF0000FF8484F0F0F0F0F0F0F0F0F0
            000000FF9CC6FF9AC6FF92C0FF7EB6FF7FB77C425C000000000000F0F0F0FF84
            84FF0000FF8484F0F0F0F0F0F0F0F0F0000000FFB5D6FFA8CDFFA3CBFF96C4FF
            84B9FF7FB7E672A5000000000000FF8484FF0000FF8484F0F0F0F0F0F0F0F0F0
            000000FFCBE5FFB5D6FFA1C9FFA6CEFF9CC7FF9CC6FF81B8FA8ABC363636FF84
            84FF0000FF8484F0F0F0F0F0F0F0F0F0000000FFCBE5FFCBE5FFB5D6FFA4CBFF
            9CC6FF9CC6E97EAC9D53749F9F9FFF8484FF0000FF8484F0F0F0F0F0F0F0F0F0
            000000FFCBE5FFCBE5FFCBE5FFB5D6B982992020209F9F9FF0F0F0F0F0F0FF84
            84FF0000FF8484F0F0F0F0F0F0F0F0F0000000FFCBE5FFCBE56060602020209F
            9F9FF0F0F0F0F0F0F0F0F0F0F0F0FF8484FF0000FF8484F0F0F0F0F0F0F0F0F0
            0000006060602020209F9F9FF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF84
            84FF0000FF8484F0F0F0F0F0F0F0F0F02424249F9F9FF0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F9ADADF95A5AF9ADADF0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0}
          ParentFont = False
        end
        object StopExecBtn: TSpeedButton
          Left = 4
          Top = 38
          Width = 112
          Height = 28
          Action = actStopExecute
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF009F9FCF607F7FBF807F7FBF807F7FBF807F7FBF807F7F
            BF807F7FBF809797CB68F7F7FB08FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00AFAFD750002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA5009797CB68FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007F7FBF80002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA5007F7FBF80FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007F7FBF80002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA5007F7FBF80FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007F7FBF80002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA5007F7FBF80FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007F7FBF80002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA5007F7FBF80FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007F7FBF80002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA5007F7FBF80FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007F7FBF80002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA5007F7FBF80FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00CFCFE730002AA500002AA500002AA500002AA500002AA500002A
            A500002AA500002AA500AFAFD750FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00DFDFEF207F7FBF807F7FBF807F7FBF807F7FBF807F7F
            BF807F7FBF80D7D7EB28FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          ParentFont = False
        end
        object lblEvaluate: TLabel
          Left = 4
          Top = 76
          Width = 45
          Height = 13
          Caption = 'Evaluate:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object NextLineBtn: TSpeedButton
          Left = 238
          Top = 8
          Width = 108
          Height = 25
          Action = actNextLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000012170000121700000000000000000000F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0FF0000FF0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000FF0000FF0000FF0000FF
            0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            FF0000FF0000C08000FF0000FF0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000FF0000C08000F0F0F0FF0000F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000
            C08000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF68A88000800000000000008000
            80F0F0F0F0F0F0F0F0F0F0F0F0FF0000C08000F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0BE5E88FFA1C9FF68A8FF68A8FF68A8000000F0F0F0F0F0F0F0F0F0FF0000
            C08000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0BE5E88FFA1C9FFA1C9FF68A8FF68
            A8BE5E88800080F0F0F0F0F0F0FF0000C08000F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0BE5E88FFA1C9FFA1C9FFA1C9FF68A8BE5E88800080F0F0F0F0F0F0FF0000
            C08000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0BE5E88FFA1C9FFA1C9FFA1C9FFA1
            C9BE5E88800080F0F0F0F0F0F0FF0000C08000F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0BE5E88FFFFCCFFFFCCFFFFCCFFFFCCBE5E88F0F0F0F0F0F0C08000
            FF0000C08000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0BE5E88BE5E88BE5E
            88BE5E88FF68A8F0F0F0F0F0F0C08000FF0000FF0000FF0000C08000F0F0F0F0
            F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0
            C08000FF0000FF0000FF0000F0F0F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0}
          ParentFont = False
        end
        object IntoLineBtn: TSpeedButton
          Left = 239
          Top = 39
          Width = 107
          Height = 25
          Action = actStepLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000012170000121700000000000000000000F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0C08000F0F0F0F0
            F0F0FF68A8800080000000000000800080F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0FF0000C08000F0F0F0BE5E88FFA1C9FF68A8FF68A8FF68
            A8000000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0C08000C08000FF0000FF0000C0
            8000BE5E88FFA1C9FFA1C9FF68A8FF68A8BE5E88800080F0F0F0F0F0F0F0F0F0
            C08000FF0000FF0000FF0000FF0000FF0000BE5E88FFA1C9FFA1C9FFA1C9FF68
            A8BE5E88800080F0F0F0F0F0F0C08000FF0000FF0000F0F0F0FF0000FF0000F0
            F0F0BE5E88FFA1C9FFA1C9FFA1C9FFA1C9BE5E88800080F0F0F0F0F0F0FF0000
            FF0000F0F0F0F0F0F0FF0000F0F0F0F0F0F0F0F0F0BE5E88FFFFCCFFFFCCFFFF
            CCFFFFCCBE5E88F0F0F0F0F0F0FF0000FF0000F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0BE5E88BE5E88BE5E88BE5E88FF68A8F0F0F0F0F0F0FF0000
            FF0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0C08000FF0000F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0}
          ParentFont = False
        end
        object StepOverBtn: TSpeedButton
          Left = 352
          Top = 8
          Width = 113
          Height = 25
          Action = actStepOver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000012170000121700000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
            AAC9FFFBFDFFFFFFFFFFFFFFFFFFFFFFFFC07B7BFF2020FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000EFAAC9FFFFFFFFFFFFFFFF
            FFC07B7BFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FF7FB7000000EFAAC9FFFFFFFFFFFFC07B7BFF0000FFFFFFFFFFFF616161
            000000000000000000000000000000000000FF7FB7FF7FB7000000EFAAC9FFFF
            FFC07B7BFF0000FFFFFFFFFFFF666666FFCBE5FFCBE5FFA6CEFFA6CEFFA6CEEF
            AAC9FF7FB7FF7FB7FF7FB7000000FFBFDBC07B7BFF0000FFFFFFFFFFFF666666
            FFCBE5FFCBE5FFCBE5FFA6CEFFA6CEFFA6CEEFAAC9FF7FB7FF7FB7FF7FB70000
            00C07B7BFF0000FFFFFFFFFFFFA0A0A0FFCBE5FFCBE5FFCBE5FFCBE5FFA6CEFF
            A6CEFFA6CEEFAAC9FF7FB7000000FFDFEDC07B7BFF0000FFFFFFFFFFFF404040
            000000000000000000000000000000000000FFA6CEFFA6CE000000FFEBF4FFFF
            FFC07B7BFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFA6CE000000FFF7FAFFFFFFFFFFFFC07B7BFF0000FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFC07B7BFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
            9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07B7BFF6060FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
        end
        object SkipFuncBtn: TSpeedButton
          Left = 352
          Top = 40
          Width = 113
          Height = 26
          Action = actSkipFunction
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000012170000121700000000000000000000F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0FF0000C08000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000FF0000FF0000C08000F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000
            FF0000FF0000FF0000FF0000C08000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000C08000F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0FF0000FF0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000FF0000F0F0F0F0F0F0FF
            68A8800080000000000000800080F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0C08000FF0000C08000F0F0F0BE5E88FFA1C9FF68A8FF68A8FF68A80000
            00F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF0000FF0000C08000BE
            5E88FFA1C9FFA1C9FF68A8FF68A8BE5E88800080F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0C08000FF0000C08000BE5E88FFA1C9FFA1C9FFA1C9FF68A8BE5E
            88800080F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0BE
            5E88FFA1C9FFA1C9FFA1C9FFA1C9BE5E88800080F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0BE5E88FFFFCCFFFFCCFFFFCCFFFF
            CCBE5E88F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0BE5E88BE5E88BE5E88BE5E88FF68A8F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0}
          ParentFont = False
        end
        object NextInsBtn: TSpeedButton
          Left = 470
          Top = 7
          Width = 110
          Height = 25
          Action = actNextIns
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object IntoInsBtn: TSpeedButton
          Left = 472
          Top = 40
          Width = 105
          Height = 26
          Action = actStepIns
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object AddWatchBtn: TSpeedButton
          Left = 122
          Top = 8
          Width = 103
          Height = 25
          Action = actAddWatch
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F0F0F0F
            0F0F0F0F0F0F0F0FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF0F0F0F00C04400A33B00A33B008D310F0F0FBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F0F0F94FF9400
            C04400B33F00A33B0F0F0FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF0F0F0F94FF9400C04400C04400A33B0F0F0FBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F0F0F0F0F0F0F0F0F0F0F0F94FF9400
            C04400C04400A33B0F0F0F0F0F0F0F0F0F0F0F0FBFBFBFBFBFBFBFBFBF353535
            00C04400A33B00A33B00A33B00C04400C04400C04400A33B00A33B00A33B00A3
            3B008D310F0F0FBFBFBFBFBFBF35353594FF9400C04400C04400C04400C04400
            C04400C04400C04400C04400C04400B33F00A33B0F0F0FBFBFBFBFBFBF353535
            94FF9400E05000C04400C04400C04400C04400C04400C04400C04400C04400C0
            4400A33B0F0F0FBFBFBFBFBFBF5B5B5BBFFFD694FF9494FF9494FF94BFFFD600
            C04400C04400C044BFFFD694FF9494FF9400C0440F0F0FBFBFBFBFBFBFBFBFBF
            5B5B5B35353535353535353594FF9400C04400C04400A33B0F0F0F0F0F0F0F0F
            0F0F0F0FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF35353594FF9400
            C04400C04400A33B0F0F0FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF35353594FF9400E05000C04400A33B0F0F0FBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF5B5B5BBFFFD694
            FF9494FF9400C0440F0F0FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF5B5B5B353535353535353535BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
          ParentFont = False
        end
        object ViewCPUBtn: TSpeedButton
          Left = 122
          Top = 40
          Width = 103
          Height = 26
          Action = actViewCPU
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EvaluateInput: TComboBox
          Left = 91
          Top = 72
          Width = 491
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          OnKeyPress = EvaluateInputKeyPress
        end
        object EvalOutput: TMemo
          Left = 4
          Top = 100
          Width = 578
          Height = 40
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
    end
    object FindSheet: TTabSheet
      Caption = 'Find results'
      ImageIndex = 30
      object FindOutput: TListView
        Left = 0
        Top = 0
        Width = 1039
        Height = 148
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsNone
        Columns = <
          item
            Width = 15
          end
          item
            Caption = 'Line'
            Width = 40
          end
          item
            Caption = 'Col'
            Width = 40
          end
          item
            Caption = 'Unit'
            Width = 320
          end
          item
            AutoSize = True
            Caption = 'Message'
          end>
        ColumnClick = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GridLines = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ViewStyle = vsReport
        OnAdvancedCustomDraw = FindOutputAdvancedCustomDraw
        OnAdvancedCustomDrawSubItem = FindOutputAdvancedCustomDrawSubItem
        OnDblClick = FindOutputDblClick
        OnDeletion = FindOutputDeletion
        OnKeyDown = FindOutputKeyDown
        OnSelectItem = FindOutputSelectItem
      end
    end
    object CloseSheet: TTabSheet
      Caption = 'Close'
      ImageIndex = 9
    end
  end
  object ToolbarDock: TControlBar
    Left = 0
    Top = 0
    Width = 1047
    Height = 56
    Align = alTop
    AutoDock = False
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    RowSize = 28
    TabOrder = 0
    OnClick = ToolbarDockClick
    OnContextPopup = ToolbarDockContextPopup
    object tbMain: TToolBar
      Left = 11
      Top = 2
      Width = 118
      Height = 24
      Caption = 'Main'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.MenuImages_Modern
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Wrapable = False
      object NewSourceBtn: TToolButton
        Left = 0
        Top = 0
        Action = actNewSource
      end
      object OpenBtn: TToolButton
        Left = 23
        Top = 0
        Action = actOpen
      end
      object SaveBtn: TToolButton
        Left = 46
        Top = 0
        Action = actSave
      end
      object SaveAllBtn: TToolButton
        Left = 69
        Top = 0
        Action = actSaveAll
      end
      object CloseBtn: TToolButton
        Left = 92
        Top = 0
        Action = actClose
      end
    end
    object tbCompile: TToolBar
      Left = 390
      Top = 2
      Width = 131
      Height = 24
      Caption = 'Compile and Run'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.MenuImages_Modern
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Wrapable = False
      object CompileBtn: TToolButton
        Left = 0
        Top = 0
        Action = actCompile
      end
      object RunBtn: TToolButton
        Left = 23
        Top = 0
        Action = actRun
      end
      object CompileAndRunBtn: TToolButton
        Left = 46
        Top = 0
        Action = actCompRun
      end
      object ToolButton2: TToolButton
        Left = 69
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 33
        Style = tbsSeparator
      end
      object DebugBtn: TToolButton
        Left = 77
        Top = 0
        Action = actDebug
      end
      object ToolButton3: TToolButton
        Left = 100
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 49
        Style = tbsSeparator
      end
      object StopBtn: TToolButton
        Left = 108
        Top = 0
        Action = actStopExecute
      end
    end
    object tbProject: TToolBar
      Left = 11
      Top = 30
      Width = 101
      Height = 24
      Caption = 'Project'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.MenuImages_Modern
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Wrapable = False
      object NewFileBtn: TToolButton
        Left = 0
        Top = 0
        Action = actNewFiles
      end
      object AddToProjectBtn: TToolButton
        Left = 23
        Top = 0
        Action = actProjectAdd
      end
      object RemoveFromProjectBtn: TToolButton
        Left = 46
        Top = 0
        Action = actProjectRemove
      end
      object ToolButton20: TToolButton
        Left = 69
        Top = 0
        Width = 8
        Caption = 'ToolButton20'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ProjectOptionsBtn: TToolButton
        Left = 77
        Top = 0
        Action = actProjectOptions
      end
    end
    object tbEdit: TToolBar
      Left = 142
      Top = 2
      Width = 235
      Height = 24
      Caption = 'Edit'
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.MenuImages_Modern
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Wrapable = False
      object UndoBtn: TToolButton
        Left = 0
        Top = 0
        Action = actUndo
      end
      object RedoBtn: TToolButton
        Left = 23
        Top = 0
        Action = actRedo
      end
      object ToolButton7: TToolButton
        Left = 46
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object CutBtn: TToolButton
        Left = 54
        Top = 0
        Action = actCut
      end
      object CopyBtn: TToolButton
        Left = 77
        Top = 0
        Action = actCopy
      end
      object PasteBtn: TToolButton
        Left = 100
        Top = 0
        Action = actPaste
      end
      object ToolButton10: TToolButton
        Left = 123
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 131
        Top = 0
        Action = actFind
      end
      object Insertbtn: TToolButton
        Left = 154
        Top = 0
        Action = actInsert
      end
      object ToolButton1: TToolButton
        Left = 177
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 21
        Style = tbsSeparator
      end
      object CommentBtn: TToolButton
        Left = 185
        Top = 0
        Action = actToggleComment
      end
      object AStyleBtn: TToolButton
        Left = 208
        Top = 0
        Action = actFormatCurrentFile
      end
    end
    object tbClasses: TToolBar
      Left = 125
      Top = 30
      Width = 642
      Height = 24
      Caption = 'tbClasses'
      EdgeInner = esNone
      EdgeOuter = esNone
      TabOrder = 5
      Wrapable = False
      object cmbClasses: TComboBox
        Left = 0
        Top = 0
        Width = 334
        Height = 22
        Style = csDropDownList
        Ctl3D = True
        DropDownCount = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        Sorted = True
        TabOrder = 0
        Text = '(globals)'
        OnChange = cmbClassesChange
        OnDropDown = cmbGenericDropDown
        Items.Strings = (
          '(globals)')
      end
      object cmbMembers: TComboBox
        Left = 334
        Top = 0
        Width = 307
        Height = 22
        Style = csDropDownList
        Ctl3D = True
        DropDownCount = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        Sorted = True
        TabOrder = 1
        OnChange = cmbMembersChange
        OnDropDown = cmbGenericDropDown
      end
    end
    object tbCompilers: TToolBar
      Left = 581
      Top = 2
      Width = 233
      Height = 24
      ButtonHeight = 23
      Caption = 'tbCompilers'
      EdgeInner = esNone
      EdgeOuter = esNone
      TabOrder = 4
      Wrapable = False
      object cmbCompilers: TComboBox
        Left = 0
        Top = 0
        Width = 230
        Height = 23
        Hint = 'Compiler Configuration'
        Style = csDropDownList
        Ctl3D = True
        DropDownCount = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = cmbCompilersChange
        OnDropDown = cmbGenericDropDown
      end
    end
  end
  object Statusbar: TStatusBar
    Left = 0
    Top = 446
    Width = 1047
    Height = 20
    Panels = <
      item
        Width = 480
      end
      item
        Width = 80
      end
      item
        Width = 80
      end>
    ParentFont = True
    UseSystemFont = False
  end
  object FileMonitor: TdevFileMonitor
    Left = 112
    Top = 152
    Width = 0
    Height = 0
  end
  object LeftPageControl: TPageControl
    Left = 0
    Top = 56
    Width = 193
    Height = 210
    ActivePage = LeftClassSheet
    Align = alLeft
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = dmMain.ProjectImage_NewLook
    ParentFont = False
    TabOrder = 1
    OnChange = LeftPageControlChange
    object LeftProjectSheet: TTabSheet
      Caption = 'Project'
      ImageIndex = -1
      object ProjectView: TTreeView
        Left = 0
        Top = 0
        Width = 185
        Height = 181
        Align = alClient
        Anchors = [akLeft, akTop, akBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        ChangeDelay = 1
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        HotTrack = True
        Images = dmMain.ProjectImage_NewLook
        Indent = 19
        MultiSelect = True
        MultiSelectStyle = [msControlSelect, msShiftSelect]
        ParentFont = False
        ReadOnly = True
        RightClickSelect = True
        SortType = stText
        TabOrder = 0
        OnClick = ProjectViewClick
        OnCompare = ProjectViewCompare
        OnContextPopup = ProjectViewContextPopup
        OnDragDrop = ProjectViewDragDrop
        OnDragOver = ProjectViewDragOver
        OnKeyDown = ProjectViewKeyDown
        OnKeyPress = ProjectViewKeyPress
        OnMouseDown = ProjectViewMouseDown
      end
    end
    object LeftClassSheet: TTabSheet
      Caption = 'Classes'
      ImageIndex = -1
      object ClassBrowser: TClassBrowser
        Left = 0
        Top = 0
        Width = 185
        Height = 181
        Align = alClient
        Images = dmMain.ClassImages
        ReadOnly = True
        Indent = 0
        TabOrder = 0
        PopupMenu = BrowserPopup
        BorderStyle = bsNone
        MultiSelectStyle = []
        ShowFilter = sfAll
        OnSelect = ClassBrowserSelect
        Parser = CppParser
        ItemImages.Globals = 0
        ItemImages.Classes = 1
        ItemImages.VariablePrivate = 2
        ItemImages.VariableProtected = 3
        ItemImages.VariablePublic = 4
        ItemImages.MethodPrivate = 5
        ItemImages.MethodProtected = 6
        ItemImages.MethodPublic = 7
        ItemImages.InheritedMethodProtected = 8
        ItemImages.InheritedMethodPublic = 10
        ItemImages.InheritedVariableProtected = 9
        ItemImages.InheritedVariablePublic = 11
        ShowInheritedMembers = False
        TabVisible = False
      end
    end
    object LeftDebugSheet: TTabSheet
      Caption = 'Debug'
      ImageIndex = -1
      object DebugView: TTreeView
        Left = 0
        Top = 0
        Width = 185
        Height = 181
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        ChangeDelay = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Images = dmMain.MenuImages_NewLook
        Indent = 19
        MultiSelectStyle = []
        ParentFont = False
        PopupMenu = DebugPopup
        ReadOnly = True
        RightClickSelect = True
        TabOrder = 0
        OnAdvancedCustomDrawItem = DebugViewAdvancedCustomDrawItem
        OnKeyDown = DebugViewKeyDown
      end
    end
  end
  object PageControlPanel: TPanel
    Left = 196
    Top = 56
    Width = 851
    Height = 210
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    OnResize = PageControlPanelResize
    object EditorPageControlSplitter: TSplitter
      Left = 851
      Top = 0
      Width = 0
      Height = 210
      Align = alRight
      ResizeStyle = rsUpdate
      Visible = False
      ExplicitLeft = 803
      ExplicitHeight = 279
    end
    object EditorPageControlLeft: TPageControl
      Left = 0
      Top = 0
      Width = 851
      Height = 210
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrack = True
      MultiLine = True
      ParentFont = False
      PopupMenu = EditorPopup
      TabOrder = 0
      Visible = False
      OnChange = EditorPageControlChange
      OnDragDrop = EditorPageControlDragDrop
      OnDragOver = EditorPageControlDragOver
      OnMouseDown = EditorPageControlMouseDown
      OnMouseMove = EditorPageControlMouseMove
      ExplicitLeft = -1
      ExplicitTop = -3
    end
    object EditorPageControlRight: TPageControl
      Left = 851
      Top = 0
      Width = 0
      Height = 210
      Align = alRight
      HotTrack = True
      MultiLine = True
      PopupMenu = EditorPopup
      TabOrder = 1
      Visible = False
      OnChange = EditorPageControlChange
      OnDragDrop = EditorPageControlDragDrop
      OnDragOver = EditorPageControlDragOver
      OnMouseDown = EditorPageControlMouseDown
      OnMouseMove = EditorPageControlMouseMove
    end
  end
  object MainMenu: TMainMenu
    AutoLineReduction = maManual
    Images = dmMain.MenuImages_Modern
    Left = 238
    Top = 79
    object FileMenu: TMenuItem
      Caption = '&File'
      OnClick = actFileMenuExecute
      object NewSourceFileItem: TMenuItem
        Tag = 2
        Action = actNewSource
      end
      object mnuNew: TMenuItem
        Caption = 'New...'
        ImageIndex = 1
        object NewprojectItem: TMenuItem
          Action = actNewProject
        end
        object N13: TMenuItem
          Caption = '-'
        end
        object NewTemplateItem: TMenuItem
          Action = actNewTemplate
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object NewClassItem: TMenuItem
          Action = actNewClass
        end
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object OpenprojectItem: TMenuItem
        Tag = 1
        Action = actOpen
      end
      object SaveUnitItem: TMenuItem
        Tag = 3
        Action = actSave
      end
      object SaveUnitAsItem: TMenuItem
        Action = actSaveAs
      end
      object SaveprojectasItem: TMenuItem
        Action = actSaveProjectAs
      end
      object SaveallItem: TMenuItem
        Action = actSaveAll
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object CloseItem: TMenuItem
        Tag = 4
        Action = actClose
      end
      object CloseprojectItem: TMenuItem
        Action = actCloseProject
      end
      object CloseAll2: TMenuItem
        Action = actCloseAll
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object Properties1: TMenuItem
        Action = actFileProperties
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ImportItem: TMenuItem
        Caption = '&Import'
        object ImportMSVisualCproject: TMenuItem
          Action = actImportMSVC
        end
        object ImportCBCproject: TMenuItem
          Caption = 'Code::Blocks project'
          Enabled = False
          Visible = False
          OnClick = ImportCBCprojectClick
        end
      end
      object ExportItem: TMenuItem
        Caption = '&Export'
        ImageIndex = 13
        object HTMLItem: TMenuItem
          Action = actExportHTML
        end
        object RTFItem: TMenuItem
          Action = actExportRTF
        end
        object TEXItem: TMenuItem
          Action = actExportTex
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object ProjecttoHTMLItem: TMenuItem
          Action = actExportProject
        end
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object PrintItem: TMenuItem
        Tag = 5
        Action = actPrint
      end
      object PrinterSetupItem: TMenuItem
        Action = actPrintSU
        GroupIndex = 9
      end
      object N21: TMenuItem
        Caption = '-'
        GroupIndex = 9
      end
      object N76: TMenuItem
        Caption = '-'
        GroupIndex = 9
      end
      object N11: TMenuItem
        Caption = '-'
        GroupIndex = 9
      end
      object ClearhistoryItem: TMenuItem
        Action = actHistoryClear
        GroupIndex = 9
      end
      object N3: TMenuItem
        Caption = '-'
        Enabled = False
        GroupIndex = 9
      end
      object ExitItem: TMenuItem
        Action = actExit
        GroupIndex = 9
      end
    end
    object EditMenu: TMenuItem
      Caption = '&Edit'
      OnClick = actFileMenuExecute
      object UndoItem: TMenuItem
        Tag = 6
        Action = actUndo
      end
      object RedoItem: TMenuItem
        Action = actRedo
      end
      object N4: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object CutItem: TMenuItem
        Action = actCut
        AutoHotkeys = maAutomatic
        AutoLineReduction = maAutomatic
      end
      object CopyItem: TMenuItem
        Action = actCopy
      end
      object PasteItem: TMenuItem
        Action = actPaste
      end
      object SelectallItem: TMenuItem
        Action = actSelectAll
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object InsertItem: TMenuItem
        Action = actInsert
      end
      object ToggleBookmarksItem: TMenuItem
        Action = actToggle
        Caption = 'X Toggle Bookmarks'
        Visible = False
      end
      object GotoBookmarksItem: TMenuItem
        Action = actGoto
        Caption = 'X Goto Bookmark'
        Visible = False
      end
      object ToggleBookmarks: TMenuItem
        Action = actToggleBookmark
      end
      object PrevBookmark: TMenuItem
        Action = actPrevBookmark
      end
      object NextBookmark: TMenuItem
        Action = actNextBookmark
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object Comment1: TMenuItem
        Action = actComment
      end
      object Uncomment1: TMenuItem
        Action = actUncomment
      end
      object ToggleComment1: TMenuItem
        Action = actToggleComment
      end
      object actCommentInlineSel1: TMenuItem
        Action = actToggleCommentInline
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object Indent1: TMenuItem
        Action = actIndent
      end
      object Unindent1: TMenuItem
        Action = actUnindent
      end
      object N64: TMenuItem
        Caption = '-'
      end
      object CollapseAll: TMenuItem
        Action = actCollapse
      end
      object UncollapseAll: TMenuItem
        Action = actUnCollapse
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object DuplicateLine1: TMenuItem
        Action = actDuplicateLine
      end
      object DeleteLine1: TMenuItem
        Action = actDeleteLine
      end
      object N68: TMenuItem
        Caption = '-'
      end
      object actMoveSelUp1: TMenuItem
        Action = actMoveSelUp
      end
      object actMoveSelDown1: TMenuItem
        Action = actMoveSelDown
      end
    end
    object SearchMenu: TMenuItem
      Caption = '&Search'
      OnClick = actFileMenuExecute
      object FindItem: TMenuItem
        Tag = 7
        Action = actFind
      end
      object FindinallfilesItem: TMenuItem
        Action = actFindAll
      end
      object ReplaceItem: TMenuItem
        Action = actReplace
      end
      object ReplaceAll1: TMenuItem
        Action = actReplaceAll
      end
      object N72: TMenuItem
        Caption = '-'
      end
      object actSearchAgain1: TMenuItem
        Action = actSearchAgain
      end
      object SearchAgainBackwards1: TMenuItem
        Action = actRevSearchAgain
      end
      object N75: TMenuItem
        Caption = '-'
      end
      object IncrementalSearch1: TMenuItem
        Action = actIncremental
      end
      object N7: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Gotofunction1: TMenuItem
        Action = actGotoFunction
      end
      object GotolineItem: TMenuItem
        Action = actGotoLine
      end
    end
    object ViewMenu: TMenuItem
      Caption = '&View'
      OnClick = actFileMenuExecute
      object ProjectManagerItem: TMenuItem
        Action = actProjectManager
        AutoCheck = True
      end
      object ToolbarsItem: TMenuItem
        Caption = '&Toolbars'
        ImageIndex = 36
        object ToolMainItem: TMenuItem
          AutoCheck = True
          Caption = '&Main'
          Checked = True
          OnClick = ToolbarDockClick
        end
        object ToolEditItem: TMenuItem
          AutoCheck = True
          Caption = 'Edit'
          Checked = True
          OnClick = ToolbarDockClick
        end
        object ToolCompileandRunItem: TMenuItem
          AutoCheck = True
          Caption = '&Compile and Run'
          Checked = True
          OnClick = ToolbarDockClick
        end
        object ToolCompilersItem: TMenuItem
          AutoCheck = True
          Caption = 'Compilers'
          Checked = True
          OnClick = ToolbarDockClick
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object ToolProjectItem: TMenuItem
          AutoCheck = True
          Caption = '&Project'
          Checked = True
          OnClick = ToolbarDockClick
        end
        object ToolClassesItem: TMenuItem
          AutoCheck = True
          Caption = 'Classes'
          Checked = True
          OnClick = ToolbarDockClick
        end
      end
      object StatusbarItem: TMenuItem
        Action = actStatusbar
        AutoCheck = True
      end
      object oDolist1: TMenuItem
        Action = actViewToDoList
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object MoveToOtherViewItem: TMenuItem
        Action = actSwapEditor
      end
      object SwapHeaderSourceItem: TMenuItem
        Action = actSwapHeaderSource
      end
      object N63: TMenuItem
        Caption = '-'
      end
      object FloatingPojectManagerItem: TMenuItem
        Caption = '&Floating Project Manager'
        OnClick = FloatingPojectManagerItemClick
      end
      object FloatingReportwindowItem: TMenuItem
        Caption = 'Floating &Report window'
        OnClick = FloatingReportwindowItemClick
      end
    end
    object ProjectMenu: TMenuItem
      Caption = '&Project'
      OnClick = actFileMenuExecute
      object NewunitinprojectItem: TMenuItem
        Tag = 2
        Action = actProjectNew
      end
      object AddtoprojectItem: TMenuItem
        Action = actProjectAdd
      end
      object RemovefromprojectItem: TMenuItem
        Action = actProjectRemove
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ProjectoptionsItem: TMenuItem
        Action = actProjectOptions
      end
    end
    object ExecuteMenu: TMenuItem
      Caption = 'E&xecute'
      OnClick = actFileMenuExecute
      object CompileItem: TMenuItem
        Tag = 8
        Action = actCompile
      end
      object RunItem: TMenuItem
        Tag = 9
        Action = actRun
      end
      object CompileandRunItem: TMenuItem
        Action = actCompRun
      end
      object RebuildallItem: TMenuItem
        Action = actRebuild
      end
      object N69: TMenuItem
        Caption = '-'
      end
      object SyntaxCheckItem: TMenuItem
        Action = actSyntaxCheck
        Visible = False
      end
      object SyntaxCheckCurrentFile1: TMenuItem
        Action = actSyntaxCheckFile
        Visible = False
      end
      object N10: TMenuItem
        Caption = '-'
        Visible = False
      end
      object mnuExecParameters: TMenuItem
        Action = actExecParams
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object Abortcompilation2: TMenuItem
        Action = actGotoBreakPoint
        ShortCut = 113
      end
      object oggleBreakpoint1: TMenuItem
        Action = actBreakPoint
      end
      object Abortcompilation1: TMenuItem
        Action = actDebug
      end
      object Programreset1: TMenuItem
        Action = actStopExecute
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object N49: TMenuItem
        Action = actProjectMakeFile
      end
      object CleanItem: TMenuItem
        Action = actClean
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object Profileanalysis1: TMenuItem
        Action = actProfile
      end
      object DeleteProfilingInformation: TMenuItem
        Action = actDeleteProfile
      end
    end
    object ToolsMenu: TMenuItem
      Caption = '&Tools'
      OnClick = actToolsMenuExecute
      object CompileroptionsItem: TMenuItem
        Tag = 11
        Action = actCompOptions
      end
      object EnvironmentoptionsItem: TMenuItem
        Tag = 12
        Action = actEnviroOptions
      end
      object EditorOptionsItem: TMenuItem
        Action = actEditorOptions
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object ConfiguredevShortcuts1: TMenuItem
        Action = actConfigdevShortcuts
      end
      object ConfiguretoolsItem: TMenuItem
        Action = actConfigTools
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object PackageManagerItem: TMenuItem
        Action = actPackageManager
        Visible = False
      end
      object RunTests: TMenuItem
        Action = actRunTests
        AutoCheck = True
        Visible = False
      end
    end
    object FormatMenu: TMenuItem
      Caption = 'AStyle'
      GroupIndex = 9
      object FormatCurrentFile1: TMenuItem
        Action = actFormatCurrentFile
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object actFormatOptions1: TMenuItem
        Action = actFormatOptions
      end
    end
    object WindowMenu: TMenuItem
      Caption = '&Window'
      GroupIndex = 9
      OnClick = actWindowMenuExecute
      object CloseAllItem: TMenuItem
        Action = actCloseAll
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object FullscreenmodeItem: TMenuItem
        Action = actFullScreen
        AutoCheck = True
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object PreviousItem: TMenuItem
        Action = actPrev
      end
      object NextItem: TMenuItem
        Action = actNext
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object ListItem: TMenuItem
        Caption = '&List...'
        OnClick = ListItemClick
      end
    end
    object HelpMenu: TMenuItem
      Caption = '&Help'
      GroupIndex = 9
      OnClick = actFileMenuExecute
      object HelpMenuItem: TMenuItem
        Action = actHelpDevcpp
      end
      object HelpGNUCLib: TMenuItem
        Action = actHelpCLib
      end
      object HelpFAQ: TMenuItem
        Action = actHelpCFAQ
      end
      object ShowTipsItem: TMenuItem
        Action = actShowTips
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object HelpHomepage: TMenuItem
        Action = actHelpHomepage
      end
      object Donate1: TMenuItem
        Action = actHelpDonate
      end
      object N50: TMenuItem
        Caption = '-'
      end
      object AboutDevCppItem: TMenuItem
        Tag = 18
        Action = actAbout
      end
    end
  end
  object EditorPopup: TPopupMenu
    Images = dmMain.MenuImages_Modern
    Left = 307
    Top = 80
    object GotoDeclEditor: TMenuItem
      Action = actGotoDeclEditor
    end
    object GotoDefineEditor: TMenuItem
      Action = actGotoImplEditor
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object Close1: TMenuItem
      Action = actClose
    end
    object CloseAll1: TMenuItem
      Action = actCloseAll
    end
    object Closeallexceptthis1: TMenuItem
      Action = actCloseAllButThis
    end
    object N77: TMenuItem
      Caption = '-'
    end
    object actOpenFolder1: TMenuItem
      Action = actOpenFolder
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object UndoPopItem: TMenuItem
      Action = actUndo
    end
    object RedoPopItem: TMenuItem
      Action = actRedo
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object CutPopItem: TMenuItem
      Action = actCut
    end
    object CopyPopItem: TMenuItem
      Action = actCopy
    end
    object PastePopItem: TMenuItem
      Action = actPaste
    end
    object SelectAllPopItem: TMenuItem
      Action = actSelectAll
    end
    object N22: TMenuItem
      Caption = '-'
    end
    object Swapheadersource1: TMenuItem
      Action = actSwapHeaderSource
    end
    object N57: TMenuItem
      Caption = '-'
    end
    object Movetootherview1: TMenuItem
      Action = actSwapEditor
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object InsertPopItem: TMenuItem
      Action = actInsert
    end
    object TogglebookmarksPopItem: TMenuItem
      Action = actToggle
      Caption = 'X Toggle Bookmarks'
      Visible = False
    end
    object GotobookmarksPopItem: TMenuItem
      Action = actGoto
      Caption = 'X Goto Bookmark'
      Visible = False
    end
    object oggleBookmarks1: TMenuItem
      Action = actToggleBookmark
    end
    object GotoPrevBookmark1: TMenuItem
      Action = actPrevBookmark
    end
    object GotoNextBookmark1: TMenuItem
      Action = actNextBookmark
    end
    object N41: TMenuItem
      Caption = '-'
    end
    object ToggleBreakpointPopupItem: TMenuItem
      Action = actBreakPoint
    end
    object AddWatchPopupItem: TMenuItem
      Action = actAddWatch
    end
    object N38: TMenuItem
      Caption = '-'
    end
    object AddToDoitem1: TMenuItem
      Action = actAddToDo
    end
    object N45: TMenuItem
      Caption = '-'
    end
    object mnuFileProps: TMenuItem
      Action = actFileProperties
    end
  end
  object UnitPopup: TPopupMenu
    Images = dmMain.MenuImages_Modern
    Left = 27
    Top = 151
    object RemoveFilefromprojectPopItem: TMenuItem
      Action = actUnitRemove
    end
    object RenamefilePopItem: TMenuItem
      Action = actUnitRename
    end
    object N30: TMenuItem
      Caption = '-'
    end
    object OpenPopItem: TMenuItem
      Action = actUnitOpen
    end
    object mnuOpenWith: TMenuItem
      Caption = 'Open with'
      OnClick = mnuOpenWithClick
    end
    object ClosefilePopItem: TMenuItem
      Action = actUnitClose
    end
    object N40: TMenuItem
      Caption = '-'
    end
    object mnuUnitProperties: TMenuItem
      Action = actFileProperties
    end
  end
  object ProjectPopup: TPopupMenu
    Images = dmMain.MenuImages_Modern
    Left = 27
    Top = 96
    object NewunitinprojectPopItem: TMenuItem
      Tag = 2
      Action = actProjectNew
    end
    object AddtoprojectPopItem: TMenuItem
      Action = actProjectAdd
    end
    object RemovefromprojectPopItem: TMenuItem
      Action = actProjectRemove
    end
    object N39: TMenuItem
      Caption = '-'
    end
    object Newfolder1: TMenuItem
      Action = actProjectNewFolder
    end
    object MenuItem18: TMenuItem
      Caption = '-'
    end
    object ProjectoptionsPopItem: TMenuItem
      Action = actProjectOptions
    end
    object N48: TMenuItem
      Caption = '-'
    end
    object CloseProject1: TMenuItem
      Action = actCloseProject
    end
  end
  object ActionList: TActionList
    Images = dmMain.MenuImages_Modern
    Left = 384
    Top = 84
    object actViewCPU: TAction
      Category = 'Debug'
      Caption = '&View CPU window'
      OnExecute = ViewCPUItemClick
      OnUpdate = actUpdateDebuggerRunningCPU
    end
    object actNewSource: TAction
      Tag = 1
      Category = 'File'
      Caption = '&Source File'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNewSourceExecute
    end
    object actNewFiles: TAction
      Category = 'File'
      Caption = '&New Files'
      ImageIndex = 1
      OnExecute = actNewFilesExecute
    end
    object actNewProject: TAction
      Tag = 2
      Category = 'File'
      Caption = '&Project...'
      ImageIndex = 2
      OnExecute = actNewProjectExecute
    end
    object actNewTemplate: TAction
      Tag = 4
      Category = 'File'
      Caption = '&Template...'
      ImageIndex = 3
      OnExecute = actNewTemplateExecute
      OnUpdate = actNewTemplateUpdate
    end
    object actNewClass: TAction
      Category = 'File'
      Caption = '&Class...'
      ImageIndex = 4
      OnExecute = actBrowserNewClassExecute
      OnUpdate = actBrowserNewClassUpdate
    end
    object actOpen: TAction
      Tag = 1
      Category = 'File'
      Caption = '&Open project or file...'
      ImageIndex = 5
      ShortCut = 16463
      OnExecute = actOpenExecute
    end
    object actHistoryClear: TAction
      Tag = 2
      Category = 'File'
      Caption = '&Clear History'
      ImageIndex = 15
      OnExecute = actHistoryClearExecute
    end
    object actSave: TAction
      Tag = 3
      Category = 'File'
      Caption = '&Save'
      ImageIndex = 6
      ShortCut = 16467
      OnExecute = actSaveExecute
      OnUpdate = actSaveUpdate
    end
    object actSaveAs: TAction
      Tag = 4
      Category = 'File'
      Caption = 'Save &As'
      ImageIndex = 7
      OnExecute = actSaveAsExecute
      OnUpdate = actSaveAsUpdate
    end
    object actSaveProjectAs: TAction
      Category = 'File'
      Caption = 'Save project as...'
      ImageIndex = 7
      OnExecute = actSaveProjectAsExecute
      OnUpdate = actUpdateProject
    end
    object actSaveAll: TAction
      Tag = 5
      Category = 'File'
      Caption = 'Save A&ll'
      ImageIndex = 8
      ShortCut = 24659
      OnExecute = actSaveAllExecute
      OnUpdate = actSaveAllUpdate
    end
    object actClose: TAction
      Tag = 7
      Category = 'File'
      Caption = '&Close'
      ImageIndex = 9
      ShortCut = 16471
      OnExecute = actCloseExecute
      OnUpdate = actUpdatePageCount
    end
    object actCloseAll: TAction
      Tag = 11
      Category = 'File'
      Caption = 'Close All'
      ShortCut = 24663
      OnExecute = actCloseAllExecute
      OnUpdate = actUpdatePageCount
    end
    object actCloseProject: TAction
      Tag = 6
      Category = 'File'
      Caption = 'Close Project'
      ImageIndex = 10
      OnExecute = actCloseProjectExecute
      OnUpdate = actUpdateProject
    end
    object actExportHTML: TAction
      Tag = 1
      Category = 'File'
      Caption = 'to &HTML'
      OnExecute = actExportHTMLExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actExportRTF: TAction
      Tag = 2
      Category = 'File'
      Caption = 'to &RTF'
      OnExecute = actExportRTFExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actExportTex: TAction
      Tag = 3
      Category = 'File'
      Caption = 'to &Tex'
      OnExecute = actExportTexExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actExportProject: TAction
      Tag = 3
      Category = 'File'
      Caption = '&Project to HTML'
      OnExecute = actExportProjectExecute
      OnUpdate = actUpdateProject
    end
    object actPrint: TAction
      Tag = 8
      Category = 'File'
      Caption = '&Print'
      ImageIndex = 14
      ShortCut = 16464
      OnExecute = actPrintExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actPrintSU: TAction
      Tag = 9
      Category = 'File'
      Caption = 'Prin&ter Setup...'
      OnExecute = actPrintSUExecute
    end
    object actExit: TAction
      Tag = 10
      Category = 'File'
      Caption = 'E&xit Dev-C++'
      ImageIndex = 16
      ShortCut = 32883
      OnExecute = actExitExecute
    end
    object actUndo: TAction
      Tag = 1
      Category = 'Edit'
      Caption = '&Undo'
      ImageIndex = 17
      ShortCut = 16474
      OnExecute = actUndoExecute
      OnUpdate = actUndoUpdate
    end
    object actRedo: TAction
      Tag = 2
      Category = 'Edit'
      Caption = '&Redo'
      ImageIndex = 18
      ShortCut = 16473
      OnExecute = actRedoExecute
      OnUpdate = actRedoUpdate
    end
    object actCut: TAction
      Tag = 3
      Category = 'Edit'
      Caption = 'C&ut'
      ImageIndex = 19
      ShortCut = 16472
      OnExecute = actCutExecute
      OnUpdate = actCutUpdate
    end
    object actCopy: TAction
      Tag = 4
      Category = 'Edit'
      Caption = '&Copy'
      ImageIndex = 20
      ShortCut = 16451
      OnExecute = actCopyExecute
      OnUpdate = actCopyUpdate
    end
    object actPaste: TAction
      Tag = 5
      Category = 'Edit'
      Caption = '&Paste'
      ImageIndex = 21
      ShortCut = 16470
      OnExecute = actPasteExecute
      OnUpdate = actPasteUpdate
    end
    object actSelectAll: TAction
      Tag = 6
      Category = 'Edit'
      Caption = '&Select All'
      ShortCut = 16449
      OnExecute = actSelectAllExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actFind: TAction
      Tag = 1
      Category = 'Search'
      Caption = '&Find'
      ImageIndex = 30
      ShortCut = 16454
      OnExecute = actFindExecute
      OnUpdate = actUpdateEmptyEditorFindForm
    end
    object actFindAll: TAction
      Tag = 2
      Category = 'Search'
      Caption = 'Fin&d in all Files'
      ShortCut = 24646
      OnExecute = actFindAllExecute
      OnUpdate = actUpdateEmptyEditorFindForm
    end
    object actReplace: TAction
      Tag = 3
      Category = 'Search'
      Caption = '&Replace'
      ImageIndex = 31
      ShortCut = 16466
      OnExecute = actReplaceExecute
      OnUpdate = actUpdateEmptyEditorFindForm
    end
    object actReplaceAll: TAction
      Category = 'Search'
      Caption = 'Replace All'
      ShortCut = 24658
      OnExecute = actReplaceAllExecute
      OnUpdate = actUpdateEmptyEditorFindForm
    end
    object actIncremental: TAction
      Category = 'Search'
      Caption = 'Incremental Search'
      ShortCut = 16457
      OnExecute = actIncrementalExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actGotoLine: TAction
      Tag = 5
      Category = 'Search'
      Caption = '&Go to line...'
      ImageIndex = 33
      ShortCut = 16455
      OnExecute = actGotoLineExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actProjectManager: TAction
      Category = 'View'
      AutoCheck = True
      Caption = '&Project Manager'
      ImageIndex = 35
      OnExecute = actProjectManagerExecute
    end
    object actStatusbar: TAction
      Category = 'View'
      AutoCheck = True
      Caption = '&Statusbar'
      OnExecute = actStatusbarExecute
    end
    object actProjectNew: TAction
      Tag = 1
      Category = 'Project'
      Caption = '&New Unit'
      ImageIndex = 37
      OnExecute = actProjectNewExecute
      OnUpdate = actUpdateProject
    end
    object actProjectAdd: TAction
      Tag = 2
      Category = 'Project'
      Caption = '&Add file...'
      ImageIndex = 38
      OnExecute = actProjectAddExecute
      OnUpdate = actUpdateProject
    end
    object actProjectRemove: TAction
      Tag = 3
      Category = 'Project'
      Caption = '&Remove file...'
      ImageIndex = 39
      OnExecute = actProjectRemoveExecute
      OnUpdate = actUpdateProject
    end
    object actProjectOptions: TAction
      Tag = 5
      Category = 'Project'
      Caption = '&Options...'
      ImageIndex = 40
      ShortCut = 16456
      OnExecute = actProjectOptionsExecute
      OnUpdate = actUpdateProject
    end
    object actProjectMakeFile: TAction
      Category = 'Project'
      Caption = 'Edit &Makefile'
      OnExecute = actProjectMakeFileExecute
      OnUpdate = actUpdateMakeFile
    end
    object actProjectSource: TAction
      Tag = 6
      Category = 'Project'
      Caption = 'Source'
      OnExecute = actProjectSourceExecute
      OnUpdate = actUpdateProject
    end
    object actCompile: TAction
      Tag = 1
      Category = 'Execute'
      Caption = '&Compile'
      Hint = 'Compile'
      ImageIndex = 41
      ShortCut = 120
      OnExecute = actCompileExecute
      OnUpdate = actCompileUpdate
    end
    object actRun: TAction
      Tag = 2
      Category = 'Execute'
      Caption = '&Run'
      Hint = 'Run'
      ImageIndex = 42
      ShortCut = 121
      OnExecute = actRunExecute
      OnUpdate = actRunUpdate
    end
    object actCompRun: TAction
      Tag = 3
      Category = 'Execute'
      Caption = 'Compile && Run'
      Hint = 'Compile and Run'
      ImageIndex = 43
      ShortCut = 122
      OnExecute = actCompRunExecute
      OnUpdate = actCompileRunUpdate
    end
    object actRebuild: TAction
      Tag = 4
      Category = 'Execute'
      Caption = 'R&ebuild All'
      Hint = 'Rebuild All'
      ImageIndex = 44
      ShortCut = 123
      OnExecute = actRebuildExecute
      OnUpdate = actCompileUpdate
    end
    object actClean: TAction
      Tag = 5
      Category = 'Execute'
      Caption = 'C&lean'
      Hint = 'Clean'
      ImageIndex = 15
      OnExecute = actCleanExecute
      OnUpdate = actCompileUpdate
    end
    object actDebug: TAction
      Tag = 6
      Category = 'Debug'
      Caption = '&Debug'
      ImageIndex = 46
      ShortCut = 116
      OnExecute = actDebugExecute
      OnUpdate = actCompileUpdate
    end
    object actCompOptions: TAction
      Tag = 1
      Category = 'Tools'
      Caption = '&Compiler Options...'
      ImageIndex = 59
      OnExecute = actCompOptionsExecute
    end
    object actEnviroOptions: TAction
      Tag = 2
      Category = 'Tools'
      Caption = '&Environment Options...'
      ImageIndex = 60
      OnExecute = actEnviroOptionsExecute
    end
    object actEditorOptions: TAction
      Tag = 3
      Category = 'Tools'
      Caption = 'E&ditor Options...'
      ImageIndex = 61
      OnExecute = actEditorOptionsExecute
    end
    object actConfigTools: TAction
      Tag = 4
      Category = 'Tools'
      Caption = 'Configure &Tools...'
      ImageIndex = 63
      OnExecute = actConfigToolsExecute
    end
    object actFullScreen: TAction
      Tag = 1
      Category = 'Window'
      AutoCheck = True
      Caption = '&Full screen mode'
      ImageIndex = 65
      ShortCut = 16506
      OnExecute = actFullScreenExecute
    end
    object actNext: TAction
      Tag = 2
      Category = 'Window'
      Caption = '&Next'
      ImageIndex = 67
      ShortCut = 16393
      OnExecute = actNextExecute
      OnUpdate = actUpdatePageCount
    end
    object actPrev: TAction
      Tag = 3
      Category = 'Window'
      Caption = '&Previous'
      ImageIndex = 66
      ShortCut = 24585
      OnExecute = actPrevExecute
      OnUpdate = actUpdatePageCount
    end
    object actAbout: TAction
      Category = 'Help'
      Caption = 'About...'
      ImageIndex = 70
      OnExecute = actAboutExecute
    end
    object actUnitRemove: TAction
      Tag = 1
      Category = 'Project'
      Caption = '&Remove from project'
      OnExecute = actUnitRemoveExecute
      OnUpdate = actUpdateProject
    end
    object actUnitRename: TAction
      Tag = 2
      Category = 'Project'
      Caption = 'Re&name file'
      ShortCut = 113
      OnExecute = actUnitRenameExecute
      OnUpdate = actUpdateProject
    end
    object actUnitHeader: TAction
      Tag = 5
      Category = 'Project'
      Caption = 'Open &Header'
      OnUpdate = actUpdateProject
    end
    object actUnitOpen: TAction
      Tag = 4
      Category = 'Project'
      Caption = '&Open'
      OnExecute = actUnitOpenExecute
      OnUpdate = actUpdateProject
    end
    object actUnitClose: TAction
      Tag = 3
      Category = 'Project'
      Caption = '&Close'
      OnExecute = actUnitCloseExecute
      OnUpdate = actUpdateProject
    end
    object actShowBars: TAction
      Category = 'View'
      Caption = 'Show Toolbars'
      ImageIndex = 36
      ShortCut = 16507
      OnExecute = actShowBarsExecute
    end
    object actBreakPoint: TAction
      Category = 'Debug'
      Caption = 'Toggle Breakpoint'
      ImageIndex = 55
      ShortCut = 115
      OnExecute = actBreakPointExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actAddWatch: TAction
      Category = 'Debug'
      Caption = '&Add watch'
      ImageIndex = 50
      OnExecute = actAddWatchExecute
      OnUpdate = actUpdatePageCount
    end
    object actEditWatch: TAction
      Category = 'Debug'
      Caption = '&Edit watch'
    end
    object actStepOver: TAction
      Category = 'Debug'
      Caption = '&Continue'
      ImageIndex = 54
      OnExecute = actStepOverExecute
      OnUpdate = actUpdateDebuggerRunning
    end
    object actWatchItem: TAction
      Category = 'Debug'
      Caption = '&Watch variables'
      OnUpdate = actUpdatePageorProject
    end
    object actRemoveWatch: TAction
      Category = 'Debug'
      Caption = '&Remove watch'
      ImageIndex = 51
      OnExecute = actRemoveWatchExecute
      OnUpdate = actUpdateDeleteWatch
    end
    object actStopExecute: TAction
      Category = 'Debug'
      Caption = 'Stop execution'
      ImageIndex = 47
      ShortCut = 117
      OnExecute = actStopExecuteExecute
      OnUpdate = actStopExecuteUpdate
    end
    object actSwapHeaderSource: TAction
      Category = 'Edit'
      Caption = '&Swap Header/Source'
      ShortCut = 16465
      OnExecute = actSwapHeaderSourceExecute
      OnUpdate = actUpdatePageCount
    end
    object actSyntaxCheck: TAction
      Category = 'Execute'
      Caption = '&Syntax Check'
      Hint = 'Syntax Check'
      ImageIndex = 45
      OnExecute = actSyntaxCheckExecute
      OnUpdate = actCompileUpdate
    end
    object actConfigdevShortcuts: TAction
      Category = 'Tools'
      Caption = 'Configure &Shortcuts'
      ImageIndex = 62
      OnExecute = actConfigdevShortcutsExecute
    end
    object actComment: TAction
      Category = 'Edit'
      Caption = 'Comment'
      ShortCut = 16574
      OnExecute = actCommentExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actUncomment: TAction
      Category = 'Edit'
      Caption = 'Uncomment'
      ShortCut = 16572
      OnExecute = actUncommentExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actToggleComment: TAction
      Category = 'Edit'
      Caption = 'Toggle Comment'
      ImageIndex = 26
      ShortCut = 16575
      OnExecute = actToggleCommentExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actToggleCommentInline: TAction
      Category = 'Edit'
      Caption = 'Toggle Inline Comment'
      ImageIndex = 27
      ShortCut = 16570
      OnExecute = actToggleCommentInlineExecute
      OnUpdate = actToggleCommentInlineUpdate
    end
    object actIndent: TAction
      Category = 'Edit'
      Caption = 'Indent'
      ImageIndex = 28
      ShortCut = 9
      OnExecute = actIndentExecute
      OnUpdate = actUpdateIndent
    end
    object actUnindent: TAction
      Category = 'Edit'
      Caption = 'Unindent'
      ImageIndex = 29
      ShortCut = 8201
      OnExecute = actUnindentExecute
      OnUpdate = actUpdateIndent
    end
    object actGotoFunction: TAction
      Category = 'Search'
      Caption = 'Goto function'
      ImageIndex = 34
      ShortCut = 24647
      OnExecute = actGotoFunctionExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actBrowserGotoDeclaration: TAction
      Category = 'ClassBrowser'
      Caption = 'Goto declaration'
      OnExecute = actBrowserGotoDeclarationExecute
      OnUpdate = actBrowserGotoDeclarationUpdate
    end
    object actBrowserGotoDefinition: TAction
      Category = 'ClassBrowser'
      Caption = 'Goto definition'
      OnExecute = actBrowserGotoDefinitionExecute
      OnUpdate = actBrowserGotoDefinitionUpdate
    end
    object actBrowserNewClass: TAction
      Category = 'ClassBrowser'
      Caption = 'New class'
      ImageIndex = 4
      OnExecute = actBrowserNewClassExecute
      OnUpdate = actBrowserNewClassUpdate
    end
    object actBrowserNewMember: TAction
      Category = 'ClassBrowser'
      Caption = 'New member function'
      ImageIndex = 72
      OnExecute = actBrowserNewMemberExecute
      OnUpdate = actBrowserNewMemberUpdate
    end
    object actBrowserNewVar: TAction
      Category = 'ClassBrowser'
      Caption = 'New variable'
      ImageIndex = 73
      OnExecute = actBrowserNewVarExecute
      OnUpdate = actBrowserNewVarUpdate
    end
    object actBrowserViewAll: TAction
      Category = 'ClassBrowser'
      Caption = 'All files'
      Checked = True
      OnExecute = actBrowserViewAllExecute
      OnUpdate = actBrowserViewAllUpdate
    end
    object actBrowserViewProject: TAction
      Category = 'ClassBrowser'
      Caption = 'Project files'
      OnExecute = actBrowserViewProjectExecute
      OnUpdate = actBrowserViewAllUpdate
    end
    object actBrowserViewCurrent: TAction
      Category = 'ClassBrowser'
      Caption = 'Current file'
      OnExecute = actBrowserViewCurrentExecute
      OnUpdate = actBrowserViewAllUpdate
    end
    object actSyntaxCheckFile: TAction
      Category = 'Execute'
      Caption = '&Syntax Check Current File'
      Hint = 'Syntax Check File'
      ImageIndex = 45
      ShortCut = 16504
      OnExecute = actSyntaxCheckFileExecute
      OnUpdate = actCompileUpdate
    end
    object actProfile: TAction
      Category = 'Execute'
      Caption = 'Profile analysis'
      Hint = 'Profiling'
      ImageIndex = 48
      OnExecute = actProfileExecute
      OnUpdate = actCompileRunUpdate
    end
    object actBrowserViewIncludes: TAction
      Category = 'ClassBrowser'
      Caption = 'System Headers'
      OnExecute = actBrowserViewIncludesExecute
      OnUpdate = actBrowserViewAllUpdate
    end
    object actBrowserAddFolder: TAction
      Category = 'ClassBrowser'
      Caption = 'Add folder'
    end
    object actBrowserRemoveFolder: TAction
      Category = 'ClassBrowser'
      Caption = 'Remove folder'
    end
    object actBrowserRenameFolder: TAction
      Category = 'ClassBrowser'
      Caption = 'Rename folder'
    end
    object actCloseAllButThis: TAction
      Category = 'File'
      Caption = 'Close All Except This'
      OnExecute = actCloseAllButThisExecute
    end
    object actFileProperties: TAction
      Category = 'File'
      Caption = 'Properties'
      OnExecute = actFilePropertiesExecute
      OnUpdate = actUpdatePageCount
    end
    object actViewToDoList: TAction
      Category = 'View'
      Caption = 'To-Do list...'
      OnExecute = actViewToDoListExecute
      OnUpdate = actUpdatePageorProject
    end
    object actAddToDo: TAction
      Category = 'Edit'
      Caption = 'Add To-Do item...'
      ShortCut = 16468
      OnExecute = actAddToDoExecute
      OnUpdate = actUpdatePageorProject
    end
    object actProjectNewFolder: TAction
      Category = 'Project'
      Caption = 'Add folder'
      OnExecute = actProjectNewFolderExecute
      OnUpdate = actUpdateProject
    end
    object actProjectRemoveFolder: TAction
      Category = 'Project'
      Caption = 'Remove folder'
      OnExecute = actProjectRemoveFolderExecute
      OnUpdate = actUpdateProject
    end
    object actProjectRenameFolder: TAction
      Category = 'Project'
      Caption = 'Rename folder'
      OnExecute = actProjectRenameFolderExecute
      OnUpdate = actUpdateProject
    end
    object actImportMSVC: TAction
      Category = 'File'
      Caption = 'MS Visual C++ project'
      OnExecute = actImportMSVCExecute
    end
    object actExecParams: TAction
      Category = 'Execute'
      Caption = 'Parameters...'
      OnExecute = actExecParamsExecute
    end
    object actShowTips: TAction
      Category = 'Help'
      Caption = 'Tips'
      OnExecute = actShowTipsExecute
    end
    object actAbortCompilation: TAction
      Category = 'Execute'
      Caption = 'Abort compilation'
      OnExecute = actAbortCompilationExecute
      OnUpdate = actAbortCompilationUpdate
    end
    object actBrowserShowInherited: TAction
      Category = 'ClassBrowser'
      Caption = 'Show inherited members'
      OnExecute = actBrowserShowInheritedExecute
    end
    object actAttachProcess: TAction
      Category = 'Debug'
      Caption = 'Attach to process...'
      OnExecute = actAttachProcessExecute
      OnUpdate = actAttachProcessUpdate
    end
    object actModifyWatch: TAction
      Category = 'Debug'
      Caption = '&Modify watch'
      OnExecute = actModifyWatchExecute
      OnUpdate = actModifyWatchUpdate
    end
    object actNextLine: TAction
      Category = 'Debug'
      Caption = '&Next line'
      ImageIndex = 53
      ShortCut = 118
      OnExecute = actNextLineExecute
      OnUpdate = actUpdateDebuggerRunning
    end
    object actStepLine: TAction
      Category = 'Debug'
      Caption = 'Into line'
      ImageIndex = 52
      ShortCut = 119
      OnExecute = actStepLineExecute
      OnUpdate = actUpdateDebuggerRunning
    end
    object actDeleteProfile: TAction
      Category = 'Execute'
      Caption = 'Delete Profiling information'
      Hint = 'Delete Profile'
      ImageIndex = 49
      OnExecute = actDeleteProfileExecute
      OnUpdate = actRunUpdate
    end
    object actGotoDeclEditor: TAction
      Category = 'ClassBrowser'
      Caption = 'Goto Declaration'
      OnExecute = actGotoImplDeclEditorExecute
    end
    object actGotoImplEditor: TAction
      Category = 'ClassBrowser'
      Caption = 'Goto Implementation'
      OnExecute = actGotoImplDeclEditorExecute
    end
    object actCollapse: TAction
      Category = 'Edit'
      Caption = 'Collapse All'
      OnExecute = actCollapseExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actUnCollapse: TAction
      Category = 'Edit'
      Caption = 'Uncollapse All'
      OnExecute = actUnCollapseExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actInsert: TAction
      Category = 'Edit'
      Caption = 'Insert'
      ImageIndex = 22
      OnExecute = actInsertExecute
      OnUpdate = actUpdatePageCount
    end
    object actToggle: TAction
      Category = 'Edit'
      Caption = 'Toggle Bookmarks'
      OnUpdate = actUpdatePageCount
    end
    object actGoto: TAction
      Category = 'Edit'
      Caption = 'Goto Bookmark'
      OnUpdate = actUpdatePageCount
    end
    object actNextIns: TAction
      Category = 'Debug'
      Caption = 'Next instruction'
      OnExecute = actNextInsExecute
      OnUpdate = actUpdateDebuggerRunning
    end
    object actStepIns: TAction
      Category = 'Debug'
      Caption = 'Into instruction'
      OnExecute = actStepInsExecute
      OnUpdate = actUpdateDebuggerRunning
    end
    object actSkipFunction: TAction
      Category = 'Debug'
      Caption = 'Skip function'
      OnExecute = actSkipFunctionExecute
      OnUpdate = actUpdateDebuggerRunning
    end
    object actMsgCut: TAction
      Category = 'Messages'
      Caption = 'Cut'
      ShortCut = 16472
      OnExecute = actMsgCutExecute
    end
    object actMsgCopy: TAction
      Category = 'Messages'
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = actMsgCopyExecute
    end
    object actMsgCopyAll: TAction
      Category = 'Messages'
      Caption = 'Copy All'
      ShortCut = 24643
      OnExecute = actMsgCopyAllExecute
    end
    object actMsgPaste: TAction
      Category = 'Messages'
      Caption = 'Paste'
      ShortCut = 16470
      OnExecute = actMsgPasteExecute
    end
    object actMsgSelAll: TAction
      Category = 'Messages'
      Caption = 'Select All'
      ShortCut = 16449
      OnExecute = actMsgSelAllExecute
    end
    object actMsgSaveAll: TAction
      Category = 'Messages'
      Caption = 'Save All'
      ShortCut = 16467
      OnExecute = actMsgSaveAllExecute
    end
    object actMsgClear: TAction
      Category = 'Messages'
      Caption = 'Clear'
      OnExecute = actMsgClearExecute
    end
    object actSearchAgain: TAction
      Category = 'Search'
      Caption = 'Search Again'
      ShortCut = 114
      OnExecute = actSearchAgainExecute
      OnUpdate = actUpdateEmptyEditorFindForm
    end
    object actRevSearchAgain: TAction
      Category = 'Search'
      Caption = 'Search Again Backwards'
      ShortCut = 8306
      OnExecute = actRevSearchAgainExecute
      OnUpdate = actUpdateEmptyEditorFindForm
    end
    object actDeleteLine: TAction
      Category = 'Edit'
      Caption = 'Delete Line'
      ShortCut = 16452
      OnExecute = actDeleteLineExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actDuplicateLine: TAction
      Category = 'Edit'
      Caption = 'Duplicate Line'
      ShortCut = 16453
      OnExecute = actDuplicateLineExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actMoveSelUp: TAction
      Category = 'Edit'
      Caption = 'actMoveSelUp'
      ShortCut = 16422
      OnExecute = actMoveSelUpExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actMoveSelDown: TAction
      Category = 'Edit'
      Caption = 'actMoveSelDown'
      ShortCut = 16424
      OnExecute = actMoveSelDownExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actCodeCompletion: TAction
      Category = 'ClassBrowser'
      Caption = 'Show Code Completion'
      ShortCut = 16416
      OnExecute = actCodeCompletionExecute
      OnUpdate = actCodeCompletionUpdate
    end
    object actPackageCheck: TAction
      Category = 'Tools'
      Caption = '&Check for Packages'
      ImageIndex = 63
    end
    object actPackageManager: TAction
      Category = 'Tools'
      Caption = 'Package Manager'
      ImageIndex = 63
      OnExecute = actPackageManagerExecute
    end
    object actHelpDevcpp: TAction
      Category = 'Help'
      Caption = 'Dev-C++ &Help'
      ImageIndex = 68
      ShortCut = 112
      OnExecute = actHelpDevcppExecute
    end
    object actShortenCompPaths: TAction
      Category = 'Execute'
      Caption = 'Shorten compiler paths'
      OnExecute = actShortenCompPathsExecute
    end
    object actSwapEditor: TAction
      Category = 'View'
      Caption = 'Move To Other View'
      ShortCut = 16461
      OnExecute = actSwapEditorExecute
      OnUpdate = actSwapEditorUpdate
    end
    object actOpenFolder: TAction
      Category = 'File'
      Caption = 'Open Containing Folder'
      ImageIndex = 5
      ShortCut = 16450
      OnExecute = actOpenFolderExecute
      OnUpdate = actUpdatePageCount
    end
    object actGotoBreakPoint: TAction
      Category = 'Debug'
      Caption = 'Goto Breakpoint'
      OnExecute = actGotoBreakPointExecute
      OnUpdate = actUpdateDebuggerRunning
    end
    object actFormatCurrentFile: TAction
      Category = 'AStyle'
      Caption = 'Format Current File'
      ImageIndex = 64
      ShortCut = 24641
      OnExecute = actFormatCurrentFileExecute
      OnUpdate = actUpdateEmptyEditor
    end
    object actFormatOptions: TAction
      Category = 'AStyle'
      Caption = 'Formatting Options'
      OnExecute = actFormatOptionsExecute
    end
    object actRunTests: TAction
      Category = 'Tests'
      Caption = 'Run Tests'
      ShortCut = 16497
      OnExecute = actRunTestsExecute
    end
    object actHelpCLib: TAction
      Category = 'Help'
      Caption = 'C/C++ Library'
      OnExecute = actHelpCLibExecute
    end
    object actHelpCFAQ: TAction
      Category = 'Help'
      Caption = 'C/C++ FAQ'
      OnExecute = actHelpCFAQExecute
    end
    object actHelpDonate: TAction
      Category = 'Help'
      Caption = 'Donate'
      OnExecute = actHelpDonateExecute
    end
    object actMsgTranslate: TAction
      Category = 'Messages'
      Caption = 'Translage Message'
      OnExecute = actMsgTranslateExecute
    end
    object actHelpHomepage: TAction
      Category = 'Help'
      Caption = 'Homepage'
      ImageIndex = 69
      OnExecute = actHelpHomepageExecute
    end
    object actToggleBookmark: TAction
      Category = 'Edit'
      Caption = 'Toggle Bookmark'
      ImageIndex = 23
      ShortCut = 16459
      OnExecute = actToggleBookmarkExecute
    end
    object actPrevBookmark: TAction
      Category = 'Edit'
      Caption = 'Goto Prev Bookmark'
      ImageIndex = 24
      ShortCut = 16469
      OnExecute = actPrevBookmarkExecute
    end
    object actNextBookmark: TAction
      Category = 'Edit'
      Caption = 'Goto Next Bookmark'
      ImageIndex = 25
      ShortCut = 16458
      OnExecute = actNextBookmarkExecute
    end
  end
  object MessagePopup: TPopupMenu
    Left = 643
    Top = 339
    object actMsgCut1: TMenuItem
      Action = actMsgCut
    end
    object MsgCopyItem: TMenuItem
      Action = actMsgCopy
    end
    object MsgCopyAllItem: TMenuItem
      Action = actMsgCopyAll
    end
    object MsgPasteItem: TMenuItem
      Action = actMsgPaste
    end
    object N74: TMenuItem
      Caption = '-'
    end
    object MsgSellAllItem: TMenuItem
      Action = actMsgSelAll
    end
    object N71: TMenuItem
      Caption = '-'
    end
    object MsgSaveAllItem: TMenuItem
      Action = actMsgSaveAll
    end
    object N73: TMenuItem
      Caption = '-'
    end
    object MsgClearItem: TMenuItem
      Action = actMsgClear
    end
  end
  object CppParser: TCppParser
    Enabled = True
    ParseLocalHeaders = False
    ParseGlobalHeaders = False
    OnStartParsing = CppParserStartParsing
    OnEndParsing = CppParserEndParsing
    Left = 148
    Top = 204
  end
  object CodeCompletion: TCodeCompletion
    ShowCount = 100
    Parser = CppParser
    Color = clWhite
    Width = 320
    Height = 240
    Enabled = True
    MinWidth = 256
    MinHeight = 128
    MaxWidth = 0
    MaxHeight = 0
    OnResize = CodeCompletionResize
    OnlyGlobals = False
    Left = 236
    Top = 148
  end
  object Shortcuts: TdevShortcuts
    Filename = 'shortcuts.ini'
    Left = 484
    Top = 152
  end
  object BrowserPopup: TPopupMenu
    Images = dmMain.MenuImages_Modern
    Left = 96
    Top = 100
    object mnuBrowserGotoDecl: TMenuItem
      Action = actBrowserGotoDeclaration
    end
    object mnuBrowserGotoImpl: TMenuItem
      Action = actBrowserGotoDefinition
      Default = True
    end
    object mnuBrowserSep1: TMenuItem
      Caption = '-'
    end
    object mnuBrowserNewClass: TMenuItem
      Action = actBrowserNewClass
    end
    object mnuBrowserNewMember: TMenuItem
      Action = actBrowserNewMember
    end
    object mnuBrowserNewVariable: TMenuItem
      Action = actBrowserNewVar
    end
    object N31: TMenuItem
      Caption = '-'
    end
    object mnuBrowserViewMode: TMenuItem
      Caption = 'View mode'
      object mnuBrowserViewAll: TMenuItem
        Action = actBrowserViewAll
        RadioItem = True
      end
      object mnuBrowserViewProject: TMenuItem
        Action = actBrowserViewProject
        RadioItem = True
      end
      object mnuBrowserViewCurrent: TMenuItem
        Action = actBrowserViewCurrent
        RadioItem = True
      end
      object mnuBrowserViewInclude: TMenuItem
        Action = actBrowserViewIncludes
        RadioItem = True
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object Showinheritedmembers1: TMenuItem
        Action = actBrowserShowInherited
      end
    end
  end
  object DebugPopup: TPopupMenu
    Images = dmMain.MenuImages_Modern
    OnPopup = DebugPopupPopup
    Left = 152
    Top = 100
    object AddwatchPop: TMenuItem
      Action = actAddWatch
    end
    object ModifyWatchPop: TMenuItem
      Action = actModifyWatch
    end
    object N67: TMenuItem
      Caption = '-'
    end
    object RemoveWatchPop: TMenuItem
      Action = actRemoveWatch
    end
    object ClearallWatchPop: TMenuItem
      Caption = '&Clear all'
      OnClick = ClearallWatchPopClick
    end
  end
  object DevCppDDEServer: TDdeServerConv
    OnExecuteMacro = DevCppDDEServerExecuteMacro
    Left = 484
    Top = 88
  end
  object CppPreprocessor: TCppPreprocessor
    Left = 108
    Top = 150
  end
  object CppTokenizer: TCppTokenizer
    Left = 84
    Top = 206
  end
  object FolderPopup: TPopupMenu
    Images = dmMain.MenuImages_Modern
    Left = 20
    Top = 200
    object Addfolder2: TMenuItem
      Action = actProjectNewFolder
    end
    object Renamefolder2: TMenuItem
      Action = actProjectRenameFolder
    end
    object Removefolder2: TMenuItem
      Action = actProjectRemoveFolder
    end
    object N44: TMenuItem
      Caption = '-'
    end
    object SourceFile1: TMenuItem
      Action = actProjectNew
    end
    object Addfile1: TMenuItem
      Action = actProjectAdd
    end
  end
end
