object frmProductionOrder: TfrmProductionOrder
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Production Order'
  ClientHeight = 535
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 65
    Align = alTop
    TabOrder = 0
    object lblProductionNo: TLabel
      Left = 576
      Top = 4
      Width = 67
      Height = 13
      Caption = 'Production No'
    end
    object lblAsOfdate: TLabel
      Left = 304
      Top = 4
      Width = 53
      Height = 13
      Caption = 'As Of Date'
    end
    object edtProductionNo: TEdit
      Left = 576
      Top = 23
      Width = 153
      Height = 21
      MaxLength = 11
      TabOrder = 1
      OnChange = edtProductionNoChange
      OnKeyUp = edtProductionNoKeyUp
    end
    object edtCheckSum: TEdit
      Left = 735
      Top = 23
      Width = 40
      Height = 21
      TabOrder = 2
    end
    object dtAsOfDate: TDateTimePicker
      Left = 304
      Top = 24
      Width = 186
      Height = 21
      Date = 42774.529229351850000000
      Format = 'dd/MM/yyyy'
      Time = 42774.529229351850000000
      DateFormat = dfLong
      TabOrder = 0
      OnKeyUp = dtAsOfDateKeyUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 488
    Width = 792
    Height = 47
    Align = alBottom
    TabOrder = 1
    object btnCreatePart: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = #3626#3619#3657#3634#3591
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000044983D373BAC358A2FC32BAC2AD0
        26B034B52F894094382F00000000000000000000000000000000000000000000
        0000000000000000000045953E2135B730B621DE1FFF1DE51BFF23DC21FF2AD0
        27FF2FC72CFF30C62CFE37A231A641923A080000000000000000000000000000
        0000000000003AAD352F2BCC27E923DB21FF2FC72BFF4BBD46FF60C65DFF36BA
        32FF37BA33FF38B734FF32C22EFF3D9C36B4469F3F0100000000000000000000
        000040A33A282DCA29EF31C42DFF35BD31FF93CC8FFFFDFEFDFFBEE8BCFF37B9
        33FF37B933FF37B933FF37B933FF35BA30FF41923A6400000000000000003BB0
        360332C12ECF35BD31FF36BB32FF36BB32FFA0D39DFFFFFFFFFFBDE9BCFF36BC
        32FF36BC32FF36BC32FF36BC32FF37C333FF42973BCD00000000000000003FA4
        39592EC92BFF33C030FF33C030FF33C030FFA0D39CFFFFFFFFFFBCEABBFF66CE
        63FF95DD93FFA5E3A3FF5FCD5CFF67D465FF439A3CFD3E8B37060000000033BF
        2EBB30C62DFF2FC62DFF34C331FF47BB42FFB1D9AEFFFFFFFFFFFAFDFAFFFFFF
        FFFFFFFFFFFFD8F3D7FF82D97FFF84DB81FF449B3DFF3F90381946913F142DC9
        2AFB32C22EFF85CD82FFC0DFBDFFF2F8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEDFAEDFFB4EAB3FF7CDA7AFF8CD889FF439B3CFE3E8B3706449A3D3625D7
        23FF36BF32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0F6DFFF8BDF
        88FF76DA73FF77DB74FF79DC77FF87D183FF409939E13E8B370246A03E3F25DD
        24FF5CC658FFDDF5DCFFBCEDBAFF9AE599FFBFDEBCFFFFFFFFFFDEF6DEFF7DDE
        7AFF7EDF7BFF7FE07DFFA7EAA6FF50BA4BFF3F92389900000000479F3F3A48E0
        46FE7DDE7BFF7EDF7CFF7FE07DFF80E07EFFB9DBB6FFFFFFFFFFE0F7DFFF84E3
        83FF86E484FF8BE589FF98DF95FF3BAA35FE3E8B373400000000479F3F0D56D7
        53F584E383FF86E484FF87E485FF88E586FFB9DBB6FFFFFFFFFFDBF7DAFF8BE7
        8AFF8CE88BFFB7EEB6FF40C13BFF3C95369D00000000000000000000000040C2
        3B9983E781FF8DE88BFF8EE88CFF8EE98DFFABDEA8FFC1F3C0FF9CED9BFF92EB
        91FFB0EFAFFF5AC856FF39A233D83E8B370F0000000000000000000000004693
        3F1448C844D487EC85FF94EC92FF94EC93FF95ED94FF96ED95FF9AEF99FFA5E3
        A3FF59B754FF3B9E35D73E8B371A000000000000000000000000000000000000
        000046923F0F3DAF38A552D44FFC6EE76CFF7CE37AFF7FD57CFF6BB966FF4399
        3CFA3F91389A3E8B371100000000000000000000000000000000000000000000
        00000000000000000000438E3C1F42903B6B41923A8A41923A883F8F38643E8B
        3721000000000000000000000000000000000000000000000000}
      TabOrder = 0
      Visible = False
    end
    object btnDeletePart: TBitBtn
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = #3621#3610
      Enabled = False
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      Visible = False
    end
    object btnEditPart: TBitBtn
      Left = 258
      Top = 8
      Width = 75
      Height = 25
      Caption = #3649#3585#3657#3652#3586
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000251613
        10C60F0C0AB80C0C0C8F15141498151414981514149815141498151414981514
        149815141498151414980C0C0C8F00000029000000000000000015120FC29588
        7BFF8F8378FFB9B0A8FFF1F0EEFFF1F0EEFFF1F0EEFFF1F0EEFFF1F0EEFFF1F0
        EEFFF1F0EEFFF1F0EEFFEAE8E6FF51504FEA0000000C000000000C0A08AE867B
        70FFD2CCC6FFB7ADA3FFC1BCB6FFE3E3E3FFE0E0E0FFDFDFDFFFFEFEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A3A1FF0000003500000000000000091311
        0FBBA59C93FFE1DDD9FFB6ACA2FFBAB4AFFFA69E97FFA2978CFFA1968BFFA9A2
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
        BBFFDFD9D4FFE5E1DDFFE4E0DCFF514E4BEC0000001B00000000000000000000
        0036AEADACFFEAE7E4FF979694FFB6B4B1FFACAAA7FFA8A6A4FFA2A09EFFDAD5
        CFFFE8E5E2FFE6E3E0FF656564EC000000310000000000000000000000000000
        0035ADACABFFE6E3DFFFE6E3DFFFE6E3DFFFE6E3DFFFE4E1DDFFDED9D4FFD3CC
        C4FFEBE9E7FF646464EB0000002E000000000000000000000000000000000000
        000C5B5B5BEAEFEEECFFF0EEECFFF0EEEBFFEEEBE9FFE7E3DFFFD4CDC6FFBDB3
        A8FF646464EB0000002F00000000000000000000000000000000000000000000
        0000000000290E0E0E8F17171798171717981717179816151598131211980C0B
        0A980000002E0000000000000000000000000000000000000000}
      TabOrder = 2
      Visible = False
    end
    object btnSavePart: TBitBtn
      Left = 619
      Top = 8
      Width = 75
      Height = 25
      Caption = #3610#3633#3609#3607#3638#3585
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000FAFAFA00FBFB
        FB00FAFBFB00FAFAF900E2D1D000DDC8CA00E8E9EA00E7E7E700E7E8E700E8E8
        E800E7E6E600E8E9E900E7DFDE00DBC7C600F1EFEF00F7F7F700C1898400BE7D
        7B00E7ECEC00E9E9E900E9E8E800E8E7E700E9ECEC00D8C4C300BC6D6D00CAA3
        A300FAF9F900F6F7F600CC969200CC8F8D00F6F9F900E4E4E400E3E3E300E3E2
        E200EDF0F000E4D4D400CD7E7E00C7969700FAF8F800CA938F00C88C8A00F2F6
        F600E1E0E000DEDEDE00DFDFDF00E0E0E000C97B7B00C8999A00F9F9F900CA94
        8F00C98C8A00F3F7F700E1E1E100E0DFDF00DFDEDE00EAECED00E2D1D100CA7B
        7B00C7999900CA8C8900F3F5F400E3E1E100E2E1E100EBECED00E1D0D000C798
        9A00CA8D8B00F7FBFB00F5F9F900F7FBFA00F7FAFA00F6FAFA00E2D4D400C899
        9900CB969200C4838000D7C1BF00DBBFBF00DEBDBC00DEBEBE00DCBFBF00DFC1
        C000DEBFBF00E1C4C400D0AEAD00CD807F00C7989800F5F6F400CC999400D486
        8600D2848400D0888600CB938F00CC928E00C9838300CC878500CD838200CA7F
        7E00D1838300C6979700F6F7F500CB989300D5898900D1838400C49A9A00D5BF
        BC00D4BBB600CCC0BF00C6BCBC00DCD5D300B9787800B0656400CB7E7E00C798
        9900CB979300D5888900CE818100C6A0A000C3878500B57D7800BABDBC00DBDB
        DC00F8FBFB00B8777700AE626200CA7D7D00C7999A00CD9A9500D6898900D083
        8300BF969400CD8D8C00C4898700DBDAD900F1F1F100B6757500AF646400CA7E
        7E00C79A9A00ECEDEB00BA888200CB7D7E00CB7C7C00A8828000BA9E9900D7BC
        BB00F0F0F000E9E9E800DCDDDD00AA676700A4565600C3737300BA898A00F0EE
        EE00D8D9D700AE8F8A0099575400A05E5B0096747200A7B0AE00B4B7B500B7B8
        B600B1B2B000AEB0AE0093605E008F535100985B5900B39D9B00D8DAD800D7D8
        D600DBEBDB00DCEBDB00D3DFCE00D2E0D000D7E4D400D6E5D500D4E2D200D4E2
        D300D5E5D500D6E5D600D7E5D600D5E3D300DCEBDC0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AAABACADAEAF
        B0B1B2B3B4B4B5B6B6AA9A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A98B8C8D8E8F90
        91929394959697988699577F8081828384850F868788898A011A647273747576
        7778797A7B7C7D7E011A6465666768696A6B6C6D6E6F7071011A5758595A5B5C
        5D595E5F6061626301261B4A4B4C4D4E4F5051525354555601300F2742434445
        4646471E43482E49011A1B313B3C3D2A3D3E213E3F403941011A0F313233342B
        2C3534363738393A01300F2728292A2B2B2C2D2B16042E2F01301B1C1D1E1F20
        20201F212223242500260F1011120A131313141516171819011A030405060708
        0709070A0B0C0D0E000000010101020101010101010101010000}
      TabOrder = 3
      OnClick = btnSavePartClick
    end
    object btnUpdatePart: TBitBtn
      Left = 339
      Top = 8
      Width = 75
      Height = 25
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000040000000F000000110000000B0000
        0004000000010000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000E431B10FF31130BE1190A05980304
        07420000000C0000000200000000000000000000000000000000000000000000
        0001000000050000000A0000000D0000001B673B2ADEB8C7D2FF7789A3FF2240
        84FF040F34980000001000000002000000000000000000000000000000020000
        000B1122386522416DB3284F86D593AAC9FD837175FF869AB3FFC7E3F6FF1B65
        B9FF286BABFF0412379A0000001000000002000000000000000000000008274A
        76B86295C5FF9CC0DFFFC7DCEEFFCEEEF9FF9BC4D2FF458BC6FFDDFEFDFF4DB4
        E6FF1B67BAFF2E73B1FF051439980000000D00000002000000000000000B3C72
        B1FFB9EAF9FFD3F0FBFFEBF9FFFFB9EBFAFFB1E3F0FF68A7CFFF439FD5FFDDFE
        FDFF55C0ECFF1D6ABCFF337BB6FF06163B920000000C000000020000000B3F75
        B3FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF91DEF3FFA7D6EAFF649DCBFF48A5
        D8FFDDFEFDFF5DCBF2FF206EBFFF3883BCFF07193E900000000A0000000A437A
        B6FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF82CCECFF9CBFE2FF649D
        CCFF4BABDAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FF071B418E00000009467E
        B9FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF71A7DCFF9BBD
        E1FF6AA7D3FF4EAFDDFFDDFEFDFF6BDEFBFF287AC5FF15438DFF000000094883
        BCFFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF6EA1
        DAFFA8D1EDFF659AC8FF51B2DFFFDDFEFDFF4CA7D7FF0F2B4F88000000084C86
        C0FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84
        CFFF80C0EBFF9BB5D4FF1B456389327FBFFF163A5A8600000005000000074F8B
        C2FFB9EAF9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84
        CFFF58ACE6FF6F98C6FF0000000A00000004000000030000000100000006518E
        C4FFC8EFFBFFE9FAFFFFE5F9FFFFDDF7FFFFD6F4FEFFCBF0FCFFABD9F4FF8FC7
        EDFF76C0EDFF437BB7FF00000007000000000000000000000000000000055493
        C7FFE8FAFFFFE5F9FFFFDFF7FFFFD8F4FEFFCFF2FEFFC6EEFEFFBDEBFDFFB3E8
        FCFFABE5FBFF4780BAFF0000000600000000000000000000000000000003406E
        93BD82B3DAFFA2CAE6FFB0D6EDFFBAE1F3FFC8EFFEFFABDAF2FF95CBEAFF82BC
        E1FF67A2D1FF38638EC300000004000000000000000000000000000000010000
        00031B2F3E5330536F913C688CB44579A5D45491C6FF4377A2D4386388B52C4D
        6B92182A3B540000000400000001000000000000000000000000}
      TabOrder = 4
      Visible = False
    end
    object btnClose: TBitBtn
      Left = 700
      Top = 8
      Width = 75
      Height = 25
      Caption = #3611#3636#3604
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000070000
        0006000000020000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000008F522ADB5531
        1A9A0000000A0000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000009E5F34EACB9D
        6AFF55321B9B0000000A00000002000000000000000000000003000000080000
        0005000000010000000000000000000000000000000000000000835332C3E4C1
        8FFFCB9D66FF673D22B7100A052800000008000000040000000A9F5F34EC2E19
        0B650000000B00000003000000010000000000000000000000004B321F73D1A6
        7BFFF5D498FFD7AE75FF9E673DF85C371FA42D1B0F59140C0736B16F40FFAF78
        48FF623619B90F08042B0000000600000002000000000000000009060414A878
        50E8F1DAAEFFF5D699FFF2D295FFCFA671FFB48152FFA66D42FFB47749FFF1D0
        94FFD3A972FF985E35F3392010710000000C0000000300000001000000033A2A
        1C57CFA67DFFFAE7BDFFF6DCA3FFF6DA9DFFF4D79DFFF4D79CFFF4D69AFFF3D5
        9AFFF2D498FFEDCB92FFBD8B5AFF734627C3140C073100000004000000000000
        0004543E2B77D2AC84FFF5E3C1FFFBEDC8FFFBF0CAFFFBF2CDFFFCF2CCFFFBF0
        C8FFF9EABEFFF6E0AEFFF7E2B7FFE8CDA8FFA9764BEC00000007000000000000
        0001000000043E2F2259B18962E7DABD9CFFECDCC2FFF6EDD8FFFEFBE9FFFDF6
        D3FFFCF7D9FFF9F3DDFFD6B590FF8F6846C81B130D3200000003000000000000
        00000000000000000002070504104F3E2C6E8B6C4EBAAB845EE1B48157FFFEFB
        E5FFEBDBC2FFBF976FF34B392870000000090000000300000000000000000000
        000000000000000000000000000100000002000000050000000BBB8B62FFD9BC
        9BFF886A4DB515100C2600000005000000010000000000000000000000000000
        000000000000000000000000000000000000000000000706040EAF8863E94235
        275D000000060000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000040000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 5
      OnClick = btnCloseClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 792
    Height = 423
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    ExplicitTop = 66
    object grdProductionOrder: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle12
      Styles.Selection = cxStyle9
      Styles.Header = cxStyle18
      object grdProductionOrderColumn1: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'Set_Type'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.CellMerging = True
        Width = 97
      end
      object grdProductionOrderColumn2: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'Set_Code'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.CellMerging = True
        Width = 89
      end
      object grdProductionOrderColumn4: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'Set_Description'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.CellMerging = True
        Width = 295
      end
      object grdProductionOrderColumn3: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'Set_Value'
        Width = 372
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = grdProductionOrder
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 744
    Top = 64
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