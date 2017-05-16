object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 542
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline FraNodeConfiguration1: TFraNodeConfiguration
    Left = 0
    Top = 0
    Width = 931
    Height = 542
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -75
    ExplicitTop = -21
    inherited pageNode: TPageControl
      Width = 931
      Height = 542
      inherited tabNodeManage: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 36
        ExplicitHeight = 460
        inherited pnlCommand1: TPanel
          Top = 447
          Width = 923
          ExplicitTop = 405
        end
        inherited Panel1: TPanel
          Width = 923
        end
        inherited cxGrid1: TcxGrid
          Width = 923
          Height = 390
          ExplicitLeft = 0
          ExplicitTop = 57
          ExplicitWidth = 799
          ExplicitHeight = 348
        end
      end
      inherited tabDataInFlow: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
      end
      inherited tabFlow: TTabSheet
        ExplicitLeft = 0
        ExplicitWidth = 0
      end
    end
    inherited cxStyleRepository1: TcxStyleRepository
      PixelsPerInch = 96
    end
  end
end
