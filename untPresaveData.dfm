object frmPresaveData: TfrmPresaveData
  Left = 0
  Top = 0
  Caption = 'Pre-save Data'
  ClientHeight = 470
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 910
    Height = 470
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DM.dPrevious
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,### Packs'
          Kind = skCount
          FieldName = 'cus_id'
          Column = cxGrid1DBTableView1Column6
        end
        item
          Format = '#,### Pcs.'
          Kind = skSum
          FieldName = 'Qnty'
          DisplayText = '#,### Pcs.'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,### boxes'
          Kind = skCount
          FieldName = 'Box_no'
          Column = cxGrid1DBTableView1Column6
        end>
      DataController.Summary.SummaryGroups = <>
      Styles.ContentEven = cxStyle3
      Styles.Header = cxStyle1
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Box No'
        DataBinding.FieldName = 'Box_no'
        Visible = False
        GroupIndex = 1
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'Create_Date'
        SortIndex = 0
        SortOrder = soAscending
        Width = 67
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Serial No'
        DataBinding.FieldName = 'Serial_NO'
        SortIndex = 1
        SortOrder = soAscending
        Width = 134
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Lot No'
        DataBinding.FieldName = 'Lot_No'
        Width = 144
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Part No'
        DataBinding.FieldName = 'Part_No'
        GroupIndex = 0
        Width = 139
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Part Name'
        DataBinding.FieldName = 'Part_Name'
        GroupIndex = 2
        Width = 306
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = 'Qnty'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;(,0)'
        Width = 68
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 312
    Top = 24
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnHighlight
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svBitmap, svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clDefault
    end
    object cxStyle4: TcxStyle
    end
  end
end
