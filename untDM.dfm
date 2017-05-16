object DM: TDM
  OldCreateOrder = False
  Height = 558
  Width = 1042
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'production2'
    Username = 'api'
    Server = '192.168.1.100'
    LoginPrompt = False
    BeforeConnect = UniConnection1BeforeConnect
    Left = 40
    Top = 32
    EncryptedPassword = 'B3FF90FF89FF9AFFCEFFCDFFCCFFCBFFCAFFC9FF'
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 136
    Top = 32
  end
  object Select: TDataSetProvider
    DataSet = qSelect
    OnDataRequest = SelectDataRequest
    Left = 256
    Top = 32
  end
  object Update: TDataSetProvider
    DataSet = qUpdate
    Left = 336
    Top = 32
  end
  object GetDate: TDataSetProvider
    DataSet = qGetDate
    Left = 408
    Top = 32
  end
  object qSelect: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      '')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 256
    Top = 104
  end
  object qUpdate: TUniQuery
    Connection = UniConnection1
    Options.TrimVarChar = True
    Left = 336
    Top = 104
  end
  object qGetDate: TUniQuery
    Connection = UniConnection1
    Options.TrimVarChar = True
    Left = 408
    Top = 104
  end
  object qLogin: TUniQuery
    Connection = UniConnection1
    Options.TrimVarChar = True
    Left = 40
    Top = 208
  end
  object dLogin: TUniDataSource
    DataSet = qLogin
    Left = 40
    Top = 256
  end
  object store_InsertInventory: TUniStoredProc
    StoredProcName = 'Store_Insert_Inventory'
    SQL.Strings = (
      'CALL Store_Insert_Inventory()')
    Connection = UniConnection1
    Left = 504
    Top = 104
    CommandStoredProcName = 'Store_Insert_Inventory'
  end
  object qPopup: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 112
    Top = 208
  end
  object dPopup: TUniDataSource
    DataSet = qPopup
    Left = 112
    Top = 256
  end
  object qReport: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 168
    Top = 208
  end
  object dReport: TUniDataSource
    DataSet = qReport
    Left = 168
    Top = 256
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=VFPOLEDB.1;Data Source=\\Sunan-pc\acc-billing\base\0001' +
      '\1111\account\maindata.dbc;Mode=Read;User ID="";Mask Password=Fa' +
      'lse;Cache Authentication=False;Encrypt Password=False;Collating ' +
      'Sequence=MACHINE;DSN="";DELETED=True;CODEPAGE=874;MVCOUNT=16384;' +
      'ENGINEBEHAVIOR=90;TABLEVALIDATE=3;REFRESH=5;VARCHARMAPPING=False' +
      ';ANSI=True;REPROCESS=5;'
    LoginPrompt = False
    Provider = 'VFPOLEDB.1'
    Left = 40
    Top = 320
  end
  object qFoxCustomer: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'Select cus_id,cus_code,cus_name from  customer  order by cus_cod' +
        'e')
    Left = 112
    Top = 320
  end
  object qFoxPart: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select prd_id,prd_code,prd_name from  service  order by prd_code')
    Left = 168
    Top = 320
  end
  object dFoxCustomer: TDataSource
    DataSet = qFoxCustomer
    Left = 112
    Top = 376
  end
  object dFoxPart: TDataSource
    DataSet = qFoxPart
    Left = 168
    Top = 376
  end
  object qFoxQuery: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT H.DATE,H.DOC_NO,CUS.CUS_CODE,CUS.CUS_NAME,D.PRD_CODE,D.DE' +
        'SC FROM SVOHEAD H INNER JOIN SVODESC D ON H.DOC_ID=D.DOC_ID LEFT' +
        ' JOIN CUSTOMER CUS ON H.CUS_ID=CUS.CUS_ID WHERE H.DATE <= {28/10' +
        '/2016} AND H.DATE >={28/10/2016}')
    Left = 224
    Top = 320
  end
  object dFoxQuery: TDataSource
    DataSet = qFoxQuery
    Left = 224
    Top = 376
  end
  object qCheckIn: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 232
    Top = 208
  end
  object dCheckin: TUniDataSource
    DataSet = qCheckIn
    Left = 232
    Top = 256
  end
  object qUsers: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 288
    Top = 208
  end
  object dUsers: TUniDataSource
    DataSet = qUsers
    Left = 288
    Top = 256
  end
  object qSetting: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 344
    Top = 208
  end
  object dSetting: TUniDataSource
    DataSet = qSetting
    Left = 344
    Top = 256
  end
  object qPart: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Set names tis620; Select * from Parts order by 1')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 400
    Top = 208
  end
  object dPart: TUniDataSource
    DataSet = qPart
    Left = 400
    Top = 256
  end
  object qCustomer: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Set names tis620; Select * from Customers order by 1')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 448
    Top = 208
  end
  object dCustomer: TUniDataSource
    DataSet = qCustomer
    Left = 448
    Top = 256
  end
  object dSelect: TUniDataSource
    DataSet = qSelect
    Left = 256
    Top = 152
  end
  object qShortPart: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 288
    Top = 328
  end
  object dShortPath: TUniDataSource
    DataSet = qShortPart
    Left = 288
    Top = 376
  end
  object qPrevious: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Set names tis620; Select * from Customers order by 1')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 504
    Top = 208
  end
  object dPrevious: TUniDataSource
    DataSet = qPrevious
    Left = 504
    Top = 256
  end
  object stInsertLogs: TUniStoredProc
    StoredProcName = 'Insert_Logs'
    SQL.Strings = (
      
        'CALL Insert_Logs(:Part_No, :Lot_No, :Serial_No, :User_Id, :Activ' +
        'ity, :Base_Station)')
    Connection = UniConnection1
    Left = 40
    Top = 376
    ParamData = <
      item
        DataType = ftString
        Name = 'Part_No'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Lot_No'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Serial_No'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'User_Id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftMemo
        Name = 'Activity'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'Base_Station'
        ParamType = ptInput
        Size = 10
        Value = nil
      end>
    CommandStoredProcName = 'Insert_Logs'
  end
  object qStoreInfo: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 344
    Top = 328
  end
  object dStoreInfo: TUniDataSource
    DataSet = qStoreInfo
    Left = 344
    Top = 376
  end
  object stReport: TUniStoredProc
    Connection = UniConnection1
    Left = 560
    Top = 212
  end
  object dReportStore: TUniDataSource
    DataSet = stReport
    Left = 560
    Top = 264
  end
  object stGlobal: TUniStoredProc
    Connection = UniConnection1
    Left = 592
    Top = 108
  end
  object qReportImage: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Set names tis620; Select * from Parts order by 1')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 400
    Top = 328
  end
  object dReportImage: TUniDataSource
    DataSet = qReportImage
    Left = 400
    Top = 376
  end
  object qRevert: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Set names tis620; Select * from Parts order by 1')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 456
    Top = 328
  end
  object dRevert: TUniDataSource
    DataSet = qRevert
    Left = 456
    Top = 376
  end
  object stPrdOrder: TUniStoredProc
    StoredProcName = 'SelectActivePrdOrder'
    SQL.Strings = (
      'CALL SelectActivePrdOrder()')
    Connection = UniConnection1
    Left = 512
    Top = 324
    CommandStoredProcName = 'SelectActivePrdOrder'
    StoredProcIsQuery = True
  end
  object dstPrdOrder: TUniDataSource
    DataSet = stPrdOrder
    Left = 512
    Top = 376
  end
  object dSource: TUniDataSource
    DataSet = stGlobal
    Left = 592
    Top = 168
  end
  object dusingPrdOrder: TUniDataSource
    DataSet = stUsingPrdOrder
    Left = 576
    Top = 376
  end
  object stUsingPrdOrder: TUniStoredProc
    StoredProcName = 'SelectPrdOrder'
    SQL.Strings = (
      'CALL SelectPrdOrder(:CusId, :PartNo)')
    Connection = UniConnection1
    Left = 576
    Top = 324
    ParamData = <
      item
        DataType = ftString
        Name = 'CusId'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PartNo'
        ParamType = ptInput
        Size = 20
        Value = nil
      end>
    CommandStoredProcName = 'SelectPrdOrder'
    StoredProcIsQuery = True
  end
  object qNodes: TUniQuery
    Connection = UniConnection1
    Left = 32
    Top = 440
  end
  object dNodes: TUniDataSource
    DataSet = qNodes
    Left = 32
    Top = 496
  end
  object qTableName: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Left = 80
    Top = 440
  end
  object dTableName: TUniDataSource
    DataSet = qTableName
    Left = 80
    Top = 496
  end
  object stSearch: TUniStoredProc
    Connection = UniConnection1
    Left = 656
    Top = 108
  end
  object dSearch: TUniDataSource
    DataSet = stSearch
    Left = 656
    Top = 168
  end
  object stBalance: TUniStoredProc
    Connection = UniConnection1
    Left = 656
    Top = 220
  end
  object dBalance: TUniDataSource
    DataSet = stBalance
    Left = 656
    Top = 280
  end
  object qPartDetail: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Set names tis620; Select * from Parts order by 1')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 696
    Top = 8
    object qPartDetailPart_Image: TBlobField
      FieldName = 'Part_Image'
      BlobType = ftGraphic
    end
  end
  object dPartDetail: TUniDataSource
    DataSet = qPartDetail
    Left = 696
    Top = 56
  end
  object stPrOrder: TUniStoredProc
    Connection = UniConnection1
    Left = 152
    Top = 436
  end
  object dPrOrder: TUniDataSource
    DataSet = stPrOrder
    Left = 152
    Top = 496
  end
  object qPattern: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      '')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 216
    Top = 440
  end
  object dPattern: TUniDataSource
    DataSet = qPattern
    Left = 216
    Top = 488
  end
  object qPrdItems: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      '')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 272
    Top = 448
  end
  object dprdItems: TUniDataSource
    DataSet = qPrdItems
    Left = 272
    Top = 496
  end
  object qPrdProcess: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      '')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 328
    Top = 448
  end
  object dPrdprocess: TUniDataSource
    DataSet = qPrdProcess
    Left = 328
    Top = 496
  end
  object qPrdMapping: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      '')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 400
    Top = 448
  end
  object dPrdMapping: TUniDataSource
    DataSet = qPrdMapping
    Left = 400
    Top = 496
  end
  object qPrdItemsGrid: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      '')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 456
    Top = 448
  end
  object dPrdItemsGrid: TUniDataSource
    DataSet = qPrdItemsGrid
    Left = 456
    Top = 496
  end
  object qPrdMappingGrid: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      '')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 536
    Top = 448
  end
  object dPrdmappinggrid: TUniDataSource
    DataSet = qPrdMappingGrid
    Left = 536
    Top = 496
  end
  object dProductionOrder: TUniDataSource
    DataSet = stProductionOrder
    Left = 648
    Top = 384
  end
  object stProductionOrder: TUniStoredProc
    Connection = UniConnection1
    Left = 648
    Top = 332
    StoredProcIsQuery = True
  end
  object db_Production_Order: TppDBPipeline
    DataSource = dProductionOrder
    UserName = 'db_Production_Order'
    Left = 720
    Top = 320
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = db_Production_Order
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
    Left = 720
    Top = 256
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'db_Production_Order'
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
  object db_prodcution_Process: TppDBPipeline
    DataSource = dprocessdoc
    UserName = 'db_Production_Order1'
    Left = 720
    Top = 392
  end
  object dprocessdoc: TUniDataSource
    DataSet = qPrdProcessDoc
    Left = 608
    Top = 264
  end
  object qPrdProcessDoc: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'Set names tis620; Select * from Parts order by 1')
    CachedUpdates = True
    Options.TrimVarChar = True
    Left = 608
    Top = 216
  end
end
