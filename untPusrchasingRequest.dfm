object FraPurChasingRequest: TFraPurChasingRequest
  Left = 0
  Top = 0
  Width = 725
  Height = 503
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 503
    Align = alLeft
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 719
      Height = 176
      Align = alTop
      TabOrder = 0
      object lblSaler: TLabel
        Left = 24
        Top = 21
        Width = 25
        Height = 13
        Caption = #3612#3641#3657#3586#3634#3618
      end
      object lblPRNumber: TLabel
        Left = 399
        Top = 21
        Width = 61
        Height = 13
        Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      end
      object Label1: TLabel
        Left = 599
        Top = 21
        Width = 64
        Height = 13
        Caption = #3648#3629#3585#3626#3634#3619#3629#3657#3634#3591#3629#3636#3591
      end
      object Label2: TLabel
        Left = 24
        Top = 77
        Width = 55
        Height = 13
        Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      end
      object Label3: TLabel
        Left = 151
        Top = 77
        Width = 64
        Height = 13
        Caption = #3623#3633#3609#3588#3619#3610#3585#3635#3627#3609#3604
      end
      object Label4: TLabel
        Left = 285
        Top = 77
        Width = 36
        Height = 13
        Caption = #3648#3591#3639#3656#3629#3609#3652#3586
      end
      object Label5: TLabel
        Left = 599
        Top = 77
        Width = 41
        Height = 13
        Caption = #3594#3609#3636#3604#3616#3634#3625#3637
      end
      object lblCode: TLabel
        Left = 20
        Top = 130
        Width = 45
        Height = 13
        Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      end
      object lblDesc: TLabel
        Left = 155
        Top = 132
        Width = 33
        Height = 13
        Caption = #3619#3634#3618#3585#3634#3619
      end
      object Label12: TLabel
        Left = 339
        Top = 132
        Width = 30
        Height = 13
        Caption = #3592#3635#3609#3623#3609
      end
      object Label13: TLabel
        Left = 418
        Top = 132
        Width = 25
        Height = 13
        Caption = #3627#3609#3656#3623#3618
      end
      object Label14: TLabel
        Left = 487
        Top = 132
        Width = 22
        Height = 13
        Caption = #3619#3634#3588#3634
      end
      object Label15: TLabel
        Left = 555
        Top = 132
        Width = 33
        Height = 13
        Caption = #3626#3656#3623#3609#3621#3604
      end
      object edtVenderCode: TEdit
        Left = 24
        Top = 40
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 30
        TabOrder = 0
        OnChange = edtVenderCodeChange
        OnEnter = edtVenderCodeEnter
        OnKeyUp = edtVenderCodeKeyUp
      end
      object edtVenderName: TEdit
        Left = 151
        Top = 40
        Width = 242
        Height = 21
        TabOrder = 1
        OnEnter = edtPRNumberEnter
      end
      object edtPRNumber: TEdit
        Left = 399
        Top = 40
        Width = 138
        Height = 21
        Hint = 'Leave it Blank for Autogenerate'
        CharCase = ecUpperCase
        MaxLength = 30
        TabOrder = 2
        OnEnter = edtPRNumberEnter
      end
      object edtReferenceDoc: TEdit
        Left = 599
        Top = 40
        Width = 115
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 30
        TabOrder = 3
        OnEnter = edtPRNumberEnter
      end
      object BitBtn1: TBitBtn
        Left = 538
        Top = 38
        Width = 47
        Height = 25
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000A0000000F0000
          001000000010000000100000001100000011000000100000000A000000000000
          000000000000000000000000000000000000000000093C2924C1543932FF5339
          32FF533932FF543931FF543A31FF533932FF543A32FF3C2924C1000000000000
          0000000000000000000000000000000000000000000C563D35FF70564CFF6B51
          47FF6B5047FF6A5046FF694F45FF684F44FF6B5147FF563C35FF000000020000
          000A000000160000001B000000170000000B0101010E5A4038FF785F54FFFAF6
          F3FF72574DFFFAF4F1FFF9F3EFFF907B71FF73594FFF5B4037FF0000000F2616
          1072583424D8693D2AFF4D2C1FD91D110B750A0A0A245E443BFF836960FFFCF8
          F5FF7A5F55FFFBF6F4FF775D53FFFAF4F1FF7D6459FF5F443BFF291A136DA380
          70FFD4C5BDFFEDE5E1FFCFBEB7FF907163FF5148449C63483EFF8E756AFFFCFA
          F8FF83685DFFFBF9F7FF81665CFFFBF7F4FF876E65FF63483EFF734937DEE3D7
          D1FFCEAE9EFFAF7957FFD0B39EFFD7C9C3FF9B8882EE674D42FF998075FFFEFC
          FBFF8C7165FFFDFBF9FFFDFAF8FFA48E86FF937A6FFF674E42FF8E5A47FBF8F6
          F4FFAE725BFFE7AF66FFB27F5EFFF0EBE8FFB59F97FF6C5245FFA28A7FFFA289
          7EFFA1887EFFA0877DFF9F877CFF9E857BFF9E847AFF6C5246FF90604DF8F1E8
          E4FFD2B0A5FFAA6C53FFD4B6A7FFCDC0BAFFAE968CFF846A5DFF715649FF7056
          49FF705649FF71564AFF71564AFF715649FF715649FF544036C0583C31A2CAAF
          A3FFF7F2EEFFFDFCFBFFEAE0DAFF9E847AFF855D4DFFB49A8DFFF2EAE5FFF8F5
          F3FFFBFAF9FFECE7E4FFC3B1A9FF7C6C64B90303030B000000020805041D9F72
          5DF8E8DBD4FFE6D7CEFFCDB7AAFF8B6B5EFF7A4A39FF8B5F4BFFE9D8CEFFEADC
          D4FFCFB9ACFF997B6DFF966A54F7070504160000000100000000000000076047
          3BA4D0B7ADFFEEE3DFFFD5C1B7FF93766CFF7F513EFF926550FFECE0D9FFEBDE
          D8FFC4B0A5FF9B7868FF5F45389D000000040000000000000000000000022219
          1541B89383FFF3EBE8FFD9C9C2FFA99389FFA37764FFB48B76FFF0E7E3FFEADE
          D9FFBDA79FFFA67D6CFF21191539000000010000000000000000000000000000
          0007846554C6DDCCC4FFE6DCD8FFC2A99EFFA57D68F9B38E79F8E0D1C9FFE9DF
          DAFFBCA497FF846555C200000003000000000000000000000000000000000000
          0002130F0D237D6152B7AF8673FA7B6050B9130E0C2814100E20836558B3B68F
          79F9806455B3130F0D1E00000001000000000000000000000000000000000000
          0000000000010000000400000006000000050000000200000000000000010000
          0001000000010000000000000000000000000000000000000000}
        TabOrder = 4
        OnClick = BitBtn1Click
      end
      object dtDocumentDate: TDateTimePicker
        Left = 24
        Top = 96
        Width = 121
        Height = 21
        Date = 42796.000000000000000000
        Time = 42796.000000000000000000
        TabOrder = 5
      end
      object dtDueDate: TDateTimePicker
        Left = 151
        Top = 96
        Width = 121
        Height = 21
        Date = 42796.000000000000000000
        Time = 42796.000000000000000000
        TabOrder = 6
      end
      object edtCondition: TEdit
        Left = 285
        Top = 96
        Width = 252
        Height = 21
        TabOrder = 7
        OnEnter = edtPRNumberEnter
      end
      object cmbTaxType: TComboBox
        Left = 599
        Top = 96
        Width = 115
        Height = 21
        ItemIndex = 1
        TabOrder = 8
        Text = 'Include VAT'
        OnEnter = edtPRNumberEnter
        Items.Strings = (
          'No VAT'
          'Include VAT'
          'Exclude VAT')
      end
      object edtDesc: TEdit
        Left = 155
        Top = 149
        Width = 183
        Height = 21
        TabOrder = 9
        OnEnter = edtPRNumberEnter
      end
      object edtQnty: TEdit
        Left = 339
        Top = 149
        Width = 78
        Height = 21
        TabOrder = 10
        OnChange = edtQntyChange
        OnEnter = edtPRNumberEnter
      end
      object edtUnit: TEdit
        Left = 418
        Top = 149
        Width = 68
        Height = 21
        TabOrder = 11
        OnEnter = edtPRNumberEnter
      end
      object edtPrice: TEdit
        Left = 487
        Top = 149
        Width = 67
        Height = 21
        TabOrder = 12
        OnChange = edtPriceChange
      end
      object edtDisc: TEdit
        Left = 555
        Top = 149
        Width = 76
        Height = 21
        TabOrder = 13
        OnEnter = edtPRNumberEnter
        OnExit = edtDiscExit
      end
      object btnAdd: TBitBtn
        Left = 637
        Top = 146
        Width = 75
        Height = 25
        Caption = #3648#3614#3636#3656#3617
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
          25D0522C17931209053000000009000000010000000000000000000000000000
          00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
          6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
          0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
          82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
          2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
          59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
          47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
          45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
          6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
          44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
          83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
          47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
          8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
          F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
          A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
          D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
          ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
          3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
          9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
          3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
          6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
          3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
          3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
          5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
          0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
          CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
          00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
          B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
          000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
          60CD6C543F8B16110D2200000003000000010000000000000000}
        TabOrder = 14
        OnClick = btnAddClick
      end
      object edtCode: TEdit
        Left = 20
        Top = 149
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 30
        TabOrder = 15
        OnChange = edtCodeChange
        OnEnter = edtVenderCodeEnter
        OnKeyUp = edtVenderCodeKeyUp
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 463
      Width = 719
      Height = 39
      Align = alBottom
      TabOrder = 1
      object btnSave: TBitBtn
        Left = 24
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Save'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000562D
          4580AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FF562D45800000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 0
        OnClick = btnSaveClick
      end
      object btnClose: TBitBtn
        Left = 105
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Close'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000B000000120000001300000013000000140000001400000014000000140000
          0014000000140000001500000015000000140000000D000000030000000B1C11
          6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
          93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
          9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
          D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
          A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
          BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
          A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
          CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
          ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
          B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
          B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
          BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
          C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
          D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
          D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
          A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
          DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
          BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
          DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
          F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
          A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
          DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
          0002000000030000000400000004000000040000000400000004000000040000
          0004000000040000000400000005000000050000000300000001}
        TabOrder = 1
        OnClick = btnCloseClick
      end
      object btnClear: TBitBtn
        Left = 186
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Clear'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000900000011000000140000
          00120000000A0000000200000000000000000000000000000000000000000000
          00000000000000000000000000020000000D411F0E9397532BFF914D26FF8C45
          21FF47210F9B0000001000000002000000000000000000000000000000000000
          000000000000000000000000000742221190B17D53FFE1BA86FFE4CA9FFFA761
          32FF99542AFF1E101F9B0000000F000000020000000000000000000000000000
          0000000000000000000000000009AE7247FFE5C18FFFE4BF8DFFE4BF8DFFE7D0
          A5FF9D6E6EFF2D259FFF07073A990000000D00000002000000000000000B0000
          001100000012000000120000002063442E9DD0A478FFE7C69AFFE7C495FFB0A6
          BFFFB0B9EEFF463DC7FF302BA6FF0B0A3F960000000C00000002714F44C29E6D
          5DFF9E6C5DFF9D6C5CFFB59084FFCEB5ADFFBD977EFFD4AC82FFBAB2C7FF8493
          E9FF8494EAFFB6C2F0FF4742C9FF3532ADFF0F0E47930000000BA17162FFF9F2
          EFFFF7EEE9FFF7EEEAFFC29F93FFF9F2EEFFF7F5F4FFB6ABBEFF737DD7FF95A5
          EDFF8E9FEDFF8D9EEDFFBCC8F2FF4846CBFF3B3AB5FF13134C8EA47567FFF9F2
          F0FFF7EEEBFFF7EEEAFFC3A095FFF7EEEAFFFAF2EFFFBFA69BFF8F8DC3FF7B87
          DBFF9FB0F1FF97AAF1FF97AAF0FFC1CEF5FF5353D1FF393BADFF3137BBFF2F36
          BAFF2D34B8FF2C33B7FF2B31B6FFC3A196FFC4A196FFD2B8AFFFC3ABA0FFA2A5
          DBFF8290E0FFA9B9F4FFA0B4F3FFA7B9F5FF7D85CDFF15174E883E49C5FF778C
          FBFF657BF9FF647AFAFF373FC1FFF8EFEBFFF7F0EBFFF8F0EBFFD3BAB1FFF9F6
          F4FF9793C6FF8896E4FFB7C8F7FF7783D5FF1A1E588600000005434ECAFF798E
          FBFF778CFAFF758AFBFF3E48C6FFF8F0EDFFF8F0ECFFF8F0ECFFC5A499FFF9F4
          F1FFDBC7C0FFAAADE2FF606BD6FF1F245F8900000004000000014450CBFF4E59
          CEFF4E59CEFF4D59CDFF305DC3FF2466BEFF2363BCFF2361BBFF215FBAFFC7A6
          9BFFD4BCB3FFEADCD8FFD6C0B8FF0000000A0000000000000000B78E81FFFAF5
          F2FFF8F0EEFFF7F1EEFF2973C4FFB7E6FAFF74CFF6FF73CFF6FF2468BFFFF7F0
          EEFFF8F0EDFFFAF4F2FFB08577FF000000090000000000000000BA9285FFFAF5
          F2FFFAF5F2FFFAF5F2FF2D7CCAFFBBE9FBFFBBE9FBFFBBE9FAFF2A72C4FFFAF4
          F2FFFAF5F2FFFAF5F2FFB48A7CFF0000000800000000000000008C7065C1BE97
          89FFBC9688FFBC9588FF3084CDFF3082CDFF2E7FCBFF2D7ECAFF2C7CCAFFBA91
          83FFB89083FFB88F82FF876A5FC1000000050000000000000000000000030000
          0005000000050000000500000005000000050000000500000005000000060000
          0006000000060000000500000004000000010000000000000000}
        TabOrder = 2
        OnClick = btnClearClick
      end
      object btnCancel: TBitBtn
        Left = 267
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancel'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000562D
          4580AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FF562D45800000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          000000000000000000000000000000000000000000000000000000000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FF000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000004463
          D8FF4463D8FF000000004463D8FF000000004463D8FF4463D8FF00000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FF000000004463
          D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF00000000AB59
          89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000004463
          D8FF4463D8FF000000004463D8FF000000004463D8FF4463D8FF00000000AB59
          89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          0000000000000000000000000000000000000000000000000000000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF}
        TabOrder = 3
        OnClick = btnCancelClick
      end
      object pnlRight: TPanel
        Left = 621
        Top = 1
        Width = 97
        Height = 37
        Align = alRight
        Caption = 'pnlRight'
        TabOrder = 4
        object btnShow: TBitBtn
          Left = 14
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Show'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000000000000000000000000000000000000000000A0000
            0010000000110000001200000013000000140000001500000016000000170000
            0018000000190000001A0000001B0000001C0000001B00000012946D4CC1CC96
            68FFCC9567FFCB9465FFCA9364FFC99162FFC89160FFC78F5FFFC68E5DFFC68D
            5DFFC48C5BFFC48A59FFC38A58FFC38958FFC28957FF8B613ECACE9A6CFFFCF8
            F3FFFAF4EEFFFAF3EDFFFAF3ECFFD5AB86FFFAF2EBFFF9F2EBFFFAF2EAFFFAF2
            E9FFD1A781FFF9F0E9FFF8F1E8FFF9F0E8FFF8F0E7FFC28857FFCF9A6DFFFCF8
            F4FFFBF4EEFFFAF4EDFFFAF4EDFFD5AB86FFFAF3ECFFF9F3EBFFFAF2EBFFF9F2
            EAFFD1A781FFF9F1EAFFF8F1E9FFF9F0E8FFF8F0E8FFC38958FFD09C70FFE5C9
            B1FFD7AE8AFFD6AE89FFD6AD89FFD5AC87FFD4AB86FFD4AA86FFD3A985FFD3A9
            84FFD2A883FFD1A882FFD0A781FFD1A67FFFCFA57EFFC38A59FFD19D71FFFCF8
            F5FFFBF5EFFFFBF5EFFFFBF4EFFFD6AD88FFFBF3EDFFFAF4EDFFFAF3ECFFF9F3
            EBFFD2A983FFF9F2EAFFF9F1EAFFF9F1E9FFF9F1E9FFC48B5AFFD29E72FFFCF9
            F6FFFCF8F5FFFCF8F4FFFCF8F4FFE3C8AFFFFCF8F3FFFCF7F3FFFCF8F3FFFCF7
            F2FFE2C5ACFFFBF6F1FFFBF6F1FFFBF6F1FFFBF6F0FFC58C5BFF9C7756C3D29E
            72FFD19D71FFD19C6FFFCF9B6EFFCE996DFFCE996AFFCC9769FFCB9667FFCB95
            65FFCA9364FFC99263FFC89161FFC78F60FFC78F5EFF926845CC0000000C0000
            00130000001600000017000000190000001A0000001C0000001E0000001F0000
            002100000023000000250000002600000028000000280000001C987555BDD4A1
            76FFD3A075FFD29E73FFD19E71FFD09D70FFD09B6EFFCF9A6CFFCD996BFFCD97
            69FFCC9567FFCB9566FFCA9364FFC99263FFC89062FF8F6744C5D6A379FFFDFA
            F8FFFCF8F3FFFCF7F3FFFBF7F2FFDBB28FFFFBF6F1FFFBF6F0FFFBF5F0FFFBF4
            EFFFD7AE89FFFAF4EEFFFBF4EDFFFAF4EDFFFAF2ECFFC99061FFD6A57AFFFDFA
            F8FFFCF7F4FFFCF7F3FFFCF7F3FFDBB28FFFFBF7F2FFFCF6F1FFFBF6F0FFFBF5
            F0FFD8AE8AFFFBF5EEFFFBF4EEFFFAF3EEFFFAF3EDFFC99263FFD7A77BFFE8CD
            B6FFDDB693FFDCB592FFDBB492FFDCB491FFDAB390FFDAB28EFFDAB18DFFD9B0
            8DFFD8AF8CFFD7AF8BFFD6AD89FFD6AD89FFD6AC87FFCA9464FFD7A77DFFFEFB
            F9FFFDF8F6FFFDF8F5FFFCF8F5FFDCB491FFFCF7F3FFFCF6F2FFFBF7F1FFFBF6
            F1FFD9B08DFFFBF5F0FFFBF5EFFFFBF4EFFFFAF4EEFFCB9566FFD8A87FFFFEFB
            FAFFFEFBF9FFFEFAF9FFFDFAF8FFE7CDB5FFFDFAF8FFFDFAF7FFFDFAF6FFFDFA
            F6FFE5CAB2FFFCF9F6FFFCF8F4FFFCF8F4FFFCF8F4FFCC9768FFA17D5FC0D8A8
            7EFFD8A77DFFD7A77CFFD7A57BFFD6A479FFD4A378FFD4A276FFD3A075FFD2A0
            73FFD19E71FFD19D70FFD09C6FFFCE9A6DFFCE996BFF98704FC7}
          TabOrder = 0
          OnClick = btnShowClick
        end
      end
    end
    object grdPR: TcxGrid
      Left = 1
      Top = 177
      Width = 719
      Height = 199
      Align = alClient
      TabOrder = 2
      OnEnter = edtPRNumberEnter
      LookAndFeel.NativeStyle = False
      OnMouseEnter = grdPRMouseEnter
      object grdPurchasingRequest: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        OnEditKeyPress = grdPurchasingRequestEditKeyPress
        OnEditKeyUp = grdPurchasingRequestEditKeyUp
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '# '#3619#3634#3618#3585#3634#3619
            Kind = skCount
            Column = colCode
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = colAmount
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = colDiscount
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = colVat
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnAfterPost = grdPurchasingRequestDataControllerAfterPost
        DataController.OnBeforePost = grdPurchasingRequestDataControllerBeforePost
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = cxStyle2
        Styles.ContentOdd = cxStyle3
        Styles.Footer = cxStyle4
        Styles.Header = cxStyle1
        object colRemark: TcxGridColumn
          Caption = '*'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Default = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000020000
                00070000000B0000000C0000000C0000000C0000000C0000000C0000000C0000
                000C0000000C0000000C0000000D0000000C0000000800000002000000077C5E
                52BFAE8172FFAE8172FFAD8171FFAC8071FFAC8070FFAC806FFFAB7F6FFFAB7F
                6FFFAB7E6FFFAB7E6EFFAB7E6DFFAA7E6EFF7A5A4EBF000000070000000AB085
                75FFF9F1ECFFF8F0ECFFF9F1ECFFF9F0ECFFF9F1ECFFF8F0ECFFF8F0ECFFF8F0
                ECFFF8F0ECFFF9F0ECFFF8F0ECFFF8F0ECFFAB7F6EFF0000000B0000000AB287
                77FFF9F2EDFFBE9586FFBD9586FFBD9485FFBD9585FFBD9485FFBD9485FFBD94
                84FFBD9385FFBC9385FFAC7F6FFFF9F0ECFFAC8070FF0000000B0000000AB38A
                7BFFFAF2EEFFF8EDE8FFF7EDE7FFF7EDE7FFF7EDE7FFF7ECE7FFF7EDE7FFF7EC
                E7FFF7ECE7FFF7ECE6FFF7ECE6FFF8F1ECFFAE8273FF0000000A00000009B68D
                7DFFF9F3EFFFC19A8AFFC0998AFFC0998AFFC0998AFFC09889FFBF9889FFBF98
                89FFBF9888FFBF9788FFB08374FFF9F2EDFFAF8475FF0000000A00000008B88F
                81FFFAF3EFFFF8EFEAFFF8EFEAFFF8EFE9FFF8EFEAFFF7EEE9FFF8EEE9FFF8EE
                E9FFF7EEE8FFF8EEE9FFF7EEE8FFFAF2EEFFB18778FF0000000900000008BA92
                84FFFAF4EFFFC39E8EFFC49D8EFFC39D8EFFC39D8EFFC39C8DFFC29D8EFFC39C
                8DFFC29C8DFFC39B8DFFB38779FFFAF2EFFFB3897AFF0000000900000007BC95
                87FFFBF5F1FFF8F1ECFFF8F1ECFFF8F0EBFFF9F0ECFFF8F0EBFFF8F0ECFFF8F0
                EBFFF8EFEBFFF8EFEAFFF8F0EAFFFAF3F0FFB58D7EFF0000000800000007BE98
                89FFBE9888FFBD9788FFBD9687FFBC9687FFBB9586FFBC9485FFBB9484FFAD6B
                3BFFAE6A3BFFAE6B3BFFAD6B3BFFAD6A3BFFAE6A3BFF0000000700000006C09B
                8DFFFBF6F2FFF9F3EEFFF9F2EEFFF9F2EDFFF9F2EDFFF9F2EDFFF9F2EDFFB171
                43FFDFBA87FFDFB987FFDFB986FFE6C99FFFAF6E40FF0000000700000006C29E
                8FFFFBF6F2FFF9F3EFFFF9F3EEFFF9F3EEFFF9F3EFFFF9F3EEFFF9F2EEFFB475
                47FFDFBE8DFFB27244FFB27344FFE8CCA4FFB27245FF0000000600000005C4A0
                92FFFBF6F4FFFAF4EFFFFAF4EFFFFAF4F0FFFAF3EFFFFAF4EFFFF9F4EFFFB679
                4CFFF1E2BCFFB4784AFFB5774AFFF5E9CCFFB5774AFF0000000600000004C6A3
                94FFFBF8F5FFFBF8F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFC998
                70FFF5E9CCFFF5E9CCFFF5E9CCFFF5E9CCFFB87C4FFF00000005000000029479
                6FBFC6A396FFC6A495FFC6A394FFC5A294FFC5A293FFC5A293FFC5A193FFC899
                6FFFC8996FFFC8996FFFC8996FFFC8996FFFBB916AEF00000003000000010000
                0002000000030000000300000004000000040000000400000004000000040000
                0004000000040000000400000004000000040000000200000001}
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = colRemarkPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 21
        end
        object colNo: TcxGridColumn
          Caption = 'No'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Focusing = False
          Width = 36
        end
        object colCode: TcxGridColumn
          Caption = 'Code'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.CharCase = ecUpperCase
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 98
        end
        object colDescription: TcxGridColumn
          Caption = 'Description'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Focusing = False
          Width = 181
        end
        object colQnty: TcxGridColumn
          Caption = 'Qnty'
          DataBinding.ValueType = 'Integer'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 79
        end
        object colUnit: TcxGridColumn
          Caption = 'Unit'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 70
        end
        object colPrice: TcxGridColumn
          Caption = 'Price'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 69
        end
        object colDiscount: TcxGridColumn
          Caption = 'Discount'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 75
        end
        object colAmount: TcxGridColumn
          Caption = 'Amount'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Focusing = False
          Width = 88
        end
        object colVat: TcxGridColumn
          Caption = 'VAT'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Options.Focusing = False
          Width = 20
        end
      end
      object grdPRLevel1: TcxGridLevel
        GridView = grdPurchasingRequest
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 376
      Width = 719
      Height = 87
      Align = alBottom
      TabOrder = 3
      object Label6: TLabel
        Left = 24
        Top = 5
        Width = 43
        Height = 13
        Caption = #3627#3617#3634#3618#3648#3627#3605#3640
      end
      object Label7: TLabel
        Left = 24
        Top = 29
        Width = 72
        Height = 13
        Caption = #3621#3604#3605#3634#3617#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
      end
      object Label8: TLabel
        Left = 151
        Top = 29
        Width = 54
        Height = 13
        Caption = #3592#3656#3634#3618#3588#3656#3634#3617#3633#3604#3592#3635
      end
      object Label9: TLabel
        Left = 285
        Top = 29
        Width = 56
        Height = 13
        Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3592#3629#3591
      end
      object Label10: TLabel
        Left = 412
        Top = 29
        Width = 64
        Height = 13
        Caption = #3586#3657#3629#3588#3623#3634#3617#3614#3636#3648#3624#3625
      end
      object edtRemark: TEdit
        Left = 73
        Top = 2
        Width = 632
        Height = 21
        TabOrder = 0
      end
      object edtDiscount: TEdit
        Left = 24
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 1
        OnKeyPress = edtDiscountKeyPress
      end
      object edtPrepaid: TEdit
        Left = 151
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 2
        OnKeyPress = edtDiscountKeyPress
      end
      object edtBooking: TEdit
        Left = 285
        Top = 48
        Width = 121
        Height = 21
        MaxLength = 30
        TabOrder = 3
      end
      object edtSpecialMessage: TEdit
        Left = 412
        Top = 48
        Width = 293
        Height = 21
        MaxLength = 254
        TabOrder = 4
      end
    end
  end
  object dbgSelection: TDBGrid
    Left = -1
    Top = 316
    Width = 281
    Height = 185
    DataSource = DM.dSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnCellClick = dbgSelectionCellClick
    OnDblClick = dbgSelectionDblClick
    OnKeyPress = dbgSelectionKeyPress
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
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenu
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientActiveCaption
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clCream
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clDefault
    end
  end
end