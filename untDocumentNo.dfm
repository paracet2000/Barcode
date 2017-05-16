object frmDocumentNo: TfrmDocumentNo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Document No'
  ClientHeight = 179
  ClientWidth = 362
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
  object Label1: TLabel
    Left = 80
    Top = 45
    Width = 64
    Height = 13
    Caption = 'Document No'
  end
  object edtDocumentNo: TEdit
    Left = 80
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 144
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
