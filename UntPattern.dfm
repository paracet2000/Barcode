object FramePattern: TFramePattern
  Left = 0
  Top = 0
  Width = 802
  Height = 451
  TabOrder = 0
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 802
    Height = 161
    Align = alTop
  end
  object lblPartInternal: TLabel
    Left = 203
    Top = 58
    Width = 245
    Height = 13
    Caption = '.'
  end
  object lblPart: TLabel
    Left = 16
    Top = 58
    Width = 33
    Height = 13
    Caption = #3594#3636#3657#3609#3626#3656#3623#3609
  end
  object lblCustomer: TLabel
    Left = 16
    Top = 5
    Width = 26
    Height = 13
    Caption = #3621#3641#3585#3588#3657#3634
  end
  object lblCustomerId: TLabel
    Left = 199
    Top = 5
    Width = 4
    Height = 13
    Caption = '.'
  end
  object Label1: TLabel
    Left = 16
    Top = 104
    Width = 79
    Height = 13
    Caption = #3592#3635#3609#3623#3609#3594#3636#3657#3609#3605#3656#3629#3649#3614#3655#3588
  end
  object Label2: TLabel
    Left = 199
    Top = 104
    Width = 91
    Height = 13
    Caption = #3592#3635#3609#3623#3609#3649#3614#3655#3588#3605#3656#3629#3585#3621#3656#3629#3591
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 161
    Width = 802
    Height = 249
    Align = alClient
    TabOrder = 7
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    ExplicitLeft = 203
    ExplicitTop = 200
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DM.dPattern
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object colCustCode: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'Cus_Code'
        GroupIndex = 0
        Width = 91
      end
      object colCusId: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'Cus_Id'
        Visible = False
        GroupIndex = 1
        Width = 92
      end
      object colCustName: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'Cus_Name'
        Width = 109
      end
      object colPartNo: TcxGridDBColumn
        Caption = 'Part No'
        DataBinding.FieldName = 'Part_No'
        Width = 95
      end
      object colPartName: TcxGridDBColumn
        Caption = 'Part Name'
        DataBinding.FieldName = 'Part_Name'
        Width = 92
      end
      object colPackSize: TcxGridDBColumn
        Caption = 'Pack Size'
        DataBinding.FieldName = 'Pack_Size'
        Width = 166
      end
      object colPackPerbox: TcxGridDBColumn
        Caption = 'Pack Per Box'
        DataBinding.FieldName = 'Pack_Size'
        Width = 139
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 410
    Width = 802
    Height = 41
    Align = alBottom
    TabOrder = 8
    ExplicitWidth = 504
    object Panel2: TPanel
      Left = 432
      Top = 1
      Width = 369
      Height = 39
      Align = alRight
      TabOrder = 0
      object btnSave: TBitBtn
        Left = 8
        Top = 5
        Width = 75
        Height = 25
        Caption = #3610#3633#3609#3607#3638#3585
        Enabled = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000A0000000F0000001000000010000000100000001100000011000000110000
          001100000011000000100000000B000000030000000000000000000000094633
          2CC160453BFF644A41FFB87D4EFFB97A4AFFB47444FFB06C3DFFA76436FFA764
          36FF583D36FF5B3E37FF3B2821C20000000A00000000000000000000000D6F53
          47FF947869FF6A4F46FFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
          6AFF5D413AFF684B41FF543931FF0000000E00000000000000000000000C7357
          4AFF987D6EFF70564BFFFFFFFFFFF6EFEAFFF6EFE9FFF6EEE9FFF5EEE9FFF6EE
          E8FF62473FFF715348FF573B33FF0000000F00000000000000000000000B785C
          4EFF9D8273FF765C50FFFFFFFFFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
          EAFF684E44FF72554BFF593E35FF0000000E00000000000000000000000A7C60
          50FFA28777FF7B6154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF1F1
          F1FF89756EFF8A7269FF5F443BFF0000000C0000000000000000000000097F63
          54FFA78E7DFF977A6AFF967969FF957967FF84695CFF705548FF8F7B73FF0B67
          37FF295D3CFF81746BFF806C63FF0000000C0000000000000000000000088367
          57FFAB9382FF634A41FF614740FF5E463DFF5C443CFF5B433BFF776761FF0A67
          37FF2AAF7FFF106137FF5B6352FF00000016000000030000000000000007866A
          59FFAF9788FF674E44FFF3EAE4FFE8D9CEFFE9DFD7FFE5DBD5FFD8CFC9FF0B6A
          3BFF4EDCB2FF27C48DFF0C7746FF022E179C000201190000000500000006886D
          5CFFB39C8CFF6B5248FFF4ECE6FFEBE3DCFF47916BFF046B38FF046B38FF056B
          38FF3AD7A5FF37D6A2FF32D3A0FF199966FF044A26D5000D063A000000058B70
          5EFFB7A091FF70564DFFF6EFEAFFEBE4DFFF167E4EFF84EDD1FF52E1B6FF4DDF
          B3FF48DDAFFF44DBACFF3FD9A9FF3AD7A6FF32BE8EFF0F6A3FF6000000048E72
          60FFBBA595FF755A50FFF7F1ECFFF1EEEBFF188252FFB8F7E7FFB4F5E6FFAFF4
          E4FF85EDD2FF52E1B7FF4DDFB3FF5DE2BBFF66D0AEFF16794CF6000000026A56
          49BF8F7361FF795E54FF765D52FFAFA19CFF3B8963FF0D814DFF0D804DFF0D80
          4CFF95F1DAFF65E7C2FF83ECCFFF57B28FFF065932D2010E0832000000010000
          000200000003000000030000000300000005000000090000000C000000140D7B
          4BF2AEF6E5FF94E5CEFF339167FD033A1F910001010F00000003000000000000
          0000000000000000000000000000000000000000000000000000000000070F7F
          4EF287CBB3FF106D42E6011C0F4C000000060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000051081
          52F1034B2AAE0007041700000003000000010000000000000000}
        TabOrder = 0
        OnClick = btnSaveClick
      end
      object BitBtn2: TBitBtn
        Left = 89
        Top = 5
        Width = 75
        Height = 25
        Caption = #3621#3610
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object btnAdd: TBitBtn
        Left = 170
        Top = 5
        Width = 75
        Height = 25
        Caption = #3648#3614#3636#3656#3617
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000080000000C0000
          000E0000000D0000000800000003000000010000000000000000000000020000
          000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
          48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
          43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
          8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
          5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
          5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
          62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
          FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
          66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
          EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
          69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
          EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
          6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
          F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
          71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
          D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
          77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
          74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
          7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
          FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
          82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
          F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
          67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927063BF000000020000000000000000}
        TabOrder = 2
        OnClick = btnAddClick
      end
      object btnEdit: TBitBtn
        Left = 251
        Top = 5
        Width = 75
        Height = 25
        Caption = #3649#3585#3657#3652#3586
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000080000000C0000
          000E0000000D0000000800000003000000010000000000000000000000020000
          000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
          48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
          43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
          8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
          5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
          5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
          62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
          FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
          66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
          EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
          69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
          EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
          6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
          F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
          71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
          D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
          77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
          74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
          7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
          FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
          7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
          82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
          82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
          F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
          85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
          89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
          67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
          87FFC79887FFC89886FF927063BF000000020000000000000000}
        TabOrder = 3
        OnClick = btnEditClick
      end
    end
  end
  object edtCustomer: TDBEdit
    Tag = 1
    Left = 16
    Top = 24
    Width = 177
    Height = 21
    DataField = 'Cus_Code'
    DataSource = DM.dPattern
    TabOrder = 0
    OnChange = edtCustomerChange
    OnEnter = edtCustomerEnter
    OnKeyUp = edtCustomerKeyUp
  end
  object edtCustomerName: TDBEdit
    Tag = 2
    Left = 199
    Top = 24
    Width = 250
    Height = 21
    DataField = 'Cus_Name'
    DataSource = DM.dPattern
    TabOrder = 1
    OnChange = edtCustomerNameChange
    OnClick = edtCustomerNameClick
    OnEnter = edtCustomerNameEnter
    OnKeyUp = edtCustomerNameKeyUp
  end
  object edtPartCode: TDBEdit
    Tag = 1
    Left = 16
    Top = 77
    Width = 177
    Height = 21
    DataField = 'Part_No'
    DataSource = DM.dPattern
    TabOrder = 2
    OnChange = edtPartCodeChange
    OnClick = edtPartCodeChange
    OnEnter = edtPartCodeEnter
    OnKeyUp = edtPartCodeKeyUp
  end
  object edtPartName: TDBEdit
    Tag = 2
    Left = 199
    Top = 77
    Width = 250
    Height = 21
    DataField = 'Part_Name'
    DataSource = DM.dPattern
    TabOrder = 3
    OnChange = edtPartNameChange
    OnClick = edtPartNameClick
    OnEnter = edtPartNameEnter
    OnKeyUp = edtPartNameKeyUp
  end
  object edtPackSize: TDBEdit
    Left = 16
    Top = 122
    Width = 177
    Height = 21
    DataField = 'Pack_Size'
    DataSource = DM.dPattern
    TabOrder = 5
  end
  object edtPackPerBox: TDBEdit
    Left = 199
    Top = 122
    Width = 249
    Height = 21
    DataField = 'Box_Size'
    DataSource = DM.dPattern
    TabOrder = 6
  end
  object edtCusId: TDBEdit
    Left = 472
    Top = 122
    Width = 97
    Height = 21
    DataField = 'cus_id'
    DataSource = DM.dPattern
    TabOrder = 9
    Visible = False
  end
  object pnlSelect: TPanel
    Left = 511
    Top = -43
    Width = 288
    Height = 216
    TabOrder = 4
    Visible = False
    object dbgSelection: TDBGrid
      Left = 4
      Top = 0
      Width = 281
      Height = 185
      DataSource = DM.dSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgSelectionDblClick
      OnKeyUp = dbgSelectionKeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'Code'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Other'
          Width = 114
          Visible = True
        end>
    end
    object chkFilterPart: TCheckBox
      Left = 102
      Top = 191
      Width = 97
      Height = 17
      Caption = #3605#3634#3617#3594#3636#3657#3609#3626#3656#3623#3609
      TabOrder = 1
      Visible = False
    end
  end
end
