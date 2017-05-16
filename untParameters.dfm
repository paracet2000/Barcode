object frmParameters: TfrmParameters
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #3614#3634#3619#3634#3617#3636#3648#3605#3629#3619#3660
  ClientHeight = 310
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 49
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 266
    Width = 571
    Height = 44
    Align = alBottom
    TabOrder = 1
    object btnOkParameter: TBitBtn
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = #3605#3585#3621#3591
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
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 571
    Height = 217
    Align = alClient
    TabOrder = 2
    OnEnter = cxGrid1Enter
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBTableView1CellClick
      OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
      DataController.DataSource = DM.dStoreInfo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnAddValueItems = False
      Filtering.ColumnMRUItemsList = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #3614#3634#3619#3634#3617#3636#3648#3605#3629#3619#3660
        DataBinding.FieldName = 'Parameter_Name'
        Options.Focusing = False
        Width = 105
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #3611#3619#3632#3648#3616#3607#3586#3657#3629#3617#3641#3621
        DataBinding.FieldName = 'Data_Type'
        Options.Focusing = False
        Width = 102
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #3619#3634#3618#3585#3634#3619
        DataBinding.FieldName = 'Description'
        Options.Focusing = False
        Width = 157
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #3588#3656#3634
        DataBinding.FieldName = 'Value'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Width = 235
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #3623#3633#3609#3607#3637#3656
        DataBinding.FieldName = 'DateParameter'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.Kind = ckDateTime
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
