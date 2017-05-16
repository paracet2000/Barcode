object frmMagnify: TfrmMagnify
  Left = 322
  Top = 384
  BorderStyle = bsDialog
  Caption = 'Magnify - www.ImageEn.com'
  ClientHeight = 446
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 288
    Width = 57
    Height = 13
    Caption = 'Rect Width:'
  end
  object Label2: TLabel
    Left = 16
    Top = 319
    Width = 60
    Height = 13
    Caption = 'Rect Height:'
  end
  object ImageEnView1: TImageEnView
    Left = 8
    Top = 16
    Width = 281
    Height = 249
    Background = clBtnFace
    ParentCtl3D = False
    MouseInteract = [miZoom]
    OnPaint = ImageEnView1Paint
    EnableInteractionHints = True
    TabOrder = 0
    OnMouseMove = ImageEnView1MouseMove
  end
  object ImageEnView2: TImageEnView
    Left = 304
    Top = 16
    Width = 377
    Height = 377
    Background = clBtnFace
    ParentCtl3D = False
    ScrollBars = ssNone
    EnableInteractionHints = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 692
    Top = 16
    Width = 101
    Height = 25
    Caption = 'Open...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 81
    Top = 285
    Width = 48
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = '100'
  end
  object Edit2: TEdit
    Left = 80
    Top = 316
    Width = 49
    Height = 21
    ReadOnly = True
    TabOrder = 4
    Text = '100'
  end
  object UpDown1: TUpDown
    Left = 129
    Top = 285
    Width = 16
    Height = 21
    Associate = Edit1
    Position = 100
    TabOrder = 5
    OnChanging = UpDown1Changing
  end
  object UpDown2: TUpDown
    Left = 129
    Top = 316
    Width = 16
    Height = 21
    Associate = Edit2
    Position = 100
    TabOrder = 6
    OnChanging = UpDown1Changing
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 413
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 7
  end
end
