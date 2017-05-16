object frmMagnify: TfrmMagnify
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Magnify'
  ClientHeight = 479
  ClientWidth = 633
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
  object Image1: TImage
    Left = 523
    Top = 0
    Width = 41
    Height = 34
    Stretch = True
    Visible = False
  end
  object Image2: TImage
    Left = 130
    Top = 91
    Width = 434
    Height = 337
    Stretch = True
  end
  object BitBtn1: TBitBtn
    Left = 536
    Top = 446
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
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
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object TrackBar1: TTrackBar
    Left = 119
    Top = 40
    Width = 434
    Height = 45
    Position = 1
    TabOrder = 1
    OnChange = FormShow
  end
  object TrackBar2: TTrackBar
    Left = 79
    Top = 61
    Width = 45
    Height = 367
    Orientation = trVertical
    Position = 1
    TabOrder = 2
    OnChange = FormShow
  end
  object edtTop: TCnSpinEdit
    Left = 88
    Top = 8
    Width = 49
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
    Visible = False
    OnChange = FormShow
  end
  object edtLeft: TCnSpinEdit
    Left = 8
    Top = 71
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
    Visible = False
    OnChange = FormShow
  end
  object edtRight: TCnSpinEdit
    Left = 570
    Top = 406
    Width = 54
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
    Visible = False
    OnChange = FormShow
  end
  object edtBottom: TCnSpinEdit
    Left = 472
    Top = 434
    Width = 58
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 0
    Visible = False
    OnChange = FormShow
  end
  object CheckBox1: TCheckBox
    Left = 130
    Top = 444
    Width = 167
    Height = 17
    Caption = 'Proportion Constraint'
    TabOrder = 7
  end
end
