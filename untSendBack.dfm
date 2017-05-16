object frmSendBack: TfrmSendBack
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #3626#3656#3591#3585#3621#3633#3610
  ClientHeight = 227
  ClientWidth = 467
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
  object btnOk: TBitBtn
    Left = 372
    Top = 184
    Width = 75
    Height = 25
    Caption = #3611#3636#3604
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
    TabOrder = 1
    TabStop = False
    OnClick = btnOkClick
  end
  object edtBoxBarcodePK: TLabeledEdit
    Left = 48
    Top = 104
    Width = 121
    Height = 21
    TabStop = False
    EditLabel.Width = 62
    EditLabel.Height = 13
    EditLabel.Caption = #3610#3634#3619#3660#3650#3588#3657#3604#3585#3621#3656#3629#3591
    MaxLength = 20
    TabOrder = 2
    OnKeyPress = edtBoxBarcodePKKeyPress
  end
  object edtPackBarcodePK: TLabeledEdit
    Left = 186
    Top = 104
    Width = 121
    Height = 21
    TabStop = False
    EditLabel.Width = 57
    EditLabel.Height = 13
    EditLabel.Caption = #3610#3634#3619#3660#3650#3588#3657#3604#3649#3614#3655#3588
    MaxLength = 20
    TabOrder = 0
    OnEnter = edtPackBarcodePKEnter
    OnKeyUp = edtPackBarcodePKKeyUp
  end
  object chkNoPackPackage: TCheckBox
    Left = 350
    Top = 104
    Width = 97
    Height = 17
    TabStop = False
    Caption = #3652#3617#3656#3617#3637#3649#3614#3655#3588
    TabOrder = 3
  end
  object edtStation: TEdit
    Left = 8
    Top = 0
    Width = 451
    Height = 21
    TabStop = False
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 4
    Text = 'Station'
  end
end
