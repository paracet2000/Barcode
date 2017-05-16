object frmPurchase: TfrmPurchase
  Left = 0
  Top = 0
  Caption = 'Purchase'
  ClientHeight = 495
  ClientWidth = 1062
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 495
    Align = alLeft
    TabOrder = 0
    inline FraPurChasingRequest1: TFraPurChasingRequest
      Left = 1
      Top = 1
      Width = 725
      Height = 493
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 493
      inherited Panel1: TPanel
        Height = 493
        ExplicitHeight = 493
        inherited Panel2: TPanel
          inherited edtDesc: TEdit
            Left = 150
            ExplicitLeft = 150
          end
          inherited btnAdd: TBitBtn
            OnClick = FraPurChasingRequest1btnAddClick
          end
          inherited edtCode: TEdit
            Left = 23
            ExplicitLeft = 23
          end
        end
        inherited Panel3: TPanel
          Top = 453
          ExplicitTop = 453
          inherited pnlRight: TPanel
            inherited btnShow: TBitBtn
              OnClick = FraPurChasingRequest1btnShowClick
            end
          end
        end
        inherited grdPR: TcxGrid
          Height = 189
          ExplicitHeight = 189
          inherited grdPurchasingRequest: TcxGridTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '# '#3619#3634#3618#3585#3634#3619
                Kind = skCount
                Column = FraPurChasingRequest1.colCode
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = FraPurChasingRequest1.colAmount
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = FraPurChasingRequest1.colDiscount
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = FraPurChasingRequest1.colVat
              end>
          end
        end
        inherited Panel4: TPanel
          Top = 366
          ExplicitTop = 366
        end
      end
      inherited cxStyleRepository1: TcxStyleRepository
        Left = 88
        Top = 8
        PixelsPerInch = 96
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 731
    Top = 0
    Width = 8
    Height = 495
    HotZoneClassName = 'TcxMediaPlayer9Style'
  end
  object Panel2: TPanel
    Left = 739
    Top = 0
    Width = 323
    Height = 495
    Align = alClient
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 73
      Width = 321
      Height = 421
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object grdOrder: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = grdOrderCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        Styles.ContentEven = FraPurChasingRequest1.cxStyle2
        Styles.ContentOdd = FraPurChasingRequest1.cxStyle3
        Styles.Footer = FraPurChasingRequest1.cxStyle4
        Styles.Header = FraPurChasingRequest1.cxStyle1
        object colOrderDate: TcxGridDBColumn
          Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
          DataBinding.FieldName = 'Head_Date'
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soDescending
        end
        object colOrderNo: TcxGridDBColumn
          Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
          DataBinding.FieldName = 'Head_No'
          GroupIndex = 1
          SortIndex = 1
          SortOrder = soAscending
          Width = 88
        end
        object colOrderStatus: TcxGridDBColumn
          Caption = #3626#3606#3634#3609#3632
          DataBinding.FieldName = 'Record_Status'
          Width = 60
        end
        object colCus_Code: TcxGridDBColumn
          Caption = #3612#3641#3657#3586#3634#3618
          DataBinding.FieldName = 'Cus_Code'
          Width = 60
        end
        object colCus_Name: TcxGridDBColumn
          Caption = #3594#3639#3656#3629#3612#3641#3657#3586#3634#3618
          DataBinding.FieldName = 'Cus_Name'
          Width = 100
        end
        object colPartCode: TcxGridDBColumn
          Caption = 'Code'
          DataBinding.FieldName = 'Part_No'
          Width = 60
        end
        object colPartName: TcxGridDBColumn
          Caption = #3594#3636#3657#3609#3626#3656#3623#3609
          DataBinding.FieldName = 'Part_Name'
          Width = 150
        end
        object colQnty: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609
          DataBinding.FieldName = 'Qnty'
          Width = 100
        end
        object colUnit: TcxGridDBColumn
          Caption = #3627#3609#3656#3623#3618#3609#3633#3610
          DataBinding.FieldName = 'Order_Unit'
          Width = 60
        end
        object colDiscount: TcxGridDBColumn
          Caption = #3626#3656#3623#3609#3621#3604
          DataBinding.FieldName = 'Discount'
        end
        object colAmount: TcxGridDBColumn
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          DataBinding.FieldName = 'Amount'
        end
        object colVat: TcxGridDBColumn
          Caption = #3616#3634#3625#3637
          DataBinding.FieldName = 'Vat'
        end
        object colSubtotal: TcxGridDBColumn
          Caption = #3619#3623#3617#3619#3634#3588#3634
          DataBinding.FieldName = 'Subtotal'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = grdOrder
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 321
      Height = 72
      Align = alTop
      TabOrder = 1
      object Label2: TLabel
        Left = 5
        Top = 19
        Width = 38
        Height = 13
        Caption = #3592#3634#3585#3623#3633#3609#3607#3637#3656
      end
      object Label1: TLabel
        Left = 149
        Top = 19
        Width = 31
        Height = 13
        Caption = #3606#3638#3591#3623#3633#3609#3607#3637#3656
      end
      object dtFromDate: TDateTimePicker
        Left = 5
        Top = 40
        Width = 121
        Height = 21
        Date = 42796.000000000000000000
        Time = 42796.000000000000000000
        TabOrder = 0
      end
      object dtToDate: TDateTimePicker
        Left = 149
        Top = 40
        Width = 121
        Height = 21
        Date = 42796.000000000000000000
        Time = 42796.000000000000000000
        TabOrder = 1
      end
      object btnPrintPR: TBitBtn
        Left = 271
        Top = 39
        Width = 46
        Height = 25
        Caption = 'Print'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000030000000C000000120000001400000014000000150000
          0015000000140000000D00000003000000000000000000000000000000000000
          00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
          78FFBE8978FF876356C30000000B000000000000000000000000000000030000
          000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
          E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
          42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
          72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
          6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
          76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
          71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
          35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
          78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
          DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
          7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
          32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
          86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
          42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
          8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
          DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
          84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
          E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
          2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
          E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
          0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
          E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
          00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
          EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
          00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
          FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
          000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
          91FFCDA391FF98786BC100000004000000000000000000000000}
        TabOrder = 2
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 528
    Top = 256
    object mnuWarning: TMenuItem
      Caption = 'Stock Warning'
      OnClick = mnuWarningClick
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = grdOrder
        HitTypes = []
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 888
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 792
    Top = 208
    object D1: TMenuItem
      Caption = 'Print'
      OnClick = E1Click
    end
    object D2: TMenuItem
      Caption = 'Design'
      OnClick = E1Click
    end
    object E1: TMenuItem
      Caption = 'Export'
      OnClick = E1Click
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 832
    Top = 176
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM.dPrOrder
    UserName = 'DBPipeline1'
    Left = 968
    Top = 176
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'FireDACSession'
    DataSettings.AllowEditSQL = False
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    Position = poScreenCenter
    Report = ppReport1
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 504
    Top = 256
  end
end
