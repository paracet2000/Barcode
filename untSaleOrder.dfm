object frmSaleOrder: TfrmSaleOrder
  Left = 0
  Top = 0
  Caption = 'Sale Order'
  ClientHeight = 492
  ClientWidth = 547
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
    Top = 451
    Width = 547
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 349
    ExplicitWidth = 471
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 97
      Top = 6
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 57
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = -6
    object Label1: TLabel
      Left = 208
      Top = 5
      Width = 68
      Height = 13
      Caption = 'Between Date'
    end
    object edtCode: TLabeledEdit
      Left = 48
      Top = 19
      Width = 121
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Code'
      MaxLength = 20
      TabOrder = 0
      OnKeyPress = edtCodeKeyPress
    end
    object DateTimePicker1: TDateTimePicker
      Left = 208
      Top = 19
      Width = 121
      Height = 21
      Date = 42671.552929178250000000
      Format = 'dd/MM/yyyy'
      Time = 42671.552929178250000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 335
      Top = 19
      Width = 121
      Height = 21
      Date = 42671.552929178250000000
      Format = 'dd/MM/yyyy'
      Time = 42671.552929178250000000
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 462
      Top = 17
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Search'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000025110F
        0CC60B0907B80707078F0D0C0C980D0C0C980D0C0C980D0C0C980D0C0C980D0C
        0C980D0C0C980D0C0C980707078F000000290000000000000000100E0BC29588
        7BFF8F8378FFB9B0A8FFF1F0EEFFF1F0EEFFF1F0EEFFF1F0EEFFF1F0EEFFF1F0
        EEFFF1F0EEFFF1F0EEFFEAE8E6FF4A4948EA0000000C00000000080705AE867B
        70FFD2CCC6FFB7ADA3FFC1BCB6FFE3E3E3FFE0E0E0FFDFDFDFFFFEFEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A3A1FF0000003500000000000000090E0C
        0BBBA59C93FFE1DDD9FFB6ACA2FFBAB4AFFFA69E97FFA2978CFFA1968BFFA9A2
        9BFFD1D0CEFFF1F1F1FFFEFEFEFFA8A7A5FF0000003600000000000000000000
        00368B8580FFBAB0A6FFD4CEC7FF9A8D7EFFAA9E89FFC8C0B0FFCCC3B3FFBCAE
        95FF978B7CFFE2DEDBFFFDFDFDFFA9A8A7FF0000003600000000000000000000
        0036AAA9A8FFE0DCD8FFA29586FFA9986CFFC6BA91FFD0C7A9FFD1C9AAFFC5B9
        90FFAA986CFFA4998CFFF7F6F5FFAAA9A8FF0000003600000000000000000000
        0036ABAAA9FFD6D1CCFFA0906EFFAD9C60FFB9AC78FFBFB485FFBBB082FFBAAE
        79FFAB9A5EFFA99874FFD9D4D0FFABAAA9FF0000003600000000000000000000
        0036ACABA9FFD1CBC4FFA18D5AFFB7A45CFFB8A866FFB8A869FFB9A969FFBBA9
        63FFB6A154FFA7925DFFD4CEC8FFABA9A8FF0000003600000000000000000000
        0036ACABAAFFDAD5D0FFAB9A6EFFC7B778FFCABB80FFCBBD85FFC9BA7FFFC4B3
        71FFB4A157FFA89462FFDBD5D1FFA7A5A3FF0000003600000000000000000000
        0036ADACABFFEBE9E6FFB4A892FFC5B990FFD7CDA8FFD9D0AAFFD8CFAAFFD8CE
        A8FFC2B58CFFBAAF9AFFE4E0DCFF9C9894FF0000003600000000000000000000
        0036ADACABFFF1EFEDFFCFCBC8FFB9AC91FFD3C8A7FFF2EEE1FFF2EEE0FFD2C6
        A4FFBAAD93FFC9C4BFFFD5CEC7FF817971FF0000003600000000000000000000
        0036ADADACFFEDEBE9FFB9B7B5FFC3C1BEFFB8B1A8FFA59B86FFA89D87FFCCC5
        BBFFDFD9D4FFE5E1DDFFE4E0DCFF4B4845EC0000001B00000000000000000000
        0036AEADACFFEAE7E4FF979694FFB6B4B1FFACAAA7FFA8A6A4FFA2A09EFFDAD5
        CFFFE8E5E2FFE6E3E0FF5D5D5DEC000000310000000000000000000000000000
        0035ADACABFFE6E3DFFFE6E3DFFFE6E3DFFFE6E3DFFFE4E1DDFFDED9D4FFD3CC
        C4FFEBE9E7FF5C5C5CEB0000002E000000000000000000000000000000000000
        000C545454EAEFEEECFFF0EEECFFF0EEEBFFEEEBE9FFE7E3DFFFD4CDC6FFBDB3
        A8FF5C5C5CEB0000002F00000000000000000000000000000000000000000000
        0000000000290808088F0E0E0E980E0E0E980E0E0E980D0D0D980B0B0A980707
        06980000002E0000000000000000000000000000000000000000}
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 547
    Height = 394
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 471
    ExplicitHeight = 292
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLineColor = clTeal
      Styles.Background = cxStyle14
      Styles.Content = cxStyle10
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle14
      Styles.FilterBox = cxStyle23
      Styles.Selection = cxStyle9
      Styles.Header = cxStyle18
      Styles.StyleSheet = GridTableViewStyleSheetDevExpress
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Date'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditFormat = 'dd/MM/yyyy'
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soDescending
        Width = 170
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Document'
        DataBinding.FieldName = 'DOC_NO'
        HeaderAlignmentHorz = taCenter
        SortIndex = 1
        SortOrder = soDescending
        Width = 88
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'cus_code'
        Width = 91
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'cus_name'
        Width = 96
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Part'
        DataBinding.FieldName = 'prd_code'
        SortIndex = 2
        SortOrder = soAscending
        Width = 88
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Part Name'
        DataBinding.FieldName = 'desc'
        Width = 131
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 440
    Top = 32
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.FilterBox = cxStyle6
      Styles.Inactive = cxStyle11
      Styles.IncSearch = cxStyle12
      Styles.Selection = cxStyle15
      Styles.Footer = cxStyle7
      Styles.Group = cxStyle8
      Styles.GroupByBox = cxStyle9
      Styles.Header = cxStyle10
      Styles.Indicator = cxStyle13
      Styles.Preview = cxStyle14
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle16
      Styles.Content = cxStyle19
      Styles.ContentEven = cxStyle20
      Styles.ContentOdd = cxStyle21
      Styles.Inactive = cxStyle22
      Styles.IncSearch = cxStyle23
      Styles.Selection = cxStyle25
      Styles.CaptionRow = cxStyle17
      Styles.CardBorder = cxStyle18
      Styles.RowCaption = cxStyle24
      BuiltIn = True
    end
  end
end
