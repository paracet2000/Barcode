object fraProductionDetail: TfraProductionDetail
  Left = 0
  Top = 0
  Width = 360
  Height = 339
  TabOrder = 0
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 360
    Height = 339
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object cxGrid1DBCardView1: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DM.dusingPrdOrder
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsSelection.CardBorderSelection = False
      OptionsView.CardAutoWidth = True
      OptionsView.CardIndent = 7
      Styles.ContentEven = cxStyle1
      Styles.CaptionRow = cxStyle1
      object cxGrid1DBCardView1Order_No: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Order_No'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Order_Date: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Order_Date'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Due_Date: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Due_Date'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Part_No: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Part_No'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Part_Name: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Part_Name'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Part_No_Internal: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Part_No_Internal'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1cus_id: TcxGridDBCardViewRow
        DataBinding.FieldName = 'cus_id'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Mat_Code: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Mat_Code'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Mat_Size: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Mat_Size'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Qnty: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Qnty'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Coil_No: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Coil_No'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Cert_No: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Cert_No'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1Lot_No: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Lot_No'
        Position.BeginsLayer = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBCardView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 24
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMenuHighlight
      TextColor = clDefault
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMenu
      TextColor = clDefault
    end
  end
end
