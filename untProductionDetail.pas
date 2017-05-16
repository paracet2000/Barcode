unit untProductionDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridCustomLayoutView,
  cxGridCardView, cxGridDBCardView, cxClasses, cxGridLevel, cxGrid;

type
  TfraProductionDetail = class(TFrame)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1Order_No: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Order_Date: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Due_Date: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Part_No: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Part_Name: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Part_No_Internal: TcxGridDBCardViewRow;
    cxGrid1DBCardView1cus_id: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Mat_Code: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Mat_Size: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Qnty: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Coil_No: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Cert_No: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Lot_No: TcxGridDBCardViewRow;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses untDM;

end.
