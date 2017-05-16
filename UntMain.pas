unit UntMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.UITypes, Jpeg,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, ppPrnabl, ppClass,
  ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter, ppComm, ppRelatv,
  ppProd, ppReport, ppEndUsr, ppDB, ppDBPipe, Data.DB, MemDS, DBAccess, Uni,
  UniProvider, MySQLUniProvider, ppBarCod, ppBarCode2D, Vcl.Menus, ppUtils,
  sSkinManager, sSkinProvider, sPanel, acSlider, sEdit, sSpinEdit, CnButtonEdit,
  Vcl.ComCtrls, sPageControl, ppViewr, sSplitter, Vcl.Grids, Vcl.DBGrids,
  CnPanel, StrUtils, Vcl.Mask, ppTypes, Vcl.DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxSplitter, DateUtils, cxGridBandedTableView,
  cxContainer, cxCheckBox, cxDBEdit, cxTextEdit, cxImage, CnLangStorage,
  CnHashLangStorage, CnIniLangFileStorage, CnLangMgr,
  CnClasses, CnLangTranslator, sComboBoxes, Vcl.Themes, imageenproc,
  dxGDIPlusClasses, cxMaskEdit, cxGridCustomPopupMenu, cxGridPopupMenu,
  System.Actions, Vcl.ActnList, cxCheckListBox, cxDBCheckListBox,
  FireDAC.UI.Intf, FireDAC.VCLUI.Async, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  Vcl.CheckLst, untProductionOrder, untFrameProductionOrder, untFraProduction,
  untProductionDetail, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView,
  UntPattern, cxGridDBBandedTableView, untFrameProductionNew;

type
  TfrmMain = class(TForm)
    ppSticker: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    ppDesigner1: TppDesigner;
    ppDBPipeline1: TppDBPipeline;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    P1: TMenuItem;
    D1: TMenuItem;
    C1: TMenuItem;
    S2: TMenuItem;
    sPageControl1: TsPageControl;
    tabPacking: TsTabSheet;
    tabReceive: TsTabSheet;
    tabCheckOut: TsTabSheet;
    tabSetting: TsTabSheet;
    tabReport: TsTabSheet;
    Panel1: TPanel;
    btnSaveCheckIn: TBitBtn;
    BitBtn3: TBitBtn;
    btnCancelCheckIn: TBitBtn;
    btnGroup: TBitBtn;
    BitBtn6: TBitBtn;
    CnPanel1: TCnPanel;
    edtPackBarcode_In: TLabeledEdit;
    edtBoxBarcode_In: TLabeledEdit;
    ImageList1: TImageList;
    dReportName: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    btnCreateReport: TBitBtn;
    btnDesignReport: TBitBtn;
    Panel5: TPanel;
    pnlPreviewBar: TPanel;
    spbPreviewPrint: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    Bevel1: TBevel;
    mskPreviewPercentage: TMaskEdit;
    mskPreviewPage: TMaskEdit;
    pnlCancelButton: TPanel;
    spbPreviewCancel: TSpeedButton;
    sPageControl2: TsPageControl;
    tabUser: TsTabSheet;
    tabSystem: TsTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    btnCreate: TBitBtn;
    BitBtn15: TBitBtn;
    Panel8: TPanel;
    Label7: TLabel;
    Panel9: TPanel;
    btnSaveUser: TBitBtn;
    btnUpdate: TBitBtn;
    btnCancelUser: TBitBtn;
    btnEdit: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ppViewer1: TppViewer;
    cxStyle2: TcxStyle;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    cxGrid3DBTableView1Column3: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    sSplitter1: TcxSplitter;
    Panel11: TPanel;
    Panel10: TPanel;
    BitBtn20: TBitBtn;
    btnUpdateSetting: TBitBtn;
    BitBtn22: TBitBtn;
    btnEditSetting: TBitBtn;
    edtSetValue: TDBEdit;
    Label8: TLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine5: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBImage1: TppDBImage;
    ppDBText9: TppDBText;
    ppDBBarCode2: TppDBBarCode;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    spdProductionOrder: TSpeedButton;
    edtTotalPack_In: TLabeledEdit;
    cxGrid: TcxGrid;
    tvPlanets: TcxGridTableView;
    lvPlanets: TcxGridLevel;
    tvPlanetsColumn1: TcxGridColumn;
    tvPlanetsColumn2: TcxGridColumn;
    tvPlanetsColumn3: TcxGridColumn;
    tvPlanetsColumn4: TcxGridColumn;
    tvPlanetsColumn5: TcxGridColumn;
    tvPlanetsColumn6: TcxGridColumn;
    cxStyle3: TcxStyle;
    edtUserId: TDBEdit;
    edtUserCode: TDBEdit;
    Label11: TLabel;
    grdUser: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    grdUserColumn1: TcxGridDBColumn;
    grdUserColumn2: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    edtFullName: TDBEdit;
    Label12: TLabel;
    edtPassword: TDBEdit;
    Label13: TLabel;
    grdUserColumn3: TcxGridDBColumn;
    cxSplitter2: TcxSplitter;
    edtAllowTime: TDBEdit;
    Label14: TLabel;
    edtAllowDay: TDBEdit;
    Label15: TLabel;
    spdGenerate: TSpeedButton;
    tabDatabase: TsTabSheet;
    sPageDatabase: TsPageControl;
    tabProducts: TsTabSheet;
    tabCustomer: TsTabSheet;
    Panel12: TPanel;
    btnSavePart: TBitBtn;
    btnUpdatePart: TBitBtn;
    btnCancelPart: TBitBtn;
    btnEditPart: TBitBtn;
    btnCreatePart: TBitBtn;
    btnDeletePart: TBitBtn;
    Panel13: TPanel;
    btnSaveCustomer: TBitBtn;
    btnUpdateCustomer: TBitBtn;
    btnCancelCustomer: TBitBtn;
    btnEditCustomer: TBitBtn;
    btnCreateCustomer: TBitBtn;
    btnDeleteCustomer: TBitBtn;
    grdParts: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    grdPartsPart_No: TcxGridDBColumn;
    grdPartsPart_Name: TcxGridDBColumn;
    grdCustomertv: TcxGridDBTableView;
    grdCustomerLevel1: TcxGridLevel;
    grdCustomer: TcxGrid;
    grdCustomertvcus_id: TcxGridDBColumn;
    grdCustomertvcus_code: TcxGridDBColumn;
    grdCustomertvprename: TcxGridDBColumn;
    grdCustomertvcus_name: TcxGridDBColumn;
    grdCustomertvcus_name2: TcxGridDBColumn;
    cxStyle4: TcxStyle;
    cxSplitter3: TcxSplitter;
    edtDefaultQuantity: TcxDBTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    edtPackSize: TcxDBTextEdit;
    Label18: TLabel;
    edtPackWeight: TcxDBTextEdit;
    Label19: TLabel;
    edtPieceWeight: TcxDBTextEdit;
    Label20: TLabel;
    edtPartNoDatabase: TcxDBTextEdit;
    Label21: TLabel;
    edtPartNameDatabase: TcxDBTextEdit;
    spagePackaging: TsPageControl;
    tabCreateLabel: TsTabSheet;
    tabPackaging: TsTabSheet;
    spinNumberOfSerial: TsSpinEdit;
    edtMaterialName: TCnButtonEdit;
    Label10: TLabel;
    edtCodeMaterial: TCnButtonEdit;
    Label9: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    edtModel: TLabeledEdit;
    cmbPackSize: TComboBox;
    edtPartNo: TLabeledEdit;
    edtPartName: TCnButtonEdit;
    spdParts: TSpeedButton;
    edtLotNo: TLabeledEdit;
    edtWeight: TLabeledEdit;
    edtOrderNo: TLabeledEdit;
    spdCustomerName: TSpeedButton;
    edtCustomerName: TCnButtonEdit;
    edtCustomerCode: TLabeledEdit;
    Label1: TLabel;
    cmdPanel: TPanel;
    btnSave: TBitBtn;
    btnPrint: TBitBtn;
    btnCancel: TBitBtn;
    btnClear: TBitBtn;
    BitBtn1: TBitBtn;
    proSaveProgress: TProgressBar;
    CnPanel3: TCnPanel;
    edtPackBarcodePK: TLabeledEdit;
    edtBoxBarcodePK: TLabeledEdit;
    cxGrid4: TcxGrid;
    grdPackaging: TcxGridTableView;
    colPartNoPK: TcxGridColumn;
    colPartNamePK: TcxGridColumn;
    colLotPK: TcxGridColumn;
    colSerialPK: TcxGridColumn;
    colPackSizPK: TcxGridColumn;
    colWeightPK: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    Panel14: TPanel;
    btnSavePK: TBitBtn;
    btnDeletePK: TBitBtn;
    btnCancelPK: TBitBtn;
    btnSendBack: TBitBtn;
    btnSummaryPK: TBitBtn;
    Panel15: TPanel;
    imgPartPicture: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edtCodeCust: TDBEdit;
    lblCode: TLabel;
    edtNameCust: TDBEdit;
    Label22: TLabel;
    edtName2Cudt: TDBEdit;
    lblCompanyId: TLabel;
    edtTitleCust: TDBEdit;
    spdCustSearch: TSpeedButton;
    spdCustSearchName: TSpeedButton;
    spdUserCodeDatabase: TSpeedButton;
    spdUserNameDatabase: TSpeedButton;
    Panel16: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    spdPackingSent: TSpeedButton;
    MySQLUniProvider1: TMySQLUniProvider;
    cxStyleRepository2: TcxStyleRepository;
    colBoxNo: TcxGridColumn;
    colBox_NoPK: TcxGridColumn;
    spdZoomIn: TSpeedButton;
    cmbPackPerBox: TComboBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cmbCheckBy: TComboBox;
    cmbInspecBy: TComboBox;
    cmbPackingBy: TComboBox;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ppReportStore: TppReport;
    ppDBPipelineReport: TppDBPipeline;
    ppDesignerReport: TppDesigner;
    PopupMenu2: TPopupMenu;
    P2: TMenuItem;
    D2: TMenuItem;
    tabRepack: TsTabSheet;
    Panel17: TPanel;
    btnRepackRecieve: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    grRepack: TcxGrid;
    grdRepackTableView: TcxGridTableView;
    colPartNoRepack: TcxGridColumn;
    colPartNameRepack: TcxGridColumn;
    colLotNoRepack: TcxGridColumn;
    colSerialNoRepack: TcxGridColumn;
    colPackSizeRepack: TcxGridColumn;
    colWeightRepack: TcxGridColumn;
    colBoxNoRepack: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    CnPanel4: TCnPanel;
    edtRepackRecieve: TLabeledEdit;
    edtBoxBarcodeRepack: TLabeledEdit;
    btnPreviousRepack: TSpeedButton;
    Label25: TLabel;
    cmbformName: TComboBox;
    RadioGroup1: TRadioGroup;
    imgPart: TImage;
    chkNoPackPackage: TCheckBox;
    chkNoPack_In: TCheckBox;
    DBPipeReportImage: TppDBPipeline;
    pageCheckout: TPageControl;
    Checkout: TTabSheet;
    TabSheet2: TTabSheet;
    CnPanel5: TCnPanel;
    spdRecievedItem: TSpeedButton;
    edtPackBarcodeOut: TLabeledEdit;
    edtBoxBarcodeOut: TLabeledEdit;
    chkNoPack_Out: TCheckBox;
    Panel18: TPanel;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    chkNotCheckFifo: TCheckBox;
    cxgridOut: TcxGrid;
    grdCheckOut: TcxGridTableView;
    cxGridColumn1: TcxGridColumn;
    cxGridColumn2: TcxGridColumn;
    cxGridColumn3: TcxGridColumn;
    cxGridColumn4: TcxGridColumn;
    cxGridColumn5: TcxGridColumn;
    cxGridColumn6: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label26: TLabel;
    edtSearchCode: TLabeledEdit;
    btnSearch: TBitBtn;
    BitBtn14: TBitBtn;
    grdBalance: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    grdBalanceColumn1: TcxGridDBColumn;
    grdBalanceColumn2: TcxGridDBColumn;
    grdBalanceColumn3: TcxGridDBColumn;
    grdBalanceColumn4: TcxGridDBColumn;
    grdBalanceColumn5: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    spdSavetoFile: TSpeedButton;
    spdCrop: TSpeedButton;
    SpeedButton6: TSpeedButton;
    edtTotalPiece: TLabeledEdit;
    edtMode: TEdit;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    btnSaveWithoutFIFO: TBitBtn;
    btnRepeatPrint: TBitBtn;
    Label24: TLabel;
    tabRevert: TsTabSheet;
    Panel19: TPanel;
    edtPackbarcodeRevert: TLabeledEdit;
    edtBoxBarcodeRevert: TLabeledEdit;
    Panel20: TPanel;
    btnSaveRevert: TBitBtn;
    btnCamcelRevert: TBitBtn;
    btnSummaryRevert: TBitBtn;
    Panel21: TPanel;
    cxGrid6: TcxGrid;
    grdRevert: TcxGridTableView;
    cxGridColumn7: TcxGridColumn;
    cxGridColumn8: TcxGridColumn;
    cxGridColumn9: TcxGridColumn;
    colSerialRevert: TcxGridColumn;
    cxGridColumn11: TcxGridColumn;
    cxGridColumn12: TcxGridColumn;
    cxGridLevel4: TcxGridLevel;
    Panel22: TPanel;
    radStoreActionType: TRadioGroup;
    chklReasonRevert: TCheckListBox;
    cxDBCheckBox10: TcxDBCheckBox;
    chkClearActionrevert: TCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    spdModelSelect: TSpeedButton;
    tabProductionOrder: TsTabSheet;
    tabTemplate: TsTabSheet;
    FraProductionOrder1: TFraProductionOrder;
    Panel23: TPanel;
    cxSplitter5: TcxSplitter;
    Panel24: TPanel;
    grdProduction: TcxGridDBTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7: TcxGrid;
    grdProductionOrder_No: TcxGridDBColumn;
    grdProductionOrder_Date: TcxGridDBColumn;
    grdProductionDue_Date: TcxGridDBColumn;
    grdProductionPart_No: TcxGridDBColumn;
    grdProductionPart_Name: TcxGridDBColumn;
    grdProductionPart_No_Internal: TcxGridDBColumn;
    grdProductioncus_id: TcxGridDBColumn;
    grdProductionMat_Code: TcxGridDBColumn;
    grdProductionMat_Size: TcxGridDBColumn;
    grdProductionQnty: TcxGridDBColumn;
    grdProductionCoil_No: TcxGridDBColumn;
    grdProductionCert_No: TcxGridDBColumn;
    grdProductionLot_No: TcxGridDBColumn;
    pnlLeft: TPanel;
    cxSplitter4: TcxSplitter;
    Panel25: TPanel;
    Panel26: TPanel;
    Label27: TLabel;
    edtPartCode: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    edtCustomer: TEdit;
    dbgSelection: TDBGrid;
    Label28: TLabel;
    edtLotToOperate: TEdit;
    Label29: TLabel;
    cxSplitter6: TcxSplitter;
    fraProductionDetail1: TfraProductionDetail;
    lblCustomerId: TLabel;
    lblPartInternal: TLabel;
    btnOk: TBitBtn;
    cxDBCheckBox11: TcxDBCheckBox;
    chkNotcheckLot: TCheckBox;
    chkNotCheckLot2: TCheckBox;
    tabCheck: TsTabSheet;
    Panel27: TPanel;
    radSearchDetail: TRadioGroup;
    edtSearch: TEdit;
    btnSearchDetail: TBitBtn;
    cxGrid8Level1: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGrid8DBCardView1: TcxGridDBCardView;
    cxGrid8DBCardView1Tran_Code: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Part_No: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Lot_No: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Serial_No: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Size: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_per_box: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_In: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Weight: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Material_Code: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Model: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Price: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Inspec_By: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_By: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_In_Date: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Send_By: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Send_Date: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Send: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Cus_id: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Record_Status: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Create_By: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Create_Date: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_Out_By: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_Out_Date: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Cancel_By: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Cancel_Date: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Box_No: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Sale_Order: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Part_Name: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Tran_Code1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Part_No1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Lot_No1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Serial_No1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Size1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_per_box1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_In1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Weight1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Material_Code1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Model1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Price1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Inspec_By1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_By1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_In_Date1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Send_By1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Send_Date1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Pack_Send1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Cus_id1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Record_Status1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Create_By1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Create_Date1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_Out_By1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Check_Out_Date1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Cancel_By1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Cancel_Date1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Box_No1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Sale_Order1: TcxGridDBCardViewRow;
    cxGrid8DBCardView1Part_Name1: TcxGridDBCardViewRow;
    spdSelectPacking: TSpeedButton;
    spdSaveModel: TSpeedButton;
    spdSavePacking: TSpeedButton;
    cxDBCheckBox12: TcxDBCheckBox;
    lbltick: TLabel;
    Panel28: TPanel;
    btnShowPrdDetail: TBitBtn;
    spdCreated: TSpeedButton;
    dtLabelCreateDate: TDateTimePicker;
    lblLabelCreateDate: TLabel;
    spdDispensed: TSpeedButton;
    dtCheckOutDate: TDateTimePicker;
    Label30: TLabel;
    lblTimeofsearchrepack: TLabel;
    edtUpperLimit: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    edtWarning: TDBEdit;
    Label33: TLabel;
    edtLowerWarning: TDBEdit;
    Label34: TLabel;
    edtLowerLimit: TDBEdit;
    btnImmediatelyDispense: TBitBtn;
    pnlSelect: TPanel;
    chkFilterByPart: TCheckBox;
    tabPattern: TsTabSheet;
    FramePattern1: TFramePattern;
    tabPrdData: TsTabSheet;
    PageItem: TPageControl;
    tabItemsProcess: TTabSheet;
    Panel29: TPanel;
    Panel30: TPanel;
    cxGrid9Level1: TcxGridLevel;
    cxGrid9: TcxGrid;
    grdItems: TcxGridDBBandedTableView;
    colItemNo: TcxGridDBBandedColumn;
    colPartNo: TcxGridDBBandedColumn;
    colItemname: TcxGridDBBandedColumn;
    colCusId: TcxGridDBBandedColumn;
    colCusCode: TcxGridDBBandedColumn;
    colCusname: TcxGridDBBandedColumn;
    colMatCode: TcxGridDBBandedColumn;
    colmatSize: TcxGridDBBandedColumn;
    colNumPerKilo: TcxGridDBBandedColumn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    tabItemMapping: TTabSheet;
    Splitter1: TSplitter;
    Panel31: TPanel;
    Panel32: TPanel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cxGrid10DBTableView1: TcxGridDBTableView;
    cxGrid10Level1: TcxGridLevel;
    cxGrid10: TcxGrid;
    cxGrid10DBTableView1Column1: TcxGridDBColumn;
    cxGrid10DBTableView1Column2: TcxGridDBColumn;
    cxGrid10DBTableView1Column3: TcxGridDBColumn;
    Panel33: TPanel;
    btnSaveItem1: TBitBtn;
    btnEditItems: TBitBtn;
    btnDeleteItems: TBitBtn;
    btnCancelItems: TBitBtn;
    btnAdditems: TBitBtn;
    Panel34: TPanel;
    Panel35: TPanel;
    btnSaveProcess: TBitBtn;
    btnEditProcess: TBitBtn;
    btnDeleteprocess: TBitBtn;
    btncancelprocess: TBitBtn;
    btnAddProcess: TBitBtn;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Panel36: TPanel;
    cxSplitter7: TcxSplitter;
    Panel37: TPanel;
    cxGrid11DBTableView1: TcxGridDBTableView;
    cxGrid11Level1: TcxGridLevel;
    cxGrid11: TcxGrid;
    colitemNo2: TcxGridDBColumn;
    colItemname2: TcxGridDBColumn;
    Panel38: TPanel;
    edtSearchitem: TEdit;
    Label47: TLabel;
    Panel39: TPanel;
    Label48: TLabel;
    edtPartNoItem: TEdit;
    edtPartNameItem: TEdit;
    grdselectPart: TDBGrid;
    Panel40: TPanel;
    BitBtn17: TBitBtn;
    BitBtn19: TBitBtn;
    grdItemMapping: TcxGridDBTableView;
    cxGrid12Level1: TcxGridLevel;
    cxGrid12: TcxGrid;
    grdItemMappingColumn1: TcxGridDBColumn;
    grdItemMappingColumn2: TcxGridDBColumn;
    fraProductionNew1: TfraProductionNew;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure sPageControl1Change(Sender: TObject);

    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewCancelClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure edtPartNameButtonClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure edtCustomerNameClick(Sender: TObject);
    procedure edtCustomerNameButtonClick(Sender: TObject);
    procedure spdPartsClick(Sender: TObject);
    procedure spdCustomerNameClick(Sender: TObject);
    procedure spdSaleOrderClick(Sender: TObject);
    procedure edtBoxBarcode_InChange(Sender: TObject);
    procedure btnCancelCheckInClick(Sender: TObject);
    procedure edtPackBarcode_InKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure edtBoxBarcode_InKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveCheckInClick(Sender: TObject);
    procedure edtPackBarcode_InEnter(Sender: TObject);
    procedure edtBoxBarcode_InEnter(Sender: TObject);
    procedure edtPackBarcodeOutKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelOutClick(Sender: TObject);
    procedure btnDeleteOutClick(Sender: TObject);
    procedure btnSaveOutClick(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
    procedure btnGroupingOutClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure btnCancelUserClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnSaveUserClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure spdGenerateClick(Sender: TObject);
    procedure btnEditSettingClick(Sender: TObject);
    procedure btnUpdateSettingClick(Sender: TObject);
    procedure sPageControl2Change(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure btnCreateReportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCreatePartClick(Sender: TObject);
    procedure btnDeletePartClick(Sender: TObject);
    procedure btnEditPartClick(Sender: TObject);
    procedure btnSavePartClick(Sender: TObject);
    procedure btnUpdatePartClick(Sender: TObject);
    procedure btnCancelCustomerClick(Sender: TObject);
    procedure btnUpdateCustomerClick(Sender: TObject);
    procedure btnSaveCustomerClick(Sender: TObject);
    procedure btnEditCustomerClick(Sender: TObject);
    procedure btnDeleteCustomerClick(Sender: TObject);
    procedure btnCreateCustomerClick(Sender: TObject);
    procedure edtBoxBarcodePKKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPackBarcodePKEnter(Sender: TObject);
    procedure edtPackBarcodePKKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeletePKClick(Sender: TObject);
    procedure btnCancelPKClick(Sender: TObject);
    procedure btnSavePKClick(Sender: TObject);
    procedure btnSummaryPKClick(Sender: TObject);
    procedure grdPartsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgPartPictureDblClick(Sender: TObject);
    procedure grdPartsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCancelPartClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure spdCustSearchClick(Sender: TObject);
    procedure spdUserCodeDatabaseClick(Sender: TObject);
    procedure sSkinSelector1Exit(Sender: TObject);
    procedure edtCustomerCodeChange(Sender: TObject);
    procedure edtPartNoChange(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure spdPackingSentClick(Sender: TObject);
    procedure sPageDatabaseChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure spdZoomInClick(Sender: TObject);
    procedure ComboCloseUp(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure P2Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure btnDesignReportClick(Sender: TObject);
    procedure edtRepackRecieveKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBoxBarcodeRepackKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRepackRecieveClick(Sender: TObject);
    procedure btnRepackClick(Sender: TObject);
    procedure btnPreviousRepackClick(Sender: TObject);
    procedure cmbformNameEnter(Sender: TObject);
    procedure edtBoxBarcodePKKeyPress(Sender: TObject; var Key: Char);
    procedure edtPackBarcodePKKeyPress(Sender: TObject; var Key: Char);
    procedure spagePackagingChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure edtSearchCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdSavetoFileClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure imgPartPictureMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgPartPictureMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgPartPictureMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edtTotalPieceChange(Sender: TObject);

    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure btnSaveWithoutFIFOClick(Sender: TObject);
    procedure btnRepeatPrintClick(Sender: TObject);
    procedure cmbPackPerBoxChange(Sender: TObject);
    procedure cmbPackSizeChange(Sender: TObject);
    procedure edtPackbarcodeRevertKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveRevertClick(Sender: TObject);
    procedure btnSendBackClick(Sender: TObject);
    procedure spdProductionOrderClick(Sender: TObject);

    procedure dbgSelectionDblClick(Sender: TObject);
    procedure dbgSelectionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtCustomerChange(Sender: TObject);
    procedure edtCustomerEnter(Sender: TObject);
    procedure edtCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPartCodeChange(Sender: TObject);
    procedure edtPartCodeEnter(Sender: TObject);
    procedure edtPartCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtLotToOperateClick(Sender: TObject);
    procedure edtLotToOperateEnter(Sender: TObject);
    procedure edtPartCodeClick(Sender: TObject);
    procedure edtCustomerClick(Sender: TObject);
    procedure edtLotToOperateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure fraProductionDetail1cxGrid1DBCardView1DblClick(Sender: TObject);
    procedure fraProduction1edtOrderNoChange(Sender: TObject);
    procedure fraProduction1edtMaterialTypeChange(Sender: TObject);
    procedure edtTotalPieceExit(Sender: TObject);
    procedure radSearchDetailClick(Sender: TObject);
    procedure btnSearchDetailClick(Sender: TObject);
    procedure spdModelSelectClick(Sender: TObject);
    procedure spdSelectPackingClick(Sender: TObject);
    procedure spdSavePackingClick(Sender: TObject);
    procedure spdSaveModelClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure fraProduction1btnPrdLineClick(Sender: TObject);
    procedure btnShowPrdDetailClick(Sender: TObject);
    procedure spdCreatedClick(Sender: TObject);
    procedure spdRecievedItemClick(Sender: TObject);
    procedure spdDispensedClick(Sender: TObject);
    procedure pageCheckoutChange(Sender: TObject);
    procedure btnImmediatelyDispenseClick(Sender: TObject);
    procedure PageItemChange(Sender: TObject);
    procedure grdItemsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdItemsEditKeyUp(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnAdditemsClick(Sender: TObject);
    procedure btnCancelItemsClick(Sender: TObject);
    procedure btnEditItemsClick(Sender: TObject);
    procedure btnDeleteItemsClick(Sender: TObject);
    procedure grdItemsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSaveItem1Click(Sender: TObject);
    procedure cxGrid10DBTableView1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnAddProcessClick(Sender: TObject);
    procedure btncancelprocessClick(Sender: TObject);
    procedure btnEditProcessClick(Sender: TObject);
    procedure btnDeleteprocessClick(Sender: TObject);
    procedure btnSaveProcessClick(Sender: TObject);
    procedure edtSearchitemChange(Sender: TObject);
    procedure cxGrid11DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtPartNoItemChange(Sender: TObject);
    procedure edtPartNoItemKeyPress(Sender: TObject; var Key: Char);
    procedure grdselectPartDblClick(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure cxGrid11DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdselectPartKeyPress(Sender: TObject; var Key: Char);
    procedure grdItemMappingCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ppViewer1Click(Sender: TObject);
  private
    function GetData(S: String): TuniQuery;
    function ReadUserList(cUserType: String): TStringList;
    procedure ShowReport(ReportMode: string);
    procedure ShowImage;
    procedure SetSystemLogs;
    function GetSystemReportName: String;
    procedure SaveRepack(Grid: TcxGridTableView; Sender: TObject);
    procedure MoveProcess;
    procedure SetbtnProcess;
    procedure Setmapping;

    { Private declarations }
  public
    { Public declarations }
    zsPercent: Integer;
    zCurrentZoom: Integer;
    stJPGStream: TStream;
  end;

var
  frmMain: TfrmMain;
  SS: String;
  UPass: string;
  SknMenu: array [1 .. 32] of TMenuItem;
  fIdleTime, StartTime:Double;
  X0,Y0,X1,Y1, PackMode,PackMode2 : Integer;
  MouseOfImgDown: Boolean;
  temp_Jpg: TJPEGImage;
  function ComputerName():String;
  procedure SetPathToHome;

implementation

{$R *.dfm}

uses UntConstant, untDM, untPopup, untDocumentNo, UntLogin, untSaleOrder,
  untSummary, untPresaveData,
  untMagnify, untParameters, untSendBack, UntGlobalLibs, untPrdLine,
  untPusrchasingRequest, untPurchasingOrder;
Procedure SetPathToHome();
Var
  src:TSearchRec;
Begin
  FindFirst(AppPath+'\*.*',faAnyFile,src);
End;

Procedure TfrmMain.SetSystemLogs;
begin
  SS:='Insert System_Logs ('
  +' Part_No,Cus_Id,Serial_Type'
  +',User_Id,Report_Name) Values ('
  +''''+edtPartNo.Text+''','''+edtCustomerCode.Text+''','+IntToStr(RadioGroup1.ItemIndex)
  +','''+Uid+''','''+cmbformName.Text+''')';
  dm.RequestData(SS);
end;

function TfrmMain.GetSystemReportName:String;
begin
  SS:='Select Report_Name from System_logs'
  +' where Part_No='''+edtPartNo.Text+''''
  +' and Cus_Id ='''+edtCustomerCode.Text+''''
  +' and Serial_Type='+IntToStr(RadioGroup1.ItemIndex)
  +' order By Log_Id desc ';
  dm.RequestData(SS);
  Result:=dm.qSelect.Fields[0].AsString;
end;

function ComputerName():String;
var
  ComputerName: Array [0 .. 256] of char;
  Size: DWORD;
begin
  Size := 256;
  GetComputerName(ComputerName, Size);
  Result := ComputerName;
end;
procedure TfrmMain.btnSaveCheckInClick(Sender: TObject);
Var
  i: Integer;
  ServDate:TDateTime;
  Function CheckComplete(): Boolean;
  Begin
    Result := False;
    if edtBoxBarcode_In.Text <> '' then
      Result := True;
  End;

begin
  if CheckComplete then
  begin
    dm.UniConnection1.StartTransaction;
    ServDate:= dm.GetServerDate;
    try
      for i := 0 to tvPlanets.DataController.RecordCount - 1 do
      begin
        gString := 'UPDATE inventory SET'
          +' Check_In=''True'''
          +',Check_In_Date='''+FormatDateTime('yyyy-mm-dd hh:mm:00',ServDate)+''''
          +',Check_In=''' + Uid + ''''
          +',Pack_Send_Date = Pack_Send_Date'
          +',Pack_send_By = Pack_send_By'
          +' Where Tran_Code is not null'
          +' and Part_No= ''' +
          tvPlanets.DataController.Values[i, 0] + '''' + ' and Lot_No= ''' +
          tvPlanets.DataController.Values[i, 2] + '''' + ' and Serial_No= ''' +
          tvPlanets.DataController.Values[i, 3] + '''' + ' and Check_In is null';
        dm.UniConnection1.ExecSQL(gString);
      end;
      DM.InsertLogs(tvPlanets.DataController.Values[i-1, 0]
      ,tvPlanets.DataController.Values[i-1, 2]
      ,tvPlanets.DataController.Values[i-1, 3]
      ,StrToIntDef(Uid,1),'Check-in Store',ComputerName);
      dm.UniConnection1.Commit;
      MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
      tvPlanets.DataController.RecordCount := 0;
      edtPackBarcode_In.SetFocus;
    Except
      on E: Exception do
      begin
        dm.UniConnection1.Rollback;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;
  end
  else
    MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
end;

procedure TfrmMain.btnCreateClick(Sender: TObject);
begin
  dm.qUsers.Append;
  btnSaveUser.Enabled := True;
  btnCancelUser.Enabled := True;
  btnEdit.Enabled := False;
end;

procedure TfrmMain.btnCreateCustomerClick(Sender: TObject);
begin
  btnCreateCustomer.Enabled := False;
  btnDeleteCustomer.Enabled := False;
  btnEditCustomer.Enabled := False;

  btnSaveCustomer.Enabled := True;
  btnCancelCustomer.Enabled := True;
  btnUpdateCustomer.Enabled := True;

  dm.qCustomer.Append;
  dm.qCustomer.FieldByName('Create_by').AsString := Uid;
end;

procedure TfrmMain.btnCreatePartClick(Sender: TObject);
begin
  btnCreatePart.Enabled := False;
  btnDeletePart.Enabled := False;
  btnSavePart.Enabled := True;
  btnUpdatePart.Enabled := False;
  btnCancelPart.Enabled := True;
  edtPartNoDatabase.enabled:=True;

  dm.qPart.Append;
  dm.qPart.FieldByName('Create_by').AsString := Uid;
end;

procedure TfrmMain.btnCreateReportClick(Sender: TObject);
begin
  //
end;

procedure TfrmMain.BitBtn10Click(Sender: TObject);
Var
  frm: TfrmSummary;
begin
  frm := TfrmSummary.Create(Self);
  frm.btnSearchCheckdOut.Visible := True;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.BitBtn14Click(Sender: TObject);
begin
  grdbalance.datacontroller.datasource.dataset.close;
end;

procedure TfrmMain.BitBtn15Click(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete, mtConfirmation, [mbYes, mbNo], 0) = mrYes)
  then
  begin
    dm.qUsers.Edit;
    dm.qUsers.FieldByName('User_status').AsString := '0';
    dm.qUsers.Post;
    dm.qUsers.ApplyUpdates;
  end;
  Self.ModalResult := mrNone;
end;

procedure TfrmMain.BitBtn17Click(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete+#13#10+dm.qPrdMapping.Fields[1].AsString, mtConfirmation, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
  Begin
    dm.qPrdMapping.Delete;
    dm.qPrdMapping.ApplyUpdates;
    Setmapping;
  End;
end;

procedure TfrmMain.BitBtn19Click(Sender: TObject);
begin
  if edtPartNoItem.Text<>'' then
  Begin
    dm.qPrdMapping.Append;
    dm.qPrdMapping.FieldByName('Item_No').AsString:= DM.qPrdItems.FieldByName('Item_No').AsString;
    dm.qPrdMapping.FieldByName('Part_No').AsString:= edtPartNoItem.Text;
    dm.qPrdMapping.Post;
    dm.qPrdMapping.ApplyUpdates;
    Setmapping;
  End;
end;

procedure TfrmMain.btnAdditemsClick(Sender: TObject);
begin
  dm.qPrdItems.Append;
  grdItemsMouseMove(Sender,[ssCtrl],0,0);
end;

procedure TfrmMain.btnAddProcessClick(Sender: TObject);
begin
  dm.qPrdProcess.Append;
  SetbtnProcess;
end;

procedure TfrmMain.btnUpdateSettingClick(Sender: TObject);
begin
  dm.RequestData('Select current_timestamp from users limit 1');
  dm.qSetting.FieldByName('Update_Date').AsDateTime := dm.qSelect.Fields[0]
    .AsDateTime;
  dm.qSetting.Post;
  dm.qSetting.ApplyUpdates;
  btnUpdateSetting.Enabled := False;
end;

procedure TfrmMain.C1Click(Sender: TObject);
begin
  btnCancelPKClick(Sender);
end;

procedure TfrmMain.cmbformNameEnter(Sender: TObject);
Var
  F : TSearchRec;
begin
  if cmbformName.Items.Count =0 then
  begin
     if FindFirst(AppPath+'\Sticker*.rtm',faAnyFile,F)=0 then
     begin
        cmbformName.Items.Add(F.Name);

        while FindNext(F)=0 do
        begin
          cmbformName.Items.Add(F.Name);
        end;
        cmbformName.ItemIndex:=0;
     end;

  end;
  cmbformName.Text:=Trim(GetSystemReportName);
end;

procedure TfrmMain.cmbPackPerBoxChange(Sender: TObject);
begin
  if cmbPackPerBox.Focused then
    edtTotalPieceChange(Sender);
end;

procedure TfrmMain.cmbPackSizeChange(Sender: TObject);
begin
  if cmbPackSize.Focused then
    edtTotalPieceChange(Sender);
end;

procedure TfrmMain.ComboCloseUp(Sender: TObject);
begin
  dm.RequestData('select user_id from users where full_name ='''+TComboBox(Sender).Text+'''');
  TComboBox(Sender).Hint:=dm.qSelect.Fields[0].AsString;
end;
procedure TfrmMain.cxGrid10DBTableView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SetbtnProcess;
end;

procedure TfrmMain.cxGrid11DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Setmapping;
end;
procedure TfrmMain.cxGrid11DBTableView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_UP) or (Key = VK_DOWN) then
    Setmapping;
end;

procedure TfrmMain.Setmapping;
Begin
  DM.qPrdMappingGrid.Close;
  DM.qPrdMappingGrid.SQL.Text:='Select M.*,P.Part_Name '
  +' from ItemMapping M inner join Parts P on M.Part_No = P.part_No '
  +' Where Item_No='''+dm.qPrdItems.FieldByName('Item_No').AsString+'''';
  DM.qPrdMappingGrid.Open;
  DM.qPrdMapping.Close;
  DM.qPrdMapping.SQL.Text:='Select * from ItemMapping Where Item_No='''+dm.qPrdItems.FieldByName('Item_No').AsString+'''';
  DM.qPrdMapping.Open;
End;

procedure TfrmMain.SetbtnProcess;
Begin
  if dm.qPrdProcess.State = dsBrowse then
  Begin
    btnSaveProcess.Enabled:=false;
    btncancelprocess.Enabled:=False;
    btnEditProcess.Enabled:=true;
    btnAddProcess.Enabled:=true;
    btnDeleteprocess.Enabled:=True;
  End else
  if (dm.qPrdProcess.State = dsEdit) or (dm.qPrdProcess.State = dsInsert) then
  Begin
    btnSaveProcess.Enabled:=True;
    btncancelprocess.Enabled:=True;
    btnEditProcess.Enabled:=False;
    btnAddProcess.Enabled:=False;
    btnDeleteprocess.Enabled:=False;
  End;
End;

procedure TfrmMain.grdItemMappingCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  dm.qPrdMapping.Locate('Part_No',dm.qPrdMappingGrid.FieldByName('Part_No').AsString,[]);
end;

procedure TfrmMain.grdItemsCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  MoveProcess;
end;

procedure TfrmMain.grdItemsEditKeyUp(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
    MoveProcess;
end;

procedure TfrmMain.grdItemsMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if dm.qPrdItems.State = dsBrowse then
  Begin
    btnSaveItem1.Enabled:=false;
    btnCancelItems.Enabled:=False;
    btnEditItems.Enabled:=true;
    btnAdditems.Enabled:=true;
    btnDeleteItems.Enabled:=True;
  End else
  if (dm.qPrdItems.State = dsEdit) or (dm.qPrdItems.State = dsInsert) then
  Begin
    btnSaveItem1.Enabled:=True;
    btnCancelItems.Enabled:=True;
    btnEditItems.Enabled:=False;
    btnAdditems.Enabled:=False;
    btnDeleteItems.Enabled:=False;
  End;
end;

procedure TfrmMain.MoveProcess;
Begin
  dm.qPrdProcess.SQL.Text:='Select * from ItemProcess '+
  ' Where Item_No='''+dm.qPrdItemsGrid.FieldByName('Item_No').AsString+'''';
  dm.qPrdProcess.Open;

  dm.qPrdItems.Locate('Item_No;Part_No',VarArrayOf([dm.qPrdItemsgrid.fieldbyname('Item_no').AsString,dm.qPrdItemsgrid.fieldbyname('Part_No').AsString]),[]);
End;

procedure TfrmMain.btnEditSettingClick(Sender: TObject);
begin
  dm.qSetting.Edit;
  dm.qSetting.FieldByName('update_by').AsString := Uid;
  btnUpdateSetting.Enabled := True;
  btnEditSetting.Enabled := False;
end;

procedure TfrmMain.BitBtn22Click(Sender: TObject);
begin
  btnEditSetting.Enabled := True;
  dm.qSetting.Cancel;
end;

procedure TfrmMain.btnRepackClick(Sender: TObject);
Var
  Repack_No:String;
  i:integer;
begin
  if grdCheckOut.DataController.RecordCount= 0 then
  begin
    MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
    exit;
  end;

  edtPackBarcodeOut.SetFocus;
  With DM.stGlobal do
  begin
    try
      dm.UniConnection1.StartTransaction;
      Repack_No:=Dm.GetDocNumber('REPACK_NO');
      StoredProcName :='InsertRepackHead';
      Prepare;
      ParamByName('TranCode').Value:= Repack_No;
      ParamByName('CreateBy').Value:=Uid;
      ExecProc;
      i:=0;
      for i:=0 to grdCheckOut.DataController.DataRowCount-1 do
      begin
        ss:='insert into repackdetail ('
        +' tran_code,Part_No,Serial_no'
        +') values ('
        +' '''+ Repack_No+''','''+ cxGridColumn1.DataBinding.DataController.Values[i,0]+''','''+cxGridColumn1.DataBinding.DataController.Values[i,3]+''')';
        dm.UniConnection1.ExecSQL(ss);
      end;

      dm.UniConnection1.Commit;
      MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
      grdCheckOut.DataController.RecordCount:=0;
      edtPackBarcodeOut.SetFocus;
    except on E: Exception do
      begin
        dm.UniConnection1.Rollback;
        MessageDlg(msgSaveFail+#10#13+E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  end;
end;

procedure TfrmMain.btnRepackRecieveClick(Sender: TObject);
var
  I: Integer;
  TransCode:string;
begin
  if grdRepackTableView.DataController.RecordCount =0 then
  begin
    MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
    exit;
  end;

  try
    gString:='Select tran_code from RepackHead where Serial_no='''+grdRepackTableView.DataController.Values[0,3]+'''';
    dm.RequestData(gString);
    if (dm.qSelect.Eof) then
    begin
      MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
      Exit;
    end else
      TransCode:=dm.qSelect.Fields[0].AsString;

    dm.UniConnection1.StartTransaction;
    dm.stGlobal.StoredProcName:='UpdateRepackHead';
    dm.stGlobal.Prepare;
    dm.stGlobal.ParamByName('Tran_code').Value := TransCode;
    dm.stGlobal.ParamByName('User_id').Value := Uid;
    dm.stGlobal.ExecProc;
    for I := 0 to grdRepackTableView.DataController.RowCount -1 do
    begin
      with dm.stGlobal do
      begin
        Dm.stGlobal.Close;
        StoredProcName :='UpdateRepackDetail';
        Prepare;
        ParamByName('UpDateBy').Value:= Uid;
        ParamByName('TranCode').Value:= TransCode;
        ParamByName('PartNo').Value:=grdRepackTableView.DataController.Values[i,0];
        ParamByName('SerialNo').Value:=grdRepackTableView.DataController.Values[i,3];

        ExecProc;
      end;
    end;
    dm.UniConnection1.Commit;
  except on E: Exception do
    begin
       dm.UniConnection1.Rollback;
       MessageDlg(msgSaveFail+#13#10+E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfrmMain.btnRepeatPrintClick(Sender: TObject);
Var
  frmDoc: TfrmDocumentNo;
begin
  if cmbformName.ItemIndex = -1 then
  begin
    MessageDlg(msgSelectForm, mtWarning, [mbOK], 0);
    Exit;
  end;
  frmDoc := TfrmDocumentNo.Create(Self);
  try
    frmDoc.Label1.Caption:='Barcode Of Serial';
    if frmDoc.ShowModal = 1 then
    begin
      SetPathToHome;
      gString :=
        'select I.*,U.Full_Name As Full_packing,U2.Full_Name as Full_Inspector'
        + ' ,P.Part_No,P.Part_Name ' + ',Cus.Cus_Name' +
        ',U3.Full_Name as Full_Checker from Inventory I' +
        ' Left join Users U on I.Create_By = U.User_id' +
        ' Left Join Users U2 on I.Inspec_By =U2.User_id' +
        ' Left Join Users U3 on I.Check_By =U3.User_id' +
        ' left join Parts P on I.Part_No=P.Part_No' +
        ' left join Customers cus on i.cus_id = cus.cus_id ' +
        ' where Tran_code is not null'
        +' and Serial_No='''+frmdoc.edtDocumentNo.Text+''''+
        ' and record_status=''1''';
      dm.RequestDataDset(gString, dm.qReport);
      dm.RequestDataDset('Select Part_Image from Parts where Part_no='''
      +dm.qReport.FieldByName('Part_No').AsString+'''', dm.qReportImage);
      if FileExists(cmbformName.Text, True) then
      begin
        ppSticker.Template.FileName := cmbformName.Text;
        ppSticker.Template.LoadFromFile;
      end;
      if dm.qReport.RecordCount > 0 then
      begin
        ppSticker.ShowPrintDialog:=False;
        ppSticker.ShowCancelDialog:=False;
        ppSticker.DeviceType := dtScreen;
        ppSticker.Print;
        dm.qReport.First;
        if Not dm.qReport.eof then
        begin
          with dm.qReport do
          begin
            DM.InsertLogs(FieldByName('Part_no').AsString,FieldByName('Lot_no').AsString,FieldByName('Serial_no').AsString
            ,StrToIntDef(Uid,0),'Re-Print Sticker',ComputerName);
          end;
        end;
      end
      else
        MessageDlg(msgDataNotFound, mtConfirmation, [mbOK], 0);
    end;
  finally
    frmDoc.Free;
  end;

end;

procedure TfrmMain.BitBtn3Click(Sender: TObject);
begin
  if tvPlanets.DataController.RecordCount = 0 then
  begin
    MessageDlg(msgDataNotFound, mtInformation, [mbOK], 0);
  end
  else
  begin
    if (MessageDlg(msgConfirmToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes)
    then
    begin
      tvPlanets.DataController.DeleteRecord
        (tvPlanets.DataController.FocusedRowIndex);
      edtPackBarcode_In.SetFocus;
    end;
  end;
end;

procedure TfrmMain.BitBtn6Click(Sender: TObject);
Var
  frm: TfrmSummary;
begin
  frm := TfrmSummary.Create(Self);
  frm.btnSearchCheckedIn.Visible := True;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnCancelOutClick(Sender: TObject);
Var
  Serial:String;

  Function CheckNextStep(): Boolean;
  Begin
    Result := True;
//    gString := 'Select Check_Out_By from Inventory ' +
//      ' Where Serial_No=''' + Serial + '''';
//    dm.RequestData(gString);
//    if dm.qSelect.FieldByName('Check_Out_By').AsString<>'' then
//      Result := False;
  End;

begin
  Serial := InputBox('Cancel Package','Read Pack to Cancel','');
  if Serial <>'' then
  begin
    if CheckNextStep then
    begin
      gString:='Update inventory Set'
      +' Record_Status=''0'''
      +',Cancel_Date=Current_TimeStamp'
      +',Cancel_By='''+Uid+''''
      +' where Serial_No='''+ Serial+'''';
      try
        dm.UniConnection1.StartTransaction;
        dm.UniConnection1.ExecSQL(gString);

        dm.UniConnection1.Commit;
        gString:='Select * from inventory where serial_no='''+Serial+'''';
        dm.RequestData(gString);
        with dm.qSelect do
        begin
          DM.InsertLogs(FieldByName('Part_no').AsString,FieldByName('lot_no').AsString,FieldByName('Serial_no').AsString,StrToIntDef(Uid,0),'Cancel Check Out',ComputerName);
        end;
        MessageDlg(msgCancelComplete, mtConfirmation, [mbOK], 0);
      except on E: Exception do
        begin
          dm.UniConnection1.Rollback;
          MessageDlg(msgCannotCancel+#10#13+E.Message, mtWarning, [mbOK], 0);
        end;
      end;
    end else
      MessageDlg(msgCannotCancel, mtWarning, [mbOK], 0);
  end;

  edtPackBarcodeOut.SetFocus;
end;

procedure TfrmMain.btnCancelPartClick(Sender: TObject);
begin
  btnCreatePart.Enabled := True;
  btnDeletePart.Enabled := True;
  btnCancelPart.Enabled := True;
  btnUpdatePart.Enabled := False;
  btnSavePart.Enabled := False;
  dm.qPart.Cancel;
  edtPartNoDatabase.enabled:=False;
end;

procedure TfrmMain.btnCancelPKClick(Sender: TObject);
Var
  Serial:String;

  Function CheckNextStep(): Boolean;
  Begin
    Result := True;
    gString := 'Select Check_In from Inventory ' +
      ' Where Serial_No=''' + Serial + '''';
    dm.RequestData(gString);
    if dm.qSelect.FieldByName('Check_In').AsString<>'' then
      Result := False;
  End;

begin
  Serial := InputBox('Cancel Package','Read Pack to Cancel','');
  if Serial <>'' then
  begin
    if CheckNextStep then
    begin
      gString:='Update inventory Set'
      +' Record_Status=''0'''
      +',Cancel_Date=Current_TimeStamp'
      +',Cancel_By='''+Uid+''''
      +' where Serial_No='''+ Serial+'''';
      try
        dm.UniConnection1.StartTransaction;
        dm.UniConnection1.ExecSQL(gString);

        dm.UniConnection1.Commit;
        gString:='Select * from inventory where serial_no='''+Serial+'''';
        dm.RequestData(gString);
        with dm.qSelect do
        begin
          DM.InsertLogs(FieldByName('Part_no').AsString,FieldByName('lot_no').AsString,FieldByName('Serial_no').AsString,StrToIntDef(Uid,0),'Cancel Packing',ComputerName);
        end;
        MessageDlg(msgCancelComplete, mtConfirmation, [mbOK], 0);
      except on E: Exception do
        begin
          dm.UniConnection1.Rollback;
          MessageDlg(msgCannotCancel+#10#13+E.Message, mtWarning, [mbOK], 0);
        end;
      end;
    end else
      MessageDlg(msgCannotCancel, mtWarning, [mbOK], 0);
  end;

  edtPackBarcodePK.SetFocus;
end;

procedure TfrmMain.btncancelprocessClick(Sender: TObject);
begin
  dm.qPrdProcess.Cancel;
  SetbtnProcess;
end;

procedure TfrmMain.btnCancelUserClick(Sender: TObject);
begin
  dm.qUsers.Cancel;
  btnSaveUser.Enabled := False;
  btnUpdate.Enabled := False;
  btnCancelUser.Enabled := False;
end;

procedure TfrmMain.btnClearClick(Sender: TObject);
begin
  edtPartNo.Text := '';
  edtPartName.Clear;
  edtLotNo.Text := '';
  cmbPackSize.Text := '';
  edtCodeMaterial.Text := '';
  edtMaterialName.Clear;
  edtModel.Text := '';
  cmbCheckBy.Text := '';
  cmbInspecBy.Text := '';
  cmbPackPerBox.Text := '';
  edtWeight.Text := '';
  edtCustomerCode.Text := '';
  edtCustomerName.Clear;
  //RadioGroup1.ItemIndex:=-1;
  edtTotalPiece.Text:='';
end;

procedure TfrmMain.btnDeleteCustomerClick(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    dm.qCustomer.Delete;
    dm.qCustomer.ApplyUpdates;
  end;
end;

procedure TfrmMain.btnDeleteItemsClick(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete+#13#10+dm.qPrdItems.FieldByName('Item_No').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  Begin
    dm.qPrdItems.Delete;
    dm.qPrdItems.ApplyUpdates;
    grdItemsMouseMove(Sender,[ssCtrl],0,0);
  End;
end;

procedure TfrmMain.btnDeleteOutClick(Sender: TObject);
begin
  if grdCheckOut.DataController.RecordCount = 0 then
  begin
    MessageDlg(msgDataNotFound, mtInformation, [mbOK], 0);
  end
  else
  begin
    if (MessageDlg(msgConfirmToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes)
    then
    begin
      grdCheckOut.DataController.DeleteRecord
        (grdCheckOut.DataController.FocusedRowIndex);
      edtPackBarcodeOut.SetFocus;
    end;
  end;
end;

procedure TfrmMain.btnDeletePartClick(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete, mtWarning, [mbYes, mbNo], 0) in [mrYes])
  then
  begin
    dm.qPart.Delete;
    dm.qPart.ApplyUpdates;
  end;
  Self.ModalResult := 0;
end;

procedure TfrmMain.btnDeletePKClick(Sender: TObject);
begin
  if grdPackaging.DataController.RecordCount = 0 then
  begin
    MessageDlg(msgDataNotFound, mtInformation, [mbOK], 0);
  end
  else
  begin
    if (MessageDlg(msgConfirmToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes)
    then
    begin
      grdPackaging.DataController.DeleteRecord
        (grdPackaging.DataController.FocusedRowIndex);
      edtPackBarcodePK.SetFocus;
    end;
  end;
  Self.ModalResult := 0;
end;

procedure TfrmMain.btnDeleteprocessClick(Sender: TObject);
begin
  if (MessageDlg(msgConfirmToDelete+#13#10+dm.qPrdProcess.FieldByname('Process_name').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    dm.qPrdProcess.Delete;
    dm.qPrdProcess.ApplyUpdates;
    SetbtnProcess;
  end;
end;

procedure TfrmMain.btnDesignReportClick(Sender: TObject);
begin
  ShowReport('Design');
end;

procedure TfrmMain.btnEditClick(Sender: TObject);
begin
  dm.qUsers.Edit;
  btnUpdate.Enabled := True;
  btnSaveUser.Enabled := False;
  btnEdit.Enabled := False;
  btnCancelUser.Enabled := True;
end;

procedure TfrmMain.btnEditCustomerClick(Sender: TObject);
begin
  btnCreateCustomer.Enabled := False;
  btnDeleteCustomer.Enabled := False;
  btnEditCustomer.Enabled := False;

  btnSaveCustomer.Enabled := False;
  btnCancelCustomer.Enabled := True;
  btnUpdateCustomer.Enabled := True;

  dm.qCustomer.Edit;
  dm.qCustomer.FieldByName('Create_by').AsString := Uid;
end;

procedure TfrmMain.btnEditItemsClick(Sender: TObject);
begin
  dm.qPrdItems.Edit;
  grdItemsMouseMove(Sender,[ssCtrl],0,0);
end;

procedure TfrmMain.btnEditPartClick(Sender: TObject);
begin
  btnCreatePart.Enabled := False;
  btnDeletePart.Enabled := False;
  btnSavePart.Enabled := False;
  btnUpdatePart.Enabled := True;
  btnCancelPart.Enabled := True;

  dm.qPart.Edit;
  dm.qPart.FieldByName('Create_by').AsString := Uid;
end;

procedure TfrmMain.btnEditProcessClick(Sender: TObject);
begin
  dm.qPrdProcess.Edit;
  SetbtnProcess;
end;

procedure TfrmMain.btnGroupClick(Sender: TObject);
begin
  tvPlanets.OptionsView.GroupByBox := Not tvPlanets.OptionsView.GroupByBox;
  if tvPlanets.OptionsView.GroupByBox then
    tvPlanetsColumn3.GroupIndex := 0
  else
    tvPlanetsColumn3.GroupIndex := -1;
end;

procedure TfrmMain.btnGroupingOutClick(Sender: TObject);
begin
  grdCheckOut.OptionsView.GroupByBox := Not grdCheckOut.OptionsView.GroupByBox;
  if grdCheckOut.OptionsView.GroupByBox then
    cxGridColumn3.GroupIndex := 0
  else
    cxGridColumn3.GroupIndex := -1;
end;

procedure TfrmMain.btnImmediatelyDispenseClick(Sender: TObject);
Var
  i: Integer;
  ServDate:TDateTime;
  Function CheckComplete(): Boolean;
  Begin
    Result := False;
    if edtBoxBarcode_In.Text <> '' then
      Result := True;
  End;

begin
  if CheckComplete then
  begin
    dm.UniConnection1.StartTransaction;
    ServDate:= dm.GetServerDate;
    try
      for i := 0 to tvPlanets.DataController.RecordCount - 1 do
      begin
        gString := 'UPDATE inventory SET'
          +' Check_In_Date='''+FormatDateTime('yyyy-mm-dd hh:mm:00',ServDate)+''''
          +',Check_In=' + Uid
          +',Check_Out_Date='''+FormatDateTime('yyyy-mm-dd hh:mm:00',ServDate)+''''
          +',Check_Out_By=' + Uid
          +',Pack_Send_Date = Pack_Send_Date'
          +',Pack_send_By = Pack_send_By'
          +' Where Tran_Code is not null'
          +' and Part_No= ''' +
          tvPlanets.DataController.Values[i, 0] + '''' + ' and Lot_No= ''' +
          tvPlanets.DataController.Values[i, 2] + '''' + ' and Serial_No= ''' +
          tvPlanets.DataController.Values[i, 3] + '''' + ' and Check_In is null';
        dm.UniConnection1.ExecSQL(gString);
      end;
      DM.InsertLogs(tvPlanets.DataController.Values[i-1, 0]
      ,tvPlanets.DataController.Values[i-1, 2]
      ,tvPlanets.DataController.Values[i-1, 3]
      ,StrToIntDef(Uid,1),'Check-in & Immediately Out',ComputerName);
      dm.UniConnection1.Commit;
      MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
      tvPlanets.DataController.RecordCount := 0;
      edtPackBarcode_In.SetFocus;
    Except
      on E: Exception do
      begin
        dm.UniConnection1.Rollback;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;
  end
  else
    MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
end;

procedure TfrmMain.btnOkClick(Sender: TObject);
Var
  Key :Word;
begin
  Key :=13;
  edtLotToOperateKeyUp(Sender,Key,[ssCtrl]);
end;

procedure TfrmMain.btnSendBackClick(Sender: TObject);
begin
  frmSendBack := TfrmSendBack.Create(Self);
  try
    frmSendBack.ShowModal;
  finally
    frmSendBack.Free;
  end;
end;

procedure TfrmMain.btnShowPrdDetailClick(Sender: TObject);
Var
  frm: TfrmPurchase;
begin
  frm := TfrmPurchase.Create(Self);
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnSaveOutClick(Sender: TObject);
Var
  i: Integer;
  Function CheckComplete(): Boolean;
  Begin
    Result := False;
    if edtBoxBarcodeOut.Text <> '' then
      Result := True;
  End;

begin
  if CheckComplete then
  begin
    dm.UniConnection1.StartTransaction;
    try
      for i := 0 to grdCheckOut.DataController.RecordCount - 1 do
      begin
        gString := 'UPDATE inventory SET' +
          ' Check_Out_Date=current_timestamp' + ',Check_Out_By=' + Uid +
//          + ', Box_No=''' + grdCheckOut.DataController.Values[i, 6] + '''' +
          ' Where Tran_Code is not null' + ' and Part_No= ''' +
          grdCheckOut.DataController.Values[i, 0] + '''' + ' and Lot_No= ''' +
          grdCheckOut.DataController.Values[i, 2] + '''' + ' and Serial_No= '''
          + grdCheckOut.DataController.Values[i, 3] + '''' +
          ' and Check_In is not null';

        DM.InsertLogs(grdCheckOut.DataController.Values[i, 0]
        ,grdCheckOut.DataController.Values[i, 2]
        ,grdCheckOut.DataController.Values[i, 3]
        ,StrToIntDef(Uid,1),'Check-out Store',ComputerName);

        dm.UniConnection1.ExecSQL(gString);

        if Not dm.checkFifo(grdCheckOut.DataController.Values[i, 2],grdCheckOut.DataController.Values[i, 0]) then
          raise Exception.Create(msgThisNotFIFO);

      end;
      dm.UniConnection1.Commit;
      MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
      grdCheckOut.DataController.RecordCount := 0;
      edtPackBarcodeOut.SetFocus;
    Except
      on E: Exception do
      begin
        dm.UniConnection1.Rollback;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;
  end
  else
    MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
end;

procedure TfrmMain.btnSavePartClick(Sender: TObject);
begin
  btnCreatePart.Enabled := True;
  btnDeletePart.Enabled := True;
  btnSavePart.Enabled := False;
  btnUpdatePart.Enabled := False;
  btnCancelPart.Enabled := False;
  dm.qPart.FieldByName('Create_Date').AsDateTime := dm.GetServerDate;
  dm.qPart.Post;
  dm.qPart.ApplyUpdates;
  dm.qPart.Close;
  edtPartNoDatabase.enabled:=False;
end;

procedure TfrmMain.btnSavePKClick(Sender: TObject);
Var
  i: Integer;
  Function CheckComplete(): Boolean;
  Begin
//    Result := False;
//    if edtBoxBarcodePK.Text <> '' then
      Result := True;
  End;

begin
  if CheckComplete then
  begin
    dm.UniConnection1.StartTransaction;
    try
      for i := 0 to grdPackaging.DataController.RecordCount - 1 do
      begin
        gString := 'UPDATE inventory SET' + ' Pack_Send=''True''' +
          ',Pack_Send_Date=current_timestamp' + ',Pack_Send_By=''' + Uid + ''''
          +',Box_No='''+grdPackaging.DataController.Values[i, 6]+''''
          + ' Where Tran_Code is not null' + ' and Part_No= ''' +
          grdPackaging.DataController.Values[i, 0] + '''' + ' and Lot_No= ''' +
          grdPackaging.DataController.Values[i, 2] + '''' + ' and Serial_No= '''
          + grdPackaging.DataController.Values[i, 3] + '''' +
          ' and Pack_Send is null';
        dm.UniConnection1.ExecSQL(gString);
        DM.InsertLogs(grdPackaging.DataController.Values[i, 0],grdPackaging.DataController.Values[i, 2]
        ,grdPackaging.DataController.Values[i, 3]
          ,StrToIntDef(Uid,1),'Send Product to Store',ComputerName);
      end;
      dm.UniConnection1.Commit;

      MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
      grdPackaging.DataController.RecordCount := 0;
      edtPackBarcodePK.SetFocus;
    Except
      on E: Exception do
      begin
        dm.UniConnection1.Rollback;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;
  end
  else
    MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
end;

procedure TfrmMain.btnSaveProcessClick(Sender: TObject);
begin
  dm.qPrdProcess.ApplyUpdates;
  SetbtnProcess;
end;

procedure TfrmMain.btnSaveRevertClick(Sender: TObject);
function CheckComplete : Boolean;
Var
  List:String;
  I: Integer;
Begin
  Result:=True;
  if grdRevert.DataController.RecordCount = 0 then
    Result:=False;
  if radStoreActionType.ItemIndex=-1  then
    Result:=False;
  for I := 0 to chklReasonRevert.Items.Count -1 do
  begin
    if chklReasonRevert.Checked[i] = True  then
      List := List+','+ chklReasonRevert.Items[i];
  end;
  if List='' then
    Result:=False;
End;

var
  i: integer;
  j: integer;
begin
  if not CheckComplete then
  begin
    MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
    Exit;
  end;

  with dm.UniConnection1 do
  begin
     try
       StartTransaction;
       for i := 0 to grdRevert.DataController.RecordCount -1  do
       Begin
         for j := 0 to chklReasonRevert.Items.Count-1 do
         Begin
           if chklReasonRevert.Checked[j] then
             ExecProc('Insert_Reverts',[grdRevert.DataController.Values[i,3],Uid,radStoreActionType.Items[radStoreActionType.ItemIndex],chklReasonRevert.Items[j]]);
         End;

          if radStoreActionType.ItemIndex = 0 then
          begin // Re-store
            SS:='Update Inventory Set ' +
               ' Check_out_By = null ' +
               ',Check_Out_Date = null ' +
               ' where Serial_No='''+ grdRevert.DataController.Values[i,3]+'''';
            ExecSQL(SS);
          end
          else
          if radStoreActionType.ItemIndex = 1 then
          begin  // Discard
            SS:='Update Inventory Set ' +
               ' Record_Status=''Discard'' ' +
               ' where Serial_No='''+ grdRevert.DataController.Values[i,3]+'''';
            ExecSQL(SS);
          end
          else
          if radStoreActionType.ItemIndex = 2 then
          begin
           // Repack
            SaveRepack(grdRevert,Sender);
            SS:='Update Inventory Set ' +
            ' Check_out_By = null ' +
            ',Check_Out_Date = null ' +
            ',Check_In = null ' +
            ',Check_In_Date = null '+
            ',Record_Status = ''Repack'''+
            ' where Serial_No='''+ grdRevert.DataController.Values[i,3]+'''';
            ExecSQL(SS);
          end else
          if radStoreActionType.ItemIndex = 3 then
          begin
            //rebuilt
            SS:='';
          end;

          ExecProc('Insert_Logs'
          ,[grdRevert.DataController.Values[i,0]
          ,grdRevert.DataController.Values[i,2]
          ,grdRevert.DataController.Values[i,3]
          ,Uid,'Revert Product: '+radStoreActionType.Items[radStoreActionType.ItemIndex],ComputerName]);
       End;

       Commit;
       MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
       grdRevert.DataController.RecordCount:=0;
       if chkClearActionrevert.Checked then
       begin
         for j := 0 to chklReasonRevert.Items.Count-1 do
         begin
           chklReasonRevert.Checked[j]:= False;
         end;

         radStoreActionType.ItemIndex:=-1;
       end;
       edtPackbarcodeRevert.SetFocus;
     except on E:Exception do
       Begin
         Rollback;
         MessageDlg(msgSaveFail, mtError, [mbOK], 0);
         edtPackbarcodeRevert.SetFocus;
       End;
     end;
  end;
end;

procedure TfrmMain.btnSaveUserClick(Sender: TObject);
begin
  dm.qUsers.Post;
  btnSaveUser.Enabled := False;
  dm.qUsers.ApplyUpdates;
  btnEdit.Enabled := True;
end;

procedure TfrmMain.btnSaveWithoutFIFOClick(Sender: TObject);
Var
  i: Integer;
  Function CheckComplete(): Boolean;
  Begin
    Result := False;
    if edtBoxBarcodeOut.Text <> '' then
      Result := True;
  End;

begin
  if CheckComplete then
  begin
    dm.UniConnection1.StartTransaction;
    try
      for i := 0 to grdCheckOut.DataController.RecordCount - 1 do
      begin
        gString := 'UPDATE inventory SET' +
          ' Check_Out_Date=current_timestamp' + ',Check_Out_By=''' + Uid + '''' +
          ' Where Tran_Code is not null' + ' and Part_No= ''' +
          grdCheckOut.DataController.Values[i, 0] + '''' + ' and Lot_No= ''' +
          grdCheckOut.DataController.Values[i, 2] + '''' + ' and Serial_No= '''
          + grdCheckOut.DataController.Values[i, 3] + '''' +
          ' and Check_In is not null';
        dm.UniConnection1.ExecSQL(gString);

        DM.InsertLogs(grdCheckOut.DataController.Values[i, 0]
        ,grdCheckOut.DataController.Values[i, 2]
        ,grdCheckOut.DataController.Values[i, 3]
        ,StrToIntDef(Uid,1),'Save without FIFO',ComputerName);



      end;
      dm.UniConnection1.Commit;
      MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
      grdCheckOut.DataController.RecordCount := 0;
      edtPackBarcodeOut.SetFocus;
    Except
      on E: Exception do
      begin
        dm.UniConnection1.Rollback;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;
  end
  else
    MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
end;

procedure TfrmMain.btnSearchClick(Sender: TObject);
begin
  with dm do
  begin
    stReport.Close;
    stReport.StoredProcName:='REP_Balance';
    stReport.Prepare;
    stReport.Params[0].Value:=DateTimePicker1.DateTime;
    stReport.Params[1].Value:=edtSearchCode.Text;
    stReport.ExecProc;
    grdBalance.Datacontroller.dataSource:=dm.dReportStore;
  end;
end;

procedure TfrmMain.btnSearchDetailClick(Sender: TObject);
Var
  i:integer;
  cap:String;
begin
  edtSearch.Setfocus;
  if radSearchDetail.ItemIndex = -1 then
    Exit;

  case radSearchDetail.ItemIndex of
    0: gString:='Select * from inventory where Serial_no ='''+edtSearch.Text+'''';
    1: gString:='Select * from inventory where Box_no ='''+edtSearch.Text+'''';
    2: gString:='Select * from inventory where Tran_Code ='''+edtSearch.Text+'''';
    3: gString:='Select * from inventory where Record_Status <>''1''';
  end;

  dm.RequestData(gString);

  for I := 0 to cxGrid8DBCardView1.DataController.DataSet.FieldCount -1 do
  begin
    cap:=cxGrid8DBCardView1.Rows[i].Caption;
    cap:=ReplaceStr(cap,'_',' ');
    cxGrid8DBCardView1.Rows[i].Caption:=cap;
  end;



end;

procedure TfrmMain.btnSummaryPKClick(Sender: TObject);
Var
  frm: TfrmSummary;
begin
  frm := TfrmSummary.Create(Self);
  frm.btnSearchPackaged.Visible := True;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnUpdateClick(Sender: TObject);
begin
  dm.qUsers.Post;
  btnSaveUser.Enabled := False;
  btnCancel.Enabled := False;
  btnUpdate.Enabled := False;
  dm.qUsers.ApplyUpdates;
  btnEdit.Enabled := True;
end;

procedure TfrmMain.btnUpdateCustomerClick(Sender: TObject);
begin
  btnCreateCustomer.Enabled := True;
  btnDeleteCustomer.Enabled := True;
  btnEditCustomer.Enabled := True;

  btnSaveCustomer.Enabled := False;
  btnCancelCustomer.Enabled := False;
  btnUpdateCustomer.Enabled := False;
  dm.qCustomer.FieldByName('Create_date').AsDateTime := dm.GetServerDate;
  dm.qCustomer.Post;
  dm.qCustomer.ApplyUpdates;
end;

procedure TfrmMain.btnUpdatePartClick(Sender: TObject);
begin
  btnCreatePart.Enabled := True;
  btnDeletePart.Enabled := True;
  btnSavePart.Enabled := False;
  btnUpdatePart.Enabled := False;
  btnCancelPart.Enabled := False;
  dm.qPart.FieldByName('Create_Date').AsDateTime := dm.GetServerDate;
  dm.qPart.Post;
  dm.qPart.ApplyUpdates;
  dm.qPart.Close;
end;

procedure TfrmMain.btnCancelCheckInClick(Sender: TObject);
Var
  Serial:String;

  Function CheckNextStep(): Boolean;
  Begin
    Result := True;
    gString := 'Select Check_Out_By from Inventory ' +
      ' Where Serial_No=''' + Serial + '''';
    dm.RequestData(gString);
    if dm.qSelect.FieldByName('Check_Out_By').AsString<>'' then
      Result := False;
  End;

begin
  Serial := InputBox('Cancel Package','Read Pack to Cancel','');
  if Serial <>'' then
  begin
    if CheckNextStep then
    begin
      gString:='Update inventory Set'
      +' Record_Status=''0'''
      +',Cancel_Date=Current_TimeStamp'
      +',Cancel_By='''+Uid+''''
      +' where Serial_No='''+ Serial+'''';
      try
        dm.UniConnection1.StartTransaction;
        dm.UniConnection1.ExecSQL(gString);

        dm.UniConnection1.Commit;
        gString:='Select * from inventory where serial_no='''+Serial+'''';
        dm.RequestData(gString);
        with dm.qSelect do
        begin
          DM.InsertLogs(FieldByName('Part_no').AsString,FieldByName('lot_no').AsString,FieldByName('Serial_no').AsString,StrToIntDef(Uid,0),'Cancel Recieve',ComputerName);
        end;
        MessageDlg(msgCancelComplete, mtConfirmation, [mbOK], 0);
      except on E: Exception do
        begin
          dm.UniConnection1.Rollback;
          MessageDlg(msgCannotCancel+#10#13+E.Message, mtWarning, [mbOK], 0);
        end;
      end;
    end else
      MessageDlg(msgCannotCancel, mtWarning, [mbOK], 0);
  end;

  edtPackBarcode_In.SetFocus;
end;


procedure TfrmMain.btnCancelClick(Sender: TObject);
var
  frmDocumentNo: TfrmDocumentNo;
  Function CheckNextStep(): Boolean;
  Begin
    Result := True;
    gString := 'Select Check_In,Check_Out_By' + ' from Inventory ' +
      ' Where Tran_code=''' + frmDocumentNo.edtDocumentNo.Text + '''';
    dm.RequestData(gString);
    if dm.qSelect.Locate('Check_In', 'True', []) then
      Result := False;
    if dm.qSelect.Locate('Check_Out_By', 'True', []) then
      Result := False;
  End;

begin
  if gDocumentNo = '' then
  begin
    frmDocumentNo := TfrmDocumentNo.Create(Self);
    try
      if (frmDocumentNo.ShowModal = 1) then
      begin
        gDocumentNo:=frmDocumentNo.edtDocumentNo.Text;
        if gDocumentNo <> '' then
        begin
          if CheckNextStep then
          Begin
            if MessageDlg(msgConfirmToCancel + msgDocumentNumber + gDocumentNo,
              mtConfirmation, mbYesNo, 0) = 6 then
            begin
              gString := 'UPDATE INVENTORY SET ' + ' Record_status =''CANCEL'''
                + ' where Tran_code=''' + gDocumentNo + '''';
              dm.RequestData(gString);
            end;
          end
          else
            MessageDlg(msgCannotCancel, mtWarning, [mbOK], 0);
        end;
      end;
    finally
      frmDocumentNo.Free;
    end;
  end;

end;

procedure TfrmMain.btnCancelCustomerClick(Sender: TObject);
begin
  btnCreateCustomer.Enabled := True;
  btnDeleteCustomer.Enabled := True;
  btnSaveCustomer.Enabled := False;
  btnEditCustomer.Enabled := True;
  btnCancelCustomer.Enabled := False;

  dm.qCustomer.Cancel;
end;

procedure TfrmMain.btnCancelItemsClick(Sender: TObject);
begin
  Dm.qPrdItems.Cancel;
  grdItemsMouseMove(Sender,[ssCtrl],0,0);
end;

procedure TfrmMain.btnPreviewClick(Sender: TObject);
Var
  frmDoc: TfrmDocumentNo;
begin
  if cmbformName.ItemIndex = -1 then
  begin
    MessageDlg(msgSelectForm, mtWarning, [mbOK], 0);
    Exit;
  end;
  frmDoc := TfrmDocumentNo.Create(Self);
  try
    frmDoc.edtDocumentNo.Text := gDocumentNo;
    if frmDoc.ShowModal = 1 then
    begin
      SetPathToHome;
      gString :=
        'select I.*,U.Full_Name As Full_packing,U2.Full_Name as Full_Inspector'
        + ' ,P.Part_No,P.Part_Name' + ',Cus.Cus_Name' +
        ',U3.Full_Name as Full_Checker from Inventory I' +
        ' Left join Users U on I.Create_By = U.User_id' +
        ' Left Join Users U2 on I.Inspec_By =U2.User_id' +
        ' Left Join Users U3 on I.Check_By =U3.User_id' +
        ' left join Parts P on I.Part_No=P.Part_No' +
        ' left join Customers cus on i.cus_id = cus.cus_id ' +
        ' where Tran_code=''' + frmDoc.edtDocumentNo.Text + '''' +
        ' and record_status=''1''';
      dm.RequestDataDset(gString, dm.qReport);
      dm.RequestDataDset('Select Part_Image from Parts where Part_no='''
      +dm.qReport.FieldByName('Part_No').AsString+'''', dm.qReportImage);

      if FileExists(cmbformName.Text, True) then
      begin
        ppSticker.Template.FileName := cmbformName.Text;
        ppSticker.Template.LoadFromFile;
      end;
      ppDesigner1.Show;
      DM.InsertLogs(dm.qReport.FieldByName('Part_no').AsString,dm.qReport.FieldByName('Lot_no').AsString,dm.qReport.FieldByName('Serial_no').AsString
            ,StrToIntDef(Uid,0),'Design '+cmbformName.Text,ComputerName);
    end;
  finally
    frmDoc.Free;
  end;
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
Var
  frmDoc: TfrmDocumentNo;
begin
  if cmbformName.ItemIndex = -1 then
  begin
    MessageDlg(msgSelectForm, mtWarning, [mbOK], 0);
    Exit;
  end;
  frmDoc := TfrmDocumentNo.Create(Self);
  try
    frmDoc.edtDocumentNo.Text := gDocumentNo;
    if frmDoc.ShowModal = 1 then
    begin
      SetPathToHome;
      gString :=
        'select I.*,U.Full_Name As Full_packing,U2.Full_Name as Full_Inspector'
        + ' ,P.Part_No,P.Part_Name ' + ',Cus.Cus_Name' +
        ',U3.Full_Name as Full_Checker from Inventory I' +
        ' Left join Users U on I.Create_By = U.User_id' +
        ' Left Join Users U2 on I.Inspec_By =U2.User_id' +
        ' Left Join Users U3 on I.Check_By =U3.User_id' +
        ' left join Parts P on I.Part_No=P.Part_No' +
        ' left join Customers cus on i.cus_id = cus.cus_id ' +
        ' where Tran_code=''' + frmDoc.edtDocumentNo.Text +
        ''' and record_status=''1''';
      dm.RequestDataDset(gString, dm.qReport);
      dm.RequestDataDset('Select Part_Image from Parts where Part_no='''
      +dm.qReport.FieldByName('Part_No').AsString+'''', dm.qReportImage);
      if FileExists(cmbformName.Text, True) then
      begin
        ppSticker.Template.FileName := cmbformName.Text;
        ppSticker.Template.LoadFromFile;
      end;
      if dm.qReport.RecordCount > 0 then
      begin
        ppSticker.ShowPrintDialog:=False;
        ppSticker.ShowCancelDialog:=False;
        ppSticker.DeviceType := dtScreen;
        ppSticker.Print;
        dm.qReport.First;
        if Not dm.qReport.eof then
        begin
          with dm.qReport do
          begin
            DM.InsertLogs(FieldByName('Part_no').AsString,FieldByName('Lot_no').AsString,FieldByName('Serial_no').AsString
            ,StrToIntDef(Uid,0),'Print Sticker',ComputerName);
          end;
        end;
      end
      else
        MessageDlg(msgDataNotFound, mtConfirmation, [mbOK], 0);
    end;
  finally
    frmDoc.Free;
  end;

end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
var
  SS, TRAN, Serial,packUser,InspectUser,CheckUser,Size: String;
  i,temp1,temp2: Integer;
  td:TDateTime;
  frmDoc: TfrmDocumentNo;
  function checkBeforeSave(): Boolean;
  begin
    Result := True;
    if (edtLotNo.Text = '') or (edtPartNo.Text = '') then
      Result := False;
//    if edtOrderNo.Text = '' then
//      Result := False;
    if edtCustomerName.Text = '' then
      Result := False;
    // if edtWeight.Text = '' then
    // Result := False;

    if (cmbPackingBy.ItemIndex = -1) or (cmbPackingBy.Text='') then
      Result:=False;

    if (cmbCheckBy.ItemIndex = -1)  or (cmbCheckBy.Text='') then
      Result:=False;

    if (cmbInspecBy.ItemIndex = -1)  or (cmbInspecBy.Text='') then
      Result:=False;

    if (RadioGroup1.ItemIndex =-1) then
      Result:=False;
    if ((YearOf(Now) = 2017) or (YearOf(Now) = 2560)) and (cmbformName.Text<>'') then
    begin
      if GetSystemReportName = '' then
      begin
        if MessageBox(0, msgConfirmRequestForm, '', MB_ICONQUESTION or MB_YESNO)<> 6 Then
          Result:=False;
      end;
    end;

    if DM.stUsingPrdOrder.Active = False then
    Begin
      MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
      Result:=False;
    End;
    if Trim(edtLotNo.Text) <> Trim(Dm.stUsingPrdOrder.FieldByName('Lot_No').AsString) then
    Begin
      MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
      Result:=False;
    End;

    if Trim(edtCustomerCode.Hint) <> Trim(Dm.stUsingPrdOrder.FieldByName('Cus_Id').AsString) then
    Begin
      MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
      edtCustomerCode.SetFocus;
      Result:=False;
    End;

    if Trim(edtPartNo.Text) <> Trim(Dm.stUsingPrdOrder.FieldByName('Part_No').AsString) then
    Begin
      MessageDlg(msgNotComplete, mtWarning, [mbOK], 0);
      edtPartNo.SetFocus;
      Result:=False;
    End;

  end;

begin
  if checkBeforeSave then
  begin
    if spinNumberOfSerial.Text > '0' then
    begin

      dm.UniConnection1.StartTransaction;
      //TRAN := dm.GetDocNumber('TRANS_CODE');
      gString := 'select set_value from settings' +
        ' where SET_CODE=''TRANS_CODE'' AND SET_TYPE=''TRANS_CODE''';
      dm.RequestData(gString);
      TRAN:=FormatFloat('00000#',dm.qSelect.Fields[0].AsFloat);
      td:= dm.GetServerDate;
      Try
        proSaveProgress.Max := StrToIntDef(spinNumberOfSerial.Text, 1);
        proSaveProgress.Min := 0;
        proSaveProgress.Position := 0;
        proSaveProgress.Visible := True;
        Size:='';
        for i := 1 to StrToIntDef(spinNumberOfSerial.Text, 1) do
        begin
          if (RadioGroup1.ItemIndex=0) then
            Serial := 'B'+FormatDateTime('YY',td)+dm.GetDocNumber('SERIAL_NO')
          else
            Serial := FormatDateTime('YY',td)+dm.GetDocNumber('SERIAL_NO');

          gString := edtCustomerCode.Text;
          packUser := copy(cmbPackingBy.Text,Pos(':',cmbPackingBy.Text)+1,255);
          InspectUser := copy(cmbInspecBy.Text,Pos(':',cmbInspecBy.Text)+1,255) ;
          CheckUser := copy(cmbCheckBy.Text,Pos(':',cmbCheckBy.Text)+1,255);

          Size:= cmbPackSize.Text;
          if RadioGroup1.ItemIndex = 0 then
          begin
            Size:= IntToStr(StrToIntDef(cmbPackSize.Text,1)* StrToIntDef(cmbPackPerBox.Text,1));
            if PackMode2>0 then
            begin
              if (i = StrToIntDef(spinNumberOfSerial.Text,1)-1) then
              Begin
                temp1:=StrToIntDef(edtTotalPiece.Text,0)-PackMode2;
                temp2:=temp1 mod (StrToIntDef(cmbPackSize.Text,1)*(StrToIntDef(cmbPackPerBox.Text,1)));
                Size:= inttoStr(temp2);
              End;
              if (i = StrToIntDef(spinNumberOfSerial.Text,1)) then
                Size:= FormatFloat('#',(StrToIntDef(edtTotalPiece.Text,0) mod StrToIntDef(cmbPackSize.Text,1)));
            end else if (IntToStr(i) = spinNumberOfSerial.Text) then
            begin
              if (PackMode>0) then
              begin
                Size:=IntToStr(PackMode);
              end;
            end;
          end
          else if (IntToStr(i) = spinNumberOfSerial.Text) then
          begin
            if (PackMode>0) then
            begin
              Size:=IntToStr(PackMode);
            end;
          end;

          SS := 'INSERT INTO INVENTORY(' +
            ' TRAN_CODE,PART_NO,LOT_NO' +
            ',SERIAL_NO,PACK_SIZE,RECORD_STATUS' +
            ',CREATE_BY,CREATE_DATE,Material_Code' +
            ',Model,Check_By,Inspec_By'
            + ',Pack_Per_Box,Weight,Cus_id'
            +',Sale_Order,Part_Name ) VALUES (' +
             '''' + TRAN + ''',''' +edtPartNo.Text + ''',''' + edtLotNo.Text + ''''#10#13 +
             ',''' +Serial + ''',' + Size + ',''1'''#10#13 +
             ',''' + packUser +''',CURRENT_TIMESTAMP,''' + edtCodeMaterial.Text + ''''#10#13 +
             ',''' + edtModel.Text + ''',''' + CheckUser + ''',''' +InspectUser + ''''#10#13 +
             ',' + cmbPackPerBox.Text + ',' +IfThen(edtWeight.Text = '', 'NULL', edtWeight.Text) + ',''' +edtCustomerCode.Hint
             + ''','''+edtOrderNo.Text+''','''+edtPartName.Text+''')';
          dm.UniConnection1.ExecSQL(SS);
          Application.ProcessMessages;
          proSaveProgress.StepBy(1);
        end;
        SS:= 'UPDATE SETTINGS SET set_value = set_value+1 '
          +' where set_code=''TRANS_CODE'' and set_type=''TRANS_CODE'+'''';
        dm.UniConnection1.ExecSQL(SS);

        DM.InsertLogs(edtPartNo.Text,edtLotNo.Text,Serial
        ,StrToIntDef(Uid,1),'Create Sticker',ComputerName);

//        if chkLotEnding.Checked then
//        begin
//          try
//            if (MessageDlg(msgConfirmToDelete, mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
//            begin
//               dm.UniConnection1.ExecSQL('Update ProductionOrders Set Recourd_Status=null where ' +
//               ' Order_No='''+dm.stUsingPrdOrder.FieldByName('Order_No').AsString+''''+
//               ' and Order_Date='''+FormatDateTime('yyyy-mm-dd HH:MM:SS',dm.stUsingPrdOrder.FieldByName('Order_No').AsDateTime)+'''');
//            end;
//          except on E:Exception do
//            MessageDlg(msgNotComplete+#13#10+E.Message, mtError, [mbOK], 0);
//          end;
//          chkLotEnding.Checked:=False;
//          dm.stUsingPrdOrder.Delete;
//        End;

        dm.UniConnection1.Commit;
        proSaveProgress.Visible := False;


        frmDoc := TfrmDocumentNo.Create(Self);
        try
          gDocumentNo := TRAN;
          frmDoc.edtDocumentNo.Text := gDocumentNo;
          frmDoc.ShowModal;
        finally
          frmDoc.Free;
        end;
        if cmbformName.Text<>'' then
          SetSystemLogs;

      Except
        on E: Exception do
        begin
          dm.UniConnection1.Rollback;
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      end;
    end;
  end
  else
  begin
    frmDoc := TfrmDocumentNo.Create(Self);
    try
      frmDoc.Label1.Caption := msgNotComplete;
      frmDoc.edtDocumentNo.Visible := False;
      frmDoc.ShowModal;
    finally
      frmDoc.Free;
    end
  end;
end;

procedure TfrmMain.btnSaveCustomerClick(Sender: TObject);
begin
  btnCreateCustomer.Enabled := True;
  btnDeleteCustomer.Enabled := True;
  btnEditCustomer.Enabled := True;

  btnSaveCustomer.Enabled := False;
  btnCancelCustomer.Enabled := False;
  btnUpdateCustomer.Enabled := False;
  dm.qCustomer.FieldByName('Create_date').AsDateTime := dm.GetServerDate;
  dm.qCustomer.FieldByName('cus_id').AsString:=dm.qCustomer.FieldByName('cus_code').AsString;
  dm.qCustomer.Post;
  dm.qCustomer.ApplyUpdates;
end;

procedure TfrmMain.btnSaveItem1Click(Sender: TObject);
begin
  DM.qPrdItems.ApplyUpdates;
  grdItemsMouseMove(Sender,[ssCtrl],0,0);
end;

procedure TfrmMain.edtBoxBarcodePKKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #9) or (Key = #10) then
    edtPackBarcodePK.SetFocus;
end;

procedure TfrmMain.edtBoxBarcodePKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  KeyPreview:=False;
//  if LeftStr(Caption,3) <>'Key' then
//    Caption :='';
//
//  Caption := 'Key'+Caption +'+'+ IntToStr(Key);
//  if (Key = 13) or (Key = 9) or (Key = 10) then
//  begin
//    edtPackBarcodePK.SetFocus;
//    Key :=0;
//  end;
end;

procedure TfrmMain.edtBoxBarcodeRepackKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    edtRepackRecieve.SetFocus;
end;

procedure TfrmMain.edtBoxBarcode_InChange(Sender: TObject);
begin
//  if edtBoxBarcode_In.Text = '' then
//    edtTotalPack_In.Text := '0';
end;

procedure TfrmMain.edtBoxBarcode_InEnter(Sender: TObject);
begin
  edtBoxBarcode_In.SelectAll;
end;

procedure TfrmMain.edtBoxBarcode_InKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    edtPackBarcode_In.SetFocus;
  end;
end;

procedure TfrmMain.D1Click(Sender: TObject);
begin
  btnPreviewClick(Sender);
end;

procedure TfrmMain.D2Click(Sender: TObject);
begin
  ShowReport('Design');
end;

procedure TfrmMain.DBGrid1CellClick(Column: TColumn);
begin
  ShowReport('Print');
end;

Procedure TfrmMain.ShowReport(ReportMode:string);
Var
  frmParameters:TfrmParameters;
  dVal:TDateTime;
begin
  gString:='select Parameter_Name,Data_Type, Parameter_Name As Description'
  +',Parameter_Name As Value'
  +', Current_timeStamp as DateParameter'
  +' from information_schema.PARAMETERS'
  +' where specific_Name =''REP_'+ReplaceStr(dm.qSelect.FieldByName('Name').AsString,' ','_')+''''
  +' and PARAMETER_MODE =''IN'''
  +' and SPECIFIC_SCHEMA='''+sCatalog+'''';
  Dm.RequestDataDset(gString,dm.qStoreInfo);


  while not dm.qStoreInfo.Eof do
  begin
    dm.qStoreInfo.Edit;
    dm.qStoreInfo.FieldByName('Description').AsString:=ReplaceStr(dm.qStoreInfo.FieldByName('Description').AsString,'_',' ');
    dm.qStoreInfo.FieldByName('Value').AsString:='';
    dm.qStoreInfo.Next;
  end;
  dm.qStoreInfo.First;
  frmParameters := TfrmParameters.Create(frmMain);
  try
    if DM.qStoreInfo.RecordCount>0 then
    begin
      if frmParameters.ShowModal = 1 then
      begin
        dm.qStoreInfo.First;
        dm.stReport.StoredProcName:='REP_'+ReplaceStr(dm.qSelect.FieldByName('Name').AsString,' ','_');
        dm.stReport.Prepare;
        while not dm.qStoreInfo.eof do
        begin

          if dm.qStoreInfo.Fields[1].AsString = 'datetime' then
          begin
            dVal := dm.qStoreInfo.Fields[4].AsDateTime;
            dm.stReport.ParamByName(dm.qStoreInfo.Fields[0].AsString).AsDateTime := dVal;
          end
          else if pos('char', dm.qStoreInfo.Fields[1].AsString) > 0 then
          begin
            dm.stReport.ParamByName(dm.qStoreInfo.Fields[0].AsString).Value := dm.qStoreInfo.Fields[3].AsString;
          end
          else if dm.qStoreInfo.Fields[1].AsString = 'int' then
          begin
            dm.stReport.ParamByName(dm.qStoreInfo.Fields[0].AsString).Value := dm.qStoreInfo.Fields[3].AsInteger;
          end;

          dm.qStoreInfo.Next;
        end;
        dm.stReport.ExecProc;
        ppReportStore.Template.FileName:=AppPath+'\REP_'+ReplaceStr(dm.qSelect.FieldByName('Name').AsString,' ','_')+'.rtm';
        if FileExists(AppPath+'\REP_'+ReplaceStr(dm.qSelect.FieldByName('Name').AsString,' ','_')+'.rtm') then
          ppReportStore.Template.LoadFromFile
        else
          ppReportStore.Template.New;

        if ReportMode = 'Print' then
          ppReportStore.PrintToDevices
        else if ReportMode ='Design' then
          ppDesignerReport.Show;

      end;
    end;
  finally
    frmParameters.Free;
  end;
end;

procedure TfrmMain.edtCustomerCodeChange(Sender: TObject);
begin
  if edtCustomerCode.Focused then
  begin
    edtCustomerName.SetFocus;
    edtCustomerNameButtonClick(Sender);
  end;
end;

procedure TfrmMain.edtCustomerNameButtonClick(Sender: TObject);
var
  frm: TfrmSelectPopup;
  S: string;
begin
  frm := TfrmSelectPopup.Create(Self);
  try
    gString := 'Select cus_id,cus_code,cus_name from Customers order By 1';
    S := ' set names tis620';
    dm.RequestDataDset(S, dm.qPopup);
    dm.qPopup.ExecSQL;
    dm.RequestDataDset(gString, dm.qPopup);
    frm.cxGrid1DBTableView1.DataController.DataSource := dm.dPopup;
    frm.cxGrid1DBTableView1Column1.DataBinding.FieldName := dm.qPopup.Fields[1]
      .FieldName;
    frm.cxGrid1DBTableView1Column2.DataBinding.FieldName := dm.qPopup.Fields[2]
      .FieldName;
    if frm.ShowModal = 1 then
    begin
      edtCustomerCode.Text := dm.qPopup.Fields[1].AsString;
      edtCustomerName.Text := dm.qPopup.Fields[2].AsString;
      edtCustomerCode.Hint := dm.qPopup.Fields[0].AsString;
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.edtCustomerNameClick(Sender: TObject);
var
  frmSelectPopup: TfrmSelectPopup;
begin
  frmSelectPopup := TfrmSelectPopup.Create(Self);
  try
    //dm.qFoxCustomer.Open;
    frmSelectPopup.cxGrid1DBTableView1Column1.DataBinding.FieldName :=
      'Cus_code';
    frmSelectPopup.cxGrid1DBTableView1Column2.DataBinding.FieldName :=
      'Cus_name';
//    frmSelectPopup.cxGrid1DBTableView1.DataController.DataSource :=
//      dm.dFoxCustomer;
    if frmSelectPopup.ShowModal = 1 then
    begin
      edtCustomerCode.Text := dm.qFoxCustomer.FieldByName('Cus_code').AsString;
      edtCustomerName.Text := dm.qFoxCustomer.FieldByName('Cus_name').AsString;
    end;
  finally
    frmSelectPopup.Free;
  end;
end;

procedure TfrmMain.edtLotToOperateClick(Sender: TObject);
begin
  pnlSelect.Hide;
end;

procedure TfrmMain.edtLotToOperateEnter(Sender: TObject);
begin
  pnlSelect.Hide;
end;

procedure TfrmMain.edtLotToOperateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13  then
  Begin
    dm.stUsingPrdOrder.Close;
//    if FormatDateTime('yyyy-mm-dd',Now)>= '2017-04-20' then
//    Begin
//      dm.stUsingPrdOrder.StoredProcName:= 'SelectAllPrdOrder';
//      dm.stUsingPrdOrder.Prepare;
//      dm.stUsingPrdOrder.ParamByName('FromDate').Value:= IncDay(Now,-15);
//      dm.stUsingPrdOrder.ParamByName('ToDate').Value:=Now;
//      dm.stUsingPrdOrder.ExecProc;
//    end
//    else
    Begin
      dm.stUsingPrdOrder.StoredProcName:= 'SelectPrdOrder';
      dm.stUsingPrdOrder.Prepare;
      dm.stUsingPrdOrder.ParamByName('PartNo').Value:= lblPartInternal.caption;
      dm.stUsingPrdOrder.ParamByName('CusId').Value:=lblCustomerId.Caption;
      dm.stUsingPrdOrder.ExecProc;

      if Not (DM.stUsingPrdOrder.Locate('Lot_No',VarArrayOf([edtLotToOperate.Text]),[])) then
      Begin
        MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
        edtLotToOperate.SelectAll;
        edtLotToOperate.SetFocus;
      End;
    End;
  End;
end;

procedure TfrmMain.edtPackBarcode_InEnter(Sender: TObject);
begin
  edtPackBarcode_In.SelectAll;
end;

procedure TfrmMain.edtPackBarcode_InKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  i, iRecord: Integer;
  tick: Double;

  procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
  begin
    tvPlanets.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
  end;

  Function ExistedRedcord(Var RecCount: Integer): Boolean;
  Begin
    Result := False;
    RecCount:=tvPlanets.DataController.FindRecordIndexByText(0,3,edtPackBarcode_In.Text,False,True,True);
    Result:= RecCount>-1;
  End;

begin
  tick:= GetTickCount;
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
  if edtPackBarcode_In.Text = '' then
    Exit;

  if (Key = 13) or (Key = 9) or (Key =10) then
  begin
    Key := 0;
    if chkNoPack_In.Checked=False then
    begin
      if UpperCase(LeftStr(edtPackBarcode_In.Text,1))='B' then
      begin
        edtBoxBarcode_In.Text:=edtPackBarcode_In.Text;
        edtPackBarcode_In.Clear;
        exit;
      end;
    end  else
    begin
      if (edtBoxBarcode_In.Text='') then
      begin
        edtBoxBarcode_In.Text:=edtPackBarcode_In.Text;
        edtPackBarcode_In.Clear;
        edtPackBarcode_In.SetFocus;
        exit;
      end;
    end;

    if ExistedRedcord(iRecord) then
    begin
      edtPackBarcode_In.Text := '';
      MessageDlg(msgDataExisted, mtWarning, [mbOK], 0);
      edtPackBarcode_In.SetFocus;
      Exit;
    end
    else
    begin
      
      DM.stSearch.Close;
      DM.stSearch.DisableControls;
      DM.stSearch.StoredProcName:='GetExistedPartBySerialNo2';
      DM.stSearch.Prepare;
      DM.stSearch.Params[0].Value:= edtPackBarcode_In.Text;
      DM.stSearch.ExecProc;

      if chkNotcheckLot.Checked = False then
      Begin
        if DM.stUsingPrdOrder.Active = False then
        Begin
          MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
          Exit;
        End;
        if Trim(dm.stSearch.FieldByName('Lot_No').AsString) <> Trim(Dm.stUsingPrdOrder.FieldByName('Lot_No').AsString) then
        Begin
          MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
          Exit;
        End;
      end;
      if dm.stSearch.RecordCount > 0 then
      begin
        if dm.stSearch.FieldByName('Pack_Send_By').AsString = '' then
        begin
          MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
          Exit;
        end;
        if dm.stSearch.FieldByName('Record_Status').AsString <> '1' then
        begin
          MessageDlg(msgAlreadyCancel, mtWarning, [mbOK], 0);
          edtPackBarcode_In.SelectAll;
          edtPackBarcode_In.SetFocus;
          Exit;
        end;
        if dm.stSearch.FieldByName('Check_in').AsString <> '' then
        begin
          MessageDlg(msgAlreadyReceive, mtWarning, [mbOK], 0);
          edtPackBarcode_In.SelectAll;
          edtPackBarcode_In.SetFocus;
          Exit;
        end;

        //dm.RequestData('Select Pack_Send_By from Inventory Where Serial_No='''+edtPackBarcode_In.Text+'''');
        if dm.stSearch.FieldByName('Pack_Send_By').AsString = '' then
        begin
          MessageDlg(msgItemWasNotSendToStock, mtWarning, [mbOK], 0);
          edtPackBarcode_In.SelectAll;
          edtPackBarcode_In.SetFocus;
          Exit;
        end;

        with tvPlanets.DataController do
        begin
          RecordCount := RecordCount + 1;
          BeginUpdate;
          try
            for i := 0 to dm.stSearch.FieldCount - 5 do
              Values[RecordCount - 1, i] := dm.stSearch.Fields[i].Value;
            Values[RecordCount - 1, colBoxNo.Index] := edtBoxBarcode_In.Text;
          finally
            edtPackBarcode_In.Clear;
            edtPackBarcode_In.SetFocus;
            EndUpdate;
          end;
          SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE);
          beep;
          tick := GetTickCount - tick;
          lbltick.Caption:= 'Search Time: '+FormatFloat('#',tick) +' Milliseconds';
        end;
      end
      else
      begin
        edtPackBarcode_In.Text := '';
        MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
        edtPackBarcode_In.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmMain.edtPartNameButtonClick(Sender: TObject);
var
  frm: TfrmSelectPopup;
begin
  frm := TfrmSelectPopup.Create(Self);
  try
    gString :=
      'Set names tis620; Select Part_no,Part_Name from Parts order By 1';
    dm.RequestDataDset(gString, dm.qPopup);
    frm.cxGrid1DBTableView1.DataController.DataSource := dm.dPopup;
    frm.cxGrid1DBTableView1Column1.DataBinding.FieldName := dm.qPopup.Fields[0]
      .FieldName;
    frm.cxGrid1DBTableView1Column2.DataBinding.FieldName := dm.qPopup.Fields[1]
      .FieldName;
    if frm.ShowModal = 1 then
    begin
      edtPartNo.Text := dm.qPopup.Fields[0].AsString;
      edtPartName.Text := dm.qPopup.Fields[1].AsString;
      ShowImage;
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.edtPartNoChange(Sender: TObject);
begin
  if edtPartNo.Focused then
  begin
    edtPartName.SetFocus;
    edtPartNameButtonClick(Sender);
  end;
end;

procedure TfrmMain.edtPartNoItemChange(Sender: TObject);
begin
  Dm.RequestData('Select Part_No,Part_Name from Parts Where Part_No Like '''+edtPartNoItem.Text+'%'' Order by 1');
  grdselectPart.DataSource:=Dm.dSelect;
  grdselectPart.Visible:=True;
end;

procedure TfrmMain.edtPartNoItemKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    edtPartNoItem.Text:= Dm.qSelect.Fields[0].AsString;
    edtPartNameItem.Text:= Dm.qSelect.Fields[1].AsString;
    grdselectPart.Visible:=False;
  End;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  temp_Jpg.Free;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  stJPGStream.Free;
  frmLogin.Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  S: String;
begin
  //sPageControl1.ActivePageIndex := 0;
  SetWindowLong(Handle, GWL_EXSTYLE, WS_EX_APPWINDOW);
  MouseOfImgDown:=False;
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
  cmbPackSize.Items.Clear;
  S := 'select Set_Value from settings where set_type=''PACK_SIZE'' order by Set_Code';
  GetData(S);
  while not dm.qSelect.Eof do
  begin
    cmbPackSize.Items.Add(dm.qSelect.FieldValues['Set_value']);
    dm.qSelect.Next;
  end;
  cmbPackSize.ItemHeight:=cmbPackSize.Items.Count;

  cmbPackPerBox.Items.Clear;
  S := 'select Set_Value from settings where set_type=''PACK/BOX'' Order By Set_Code';
  GetData(S);
  while not dm.qSelect.Eof do
  begin
    cmbPackPerBox.Items.Add(dm.qSelect.FieldValues['Set_value']);
    dm.qSelect.Next;
  end;
  cmbPackPerBox.ItemHeight:=cmbPackPerBox.Items.Count;

  cmbCheckBy.Items.AddStrings(ReadUserList('User_Checker'));
  cmbInspecBy.Items.AddStrings(ReadUserList('User_InSpector'));
  cmbPackingBy.Items.AddStrings(ReadUserList('User_Packing'));

  S := 'select Set_Value from settings where set_type=''SERIAL_INC''';
  GetData(S);
  spinNumberOfSerial.Increment :=
    StrToInt64Def(dm.qSelect.Fields[0].AsString, 200);

  StatusBar1.Panels[0].Text:= 'Server: '+sServer;
  StatusBar1.Panels[1].Text:= 'Database: '+sCatalog;
  StatusBar1.Panels[2].Text:= 'Date: '+FormatDateTime('DD/MM/YYYY hh:mm:ss',Now);


  stJPGStream := TStream.Create;
end;

procedure TfrmMain.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  fIdleTime:=0;
end;

procedure TfrmMain.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  fIdleTime:=-1;
end;

procedure TfrmMain.RadioGroup1Click(Sender: TObject);
begin
  cmbformName.Text:=GetSystemReportName;
  edtTotalPieceChange(edtTotalPiece);
end;

procedure TfrmMain.radSearchDetailClick(Sender: TObject);
begin
  edtSearch.Setfocus;
end;

Function TfrmMain.ReadUserList(cUserType: String): TStringList;
Var
  Res: TStringList;
begin
  gString :=
    'Select User_id,concat(Full_name,'':'',User_id) Full_name , User_Checker,User_Inspector,User_Packing' +
    ' from Users Where User_Status=''1'' and ' + cUserType + '=''1''' +
    ' order By 1';
  dm.RequestDataDset(gString, dm.qSelect);
  Res := TStringList.Create;

  dm.qSelect.First;
  while not dm.qSelect.Eof do
  begin
    Res.Add(dm.qSelect.FieldByName('Full_name').AsString);
    dm.qSelect.Next;
  end;
  Result := Res;
end;

procedure TfrmMain.FormShow(Sender: TObject);
Var
  i:integer;
  frmPresaveData1:TfrmPresaveData;
begin
  //sPageControl1.ActivePageIndex := 0;
  DM.UseCheck();
  if (MonthOf(Now) > 3) or (YearOf(Now)>2017) then
  Begin
    chkNotcheckLot.Visible:=False;
    chkNotcheckLot2.Visible:=False;
  End;


  for i := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i] is TEdit then
    begin
      TEdit(self.Components[i]).OnEnter:= Action1Execute;
      TEdit(self.Components[i]).OnExit:= Action2Execute;
    end
    else if self.Components[i] is TLabeledEdit then
    begin
      TLabeledEdit(self.Components[i]).OnEnter:= Action1Execute;
      TLabeledEdit(self.Components[i]).OnExit:= Action2Execute;
    end else if self.Components[i] is TCnButtonEdit then
    begin
      TCnButtonEdit(self.Components[i]).OnEnter:= Action1Execute;
      TCnButtonEdit(self.Components[i]).OnExit:= Action2Execute;
    end;

  end;

  temp_Jpg:=TJPEGImage.Create;

    gString := 'Select * from Users where User_id =''' + Uid + '''';
    dm.RequestDataDset(gString, dm.qLogin);

    with dm.qLogin do
    begin

      if Trim(FieldByName('Packing_Status').AsString) <> '1' then
        tabPacking.TabVisible := False;
      if Trim(FieldByName('Receiving_Status').AsString) <> '1' then
        tabReceive.TabVisible := False;
      if Trim(FieldByName('CheckOut_Status').AsString) <> '1' then
        tabCheckOut.TabVisible := False;
      if Trim(FieldByName('Report_Status').AsString) <> '1' then
        tabReport.TabVisible := False;
      if Trim(FieldByName('Setting_Status').AsString) <> '1' then
        tabSetting.TabVisible := False;
      if Trim(FieldByName('Revert_Status').AsString) <> '1' then
        tabRevert.TabVisible := False;

      if Trim(FieldByName('Check_Status').AsString) <> '1' then
        tabCheck.TabVisible := False;

      //tabProductionOrder.TabVisible := False;
      if Trim(FieldByName('PrdOrder_Status').AsString) = '1' then
      Begin
        dm.stGlobal.Close;
        dm.stGlobal.StoredProcName:='Stock_Warning';
        dm.stGlobal.ExecProc;
        dm.dPrevious.DataSet:=dm.stGlobal;
        if dm.stGlobal.RecordCount>0 then
        Begin
          frmPresaveData1 := TfrmPresaveData.Create(Self);
          try
            frmPresaveData1.Caption:='Warning Point';
            frmPresaveData1.cxGrid1DBTableView1Column3.Caption:= 'สัญลักษณ์';
            frmPresaveData1.cxGrid1DBTableView1Column3.DataBinding.FieldName:='WarningSign';
            frmPresaveData1.cxGrid1DBTableView1Column3.GroupIndex:=0;
            frmPresaveData1.cxGrid1DBTableView1Column4.GroupIndex:=-1;
            frmPresaveData1.cxGrid1DBTableView1Column5.GroupIndex:=-1;
            frmPresaveData1.cxGrid1DBTableView1Column6.GroupIndex:=-1;
            frmPresaveData1.cxGrid1DBTableView1Column1.DataBinding.FieldName:='AsIsDate';
            frmPresaveData1.cxGrid1DBTableView1Column1.Caption:='วันที่';
//            frmPresaveData1.cxGrid1DBTableView1.ApplyBestFit();
            frmPresaveData1.BorderStyle:=bsDialog;
            frmPresaveData1.ShowModal;
          finally
            frmPresaveData1.Free;
          end;
        End else
          MessageDlg(msgNoItemsForwarning, mtInformation, [mbOK], 0);
      End;

    end;

end;

procedure TfrmMain.fraProduction1btnPrdLineClick(Sender: TObject);
begin
  frmPrdLine := TfrmPrdLine.Create(Self);
  try
    gString:='Select table_Name from information_Schema.Tables Where Table_Name Like ''LINE_%''';
    Dm.RequestData(gString);
    While Not DM.qSelect.Eof do
    Begin
      frmPrdLine.CheckListBox1.Items.Add(DM.qSelect.Fields[0].AsString);
      DM.qSelect.Next;
    End;

    frmPrdLine.ShowModal;
  finally
    frmPrdLine.Free;
  end;
end;

procedure TfrmMain.fraProduction1edtMaterialTypeChange(Sender: TObject);
begin
  Repaint;
end;

procedure TfrmMain.fraProduction1edtOrderNoChange(Sender: TObject);
begin
  Repaint;
end;

procedure TfrmMain.fraProductionDetail1cxGrid1DBCardView1DblClick(
  Sender: TObject);
begin
  //
  case sPageControl1.ActivePageIndex of
    0: //tabPacking.TabIndex:
    begin
      if spagePackaging.ActivePageIndex = 0 then
      Begin
        With Dm.stUsingPrdOrder do
        Begin
          dm.RequestData('Select cus_code,Cus_Name from customers where cus_id='''+FieldByName('Cus_id').AsString+'''');
          edtCustomerCode.Hint:=FieldByName('Cus_id').AsString;
          edtcustomercode.Text:= DM.qSelect.FieldByName('cus_code').AsString;
          edtCustomerName.Text:=DM.qSelect.FieldByName('Cus_Name').AsString;

          edtPartNo.Text:= FieldByName('Part_No').AsString;
          edtPartName.Text:=FieldByName('Part_Name').AsString;

          edtLotNo.Text:=FieldByName('Lot_No').AsString;
          edtTotalPiece.Text:=FieldByName('Qnty').AsString;

          cmbPackSize.SetFocus;
        End;
      End;
    end;

    1: //tabReceive.TabIndex:
    Begin

    End;

    2: //tabCheckOut.TabIndex:
    Begin

    End;

    3: //tabRevert.TabIndex:
    Begin

    End;
  end;
end;

procedure TfrmMain.S2Click(Sender: TObject);
begin
  btnSavePKClick(Sender);
end;

Function TfrmMain.GetData(S: String): TuniQuery;
Begin
  dm.qSelect.Close;
  dm.qSelect.SQL.Clear;
  dm.qSelect.SQL.Text := S;
  dm.qSelect.Open;
  Result := dm.qSelect;
End;

procedure TfrmMain.grdPartsCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ch: Word;
begin
  ch := vkDown;
  grdPartsKeyUp(Sender, ch, [ssAlt]);
end;

procedure TfrmMain.grdPartsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  jpg: TJpegImage;
  pict: TPicture;
  Stm: TStream;
begin
  if (Key = vkUp) or (Key = vkDown) then
  Begin
    dm.RequestDataDset('select * from parts where part_no=''' +
      dm.qShortPart.Fields[0].AsString + '''', dm.qPart);
    jpg := TJpegImage.Create;
    pict := TPicture.Create;
    try
      if dm.qPart.FieldByName('Part_image').IsNull = False then
      begin
        Stm := dm.qPart.CreateBlobStream
          (TBlobField(dm.qPart.FieldByName('Part_image')), bmRead);
        stJPGStream := dm.qPart.CreateBlobStream
          (TBlobField(dm.qPart.FieldByName('Part_image')), bmRead);
        try
          jpg.LoadFromStream(Stm);
          temp_Jpg.LoadFromStream(Stm);
        finally
          Stm.Free;
        end;
        pict.Assign(jpg);
        imgPartPicture.Picture := pict;
      end
      else
        imgPartPicture.Picture := nil;
    finally
      jpg.Free;
      pict.Free;
    end;
  End;
end;

procedure TfrmMain.grdselectPartDblClick(Sender: TObject);
begin
    edtPartNoItem.Text:= Dm.qSelect.Fields[0].AsString;
    edtPartNameItem.Text:= Dm.qSelect.Fields[1].AsString;
    grdselectPart.Visible:=False;
end;

procedure TfrmMain.grdselectPartKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  Begin
    edtPartNoItem.Text:= Dm.qSelect.Fields[0].AsString;
    edtPartNameItem.Text:= Dm.qSelect.Fields[1].AsString;
    grdselectPart.Visible:=False;
  End;
end;

procedure TfrmMain.imgPartPictureDblClick(Sender: TObject);
Var
  Dlg: TOpenDialog;
  Sz: Integer;
  procedure SaveBlob();
  var
    ms: TMemoryStream;
  begin
    ms := TMemoryStream.Create;
    try
      imgPartPicture.Picture.Graphic.SaveToStream(ms);
      //Make Sure Having Loaded a JPG
      ms.Position := 0;
      TBlobField(dm.qPart.FieldByName('Part_image')).LoadFromStream(ms);
    finally
      ms.Free;
    end;
  end;

  function FileSize(const aFilename: String): Int64;
  var
    info: TWin32FileAttributeData;
  begin
    Result := -1;

    if GetFileAttributesEx(PWideChar(aFilename), GetFileExInfoStandard, @info)
    then
      Result := Int64(info.nFileSizeLow) or Int64(info.nFileSizeHigh shl 32);
  end;

begin
  MouseOfImgDown:=False;
  if dm.qPart.State = dsBrowse then
  begin
    MessageDlg(msgNotComplete, mtConfirmation, [mbOK], 0);
    Exit;
  End;

  Dlg := TOpenDialog.Create(Self);
  try
    Dlg.Filter := 'JPeg File Format|*.jpg;*.jpeg';
    if Dlg.Execute then
    begin
      Sz := FileSize(Dlg.FileName);
      if Sz > 16770000 then
      begin
        MessageDlg(msgFileSizeTooLarge + ' (16MB)', mtError, [mbOK], 0);
        imgPartPicture.Picture := nil;
        Exit;
      end;
      imgPartPicture.Picture.LoadFromFile(Dlg.FileName);
      SaveBlob;
    end;
  finally
    Dlg.Free;
  end;
end;

procedure TfrmMain.imgPartPictureMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  MouseOfImgDown:=True;
  X0:=X;
  Y0:=Y;
end;

procedure TfrmMain.imgPartPictureMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
Var
  bmp: TBitmap;
begin
  bmp:=TBitmap.Create;
  Try
    if MouseOfImgDown then
    begin
      try
      bmp.PixelFormat:=pf24bit;
      bmp.Width:=imgPartPicture.Picture.Bitmap.Width;
      bmp.Height:=imgPartPicture.Picture.Bitmap.Height;
      //if not MouseOfImgDown then
      bmp.Assign(temp_Jpg);

      bmp.Canvas.Pen.Color:=clRed;
      bmp.Canvas.Brush.Style:=bsClear;
      bmp.Canvas.Pen.Style:=psDot;
      bmp.Canvas.Rectangle(X0,Y0,X,Y);
      self.Caption:=IntToStr(X0)+' '+IntToStr(Y0)+' '+IntToStr(X)+' '+ IntToStr(Y);
      bmp.SaveToFile('C:\Temp_JPG.jpg');
      except
        MouseOfImgDown:=False;
      end;
    end;
  Finally
    bmp.Free;
  End;
end;

procedure TfrmMain.imgPartPictureMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MouseOfImgDown:=False;
end;

procedure TfrmMain.edtRepackRecieveKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  i, iRecord: Integer;
  tick: Double;

  procedure SetRecordValue(ARecordIndex, AItemIndex: Integer; AValue: Variant);
  begin
    grdRepackTableView.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
  end;

  Function ExistedRedcord(Var RecCount: Integer): Boolean;
  Begin
    Result := False;
    RecCount:=grdRepackTableView.DataController.FindRecordIndexByText(0,3,edtRepackRecieve.Text,False,True,True);
    Result:= RecCount>-1;
  End;

begin
  tick:= GetTickCount;
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
  if edtRepackRecieve.Text = '' then
    Exit;

  if (Key = 13) or (Key = 9) or (Key =10) then
  begin
    Key := 0;

    if ExistedRedcord(iRecord) then
    begin
      edtRepackRecieve.Text := '';
      MessageDlg(msgDataExisted, mtWarning, [mbOK], 0);
      edtRepackRecieve.SetFocus;
      Exit;
    end
    else
    begin

      DM.stSearch.Close;
      DM.stSearch.DisableControls;
      DM.stSearch.StoredProcName:='RepackSentBySerial';
      DM.stSearch.Prepare;
      DM.stSearch.Params[0].Value:= edtRepackRecieve.Text;
      DM.stSearch.ExecProc;

//      if chkNotcheckLot.Checked = False then
//      Begin
//        if DM.stUsingPrdOrder.Active = False then
//        Begin
//          MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
//          Exit;
//        End;
//        if Trim(dm.stSearch.FieldByName('Lot_No').AsString) <> Trim(Dm.stUsingPrdOrder.FieldByName('Lot_No').AsString) then
//        Begin
//          MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
//          Exit;
//        End;
//      end;
      if dm.stSearch.RecordCount > 0 then
      begin
        if dm.stSearch.FieldByName('Record_Status').AsString <> '1' then
        begin
          MessageDlg(msgAlreadyCancel, mtWarning, [mbOK], 0);
          edtRepackRecieve.SelectAll;
          edtRepackRecieve.SetFocus;
          Exit;
        end;

        with grdRepackTableView.DataController do
        begin
          RecordCount := RecordCount + 1;
          BeginUpdate;
          try
            for i := 0 to dm.stSearch.FieldCount - 5 do
              Values[RecordCount - 1, i] := dm.stSearch.Fields[i].Value;
            Values[RecordCount - 1, colBoxNoRepack.Index] := edtBoxBarcodeRepack.Text;
          finally
            edtPackBarcode_In.Clear;
            edtPackBarcode_In.SetFocus;
            EndUpdate;
          end;
          SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE);
          beep;
          tick := GetTickCount - tick;
          lblTimeofsearchrepack.Caption:= 'Search Time: '+FormatFloat('#',tick) +' Milliseconds';
        end;
      end
      else
      begin
        edtPackBarcode_In.Text := '';
        MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
        edtPackBarcode_In.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmMain.edtSearchCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key =13) or (key= vkTab)  then
    btnSearchClick(btnSearch);
end;

procedure TfrmMain.edtSearchitemChange(Sender: TObject);
begin
  dm.qPrdItems.Locate('Item_No',edtSearchitem.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfrmMain.edtTotalPieceChange(Sender: TObject);
Var
  BoxSize,PackSize,Piece:integer;
begin
  PackMode:=0;
  PackMode2:=0;
  BoxSize:=StrToIntDef(cmbPackSize.Text,1)*StrToIntDef(cmbPackPerBox.Text,1);
  PackSize:=StrToIntDef(cmbPackSize.Text,1);
  Piece:= StrToIntDef(edtTotalPiece.Text,0);
  if RadioGroup1.ItemIndex =0 then
  begin
      spinNumberOfSerial.Text:= FormatFloat('#0',Piece div BoxSize);
    if (StrToIntDef(edtTotalPiece.Text,0) mod (StrToIntDef(cmbPackPerBox.Text,1)*StrToIntDef(cmbPackSize.Text,1))) > 0 then
    begin
      spinNumberOfSerial.Text:= FormatFloat('#0',((Piece div BoxSize)+1));
      PackMode:=(StrToIntDef(edtTotalPiece.Text,0) mod (StrToIntDef(cmbPackSize.Text,1)*StrToIntDef(cmbPackPerBox.Text,1)));
      Application.ProcessMessages;
      edtMode.Text:= FormatFloat('#',PackMode);
      if PackMode div StrToIntDef(cmbPackSize.Text,1) >0 then
      begin
        PackMode2:= PackMode mod StrToIntDef(cmbPackSize.Text,1);
        spinNumberOfSerial.Text:= FormatFloat('#0',((Piece div BoxSize)+2));
        edtMode.Text:= FormatFloat('#',PackMode2);
      end;
    end;
  end else if RadioGroup1.ItemIndex = 1 then
  begin
    spinNumberOfSerial.Text:= IntToStr(StrToIntDef(edtTotalPiece.Text,0) div StrToIntDef(cmbPackSize.Text,1));
    edtMode.Text:=FormatFloat('#0',StrToIntDef(edtTotalPiece.Text,0) mod StrToIntDef(cmbPackSize.Text,1));
    if (StrToIntDef(edtTotalPiece.Text,0) mod StrToIntDef(cmbPackSize.Text,1))>0 then
    begin
      spinNumberOfSerial.Text:= IntToStr(StrToIntDef(edtTotalPiece.Text,0) div StrToIntDef(cmbPackSize.Text,1)+1);
      PackMode:=(StrToIntDef(edtTotalPiece.Text,0) mod StrToIntDef(cmbPackSize.Text,1));
      edtMode.Text:=FormatFloat('#0',PackMode);
    end;
  end;

end;

procedure TfrmMain.edtTotalPieceExit(Sender: TObject);
begin
  if dm.stUsingPrdOrder.Active = False then
    Exit;
//  if StrToIntDef(edtTotalPiece.Text,0) >= dm.stUsingPrdOrder.FieldByName('Qnty').AsInteger then
//  Begin
//    chkLotEnding.Checked:=True;
//  End;
end;

procedure TfrmMain.edtPackBarcodeOutKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  i, iRecord: Integer;
  Function ExistedRedcord(Var RecCount: Integer): Boolean;
  Begin
    Result := False;
    RecCount:=grdCheckOut.DataController.FindRecordIndexByText(0,3,edtPackBarcodeOut.Text,False,True,True);
    Result:= RecCount>-1;
  End;

begin
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
  if edtPackBarcodeOut.Text = '' then
    Exit;

  if (Key = 13) or (Key = 9) or (Key = 10) then
  begin
    if chkNoPack_Out.Checked=False then
    begin
      if UpperCase(LeftStr(edtPackBarcodeOut.Text,1))='B' then
      begin
        edtBoxBarcodeOut.Text:=edtPackBarcodeOut.Text;
        edtPackBarcodeOut.Clear;
        exit;
      end;
    end else
    begin
      if (edtBoxBarcodeOut.Text='') then
      begin
        edtBoxBarcodeOut.Text:=edtPackBarcodeOut.Text;
        edtPackBarcodeOut.Clear;
        edtPackBarcodeOut.SetFocus;
        exit;
      end;
    end;

    if ExistedRedcord(iRecord) then
    begin
      edtPackBarcodeOut.Text := '';
      MessageDlg(msgDataExisted, mtWarning, [mbOK], 0);
      Exit;
    end
    else
    begin
      edtPackBarcodeOut.SelectAll;
      DM.stSearch.Close;
      DM.stSearch.DisableControls;
      DM.stSearch.StoredProcName:='GetExistedPartBySerialNo2';
      DM.stSearch.Prepare;
      DM.stSearch.Params[0].Value:= edtPackBarcodeOut.Text;
      DM.stSearch.ExecProc;

      if chkNotcheckLot2.Checked=False then
      Begin
        if DM.stUsingPrdOrder.Active = False then
        Begin
          MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
          Exit;
        End;
        if Trim(dm.stSearch.FieldByName('Lot_No').AsString) <> Trim(Dm.stUsingPrdOrder.FieldByName('Lot_No').AsString) then
        Begin
          MessageDlg(msgPleaseCheckLot, mtWarning, [mbOK], 0);
          Exit;
        End;
      end;

      if chkNotCheckFifo.Checked = False then
      begin
        if Not dm.checkFifo(dm.stSearch.FieldByName('lot_no').AsString,dm.stSearch.FieldByName('Part_no').AsString) then
        begin
          MessageDlg(msgThisNotFIFO, mtWarning, [mbOK], 0);
          Exit;
        end;
      end;

      if dm.stSearch.RecordCount > 0 then
      begin
        if dm.stSearch.FieldByName('Record_Status').AsString <> '1' then
        begin
          MessageDlg(msgAlreadyCancel, mtWarning, [mbOK], 0);
          edtPackBarcodeOut.SelectAll;
          edtPackBarcodeOut.SetFocus;
          Exit;
        end;
        if dm.stSearch.FieldByName('Check_in').AsString = '' then
        begin
          MessageDlg(msgItemsNotInStock, mtWarning, [mbOK], 0);
          edtPackBarcodeOut.SelectAll;
          edtPackBarcodeOut.SetFocus;
          Exit;
        end;
        if dm.stSearch.FieldByName('Check_Out_By').AsString <> '' then
        begin
          MessageDlg(msgItemsNotInStock, mtWarning, [mbOK], 0);
          edtPackBarcodeOut.SelectAll;
          edtPackBarcodeOut.SetFocus;
          Exit;
        end;
        with grdCheckOut.DataController do
        begin
          RecordCount := RecordCount + 1;
          BeginUpdate;
          try
            for i := 0 to dm.stSearch.FieldCount - 6 do
              Values[RecordCount - 1, i] := dm.stSearch.Fields[i].Value;
          finally
            EndUpdate;
          end;
          SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE);
          beep;
          edtPackBarcodeOut.Text := '';
          edtPackBarcodeOut.SetFocus;
        end;
      end
      else
      begin
        edtPackBarcodeOut.Text := '';
        MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
        edtPackBarcodeOut.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmMain.edtPackBarcodePKEnter(Sender: TObject);
begin
  edtPackBarcodePK.SelectAll;
end;

procedure TfrmMain.edtPackBarcodePKKeyPress(Sender: TObject; var Key: Char);
Var
K : Word;
begin
  if key = #13 then
  begin
    K:=13;
    edtPackBarcodePKKeyUp(Sender,K,[ssAlt]);
  end;
end;

procedure TfrmMain.edtPackBarcodePKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  i, iRecord: Integer;

  Function ExistedRedcord(Var RecCount: Integer): Boolean;
  Begin
    RecCount:=grdPackaging.DataController.FindRecordIndexByText(0,3,edtPackBarcodePK.Text,False,True,True);
    Result:= RecCount>-1;
  End;

begin
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);

  if edtPackBarcodePK.Text = '' then
    Exit;

  if (Key = 13) or (Key = 9) or (Key = 10) then
  begin
    if chkNoPackPackage.Checked=False then
    begin
      if UpperCase(LeftStr(edtPackBarcodePK.Text,1))='B' then
      begin
        edtBoxBarcodePK.Text:=edtPackBarcodePK.Text;
        edtPackBarcodePK.Clear;
        exit;
      end;
    end else
    begin
      if (edtBoxBarcodePK.Text='') then
      begin
        edtBoxBarcodePK.Text:=edtPackBarcodePK.Text;
        edtPackBarcodePK.Clear;
        exit;
      end;
    end;

    if ExistedRedcord(iRecord) then
    begin
      edtPackBarcodePK.Text := '';
      MessageDlg(msgDataExisted, mtWarning, [mbOK], 0);
      edtPackBarcodePK.SetFocus;
      Exit;
    end
    else
    begin
      DM.stSearch.Close;
      DM.stSearch.DisableControls;
      DM.stSearch.StoredProcName:='GetExistedPartBySerialNo2';
      DM.stSearch.Prepare;
      DM.stSearch.Params[0].Value:= edtPackBarcodePK.Text;
      DM.stSearch.ExecProc;
      if dm.stSearch.RecordCount > 0 then
      begin
        if dm.stSearch.FieldByName('Record_Status').AsString <> '1' then
        begin
          MessageDlg(msgAlreadyCancel, mtWarning, [mbOK], 0);
          edtPackBarcodePK.SetFocus;
          Exit;
        end;
        if dm.stSearch.FieldByName('Check_in').AsString <> '' then
        begin
          MessageDlg(msgAlreadyReceive, mtWarning, [mbOK], 0);
          edtPackBarcodePK.SetFocus;
          Exit;
        end;
        with grdPackaging.DataController do
        begin
          RecordCount := RecordCount + 1;
          BeginUpdate;
          try
            for i := 0 to dm.stSearch.FieldCount - 5 do
              Values[RecordCount - 1, i] := dm.stSearch.Fields[i].Value;

            Values[RecordCount - 1, colBox_NoPK.Index]:=edtBoxBarcodePK.Text;
          finally
            EndUpdate;
          end;
          SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE);
          beep;
          edtPackBarcodePK.SelectAll;
          edtPackBarcodePK.Text := '';
          if chkNoPackPackage.Checked=True then
            edtBoxBarcodePK.Clear;
          edtPackBarcodePK.SetFocus;
        end;
      end
      else
      begin
        edtPackBarcodePK.Text := '';
        MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
        edtPackBarcodePK.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmMain.edtPackbarcodeRevertKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  i, iRecord: Integer;
  Function ExistedRedcord(Var RecCount: Integer): Boolean;
  Begin
    Result := False;
    try
      grdRevert.DataController.Filter.Root.Clear;
      grdRevert.DataController.Filter.Root.AddItem(colSerialRevert, foEqual,
        edtPackbarcodeRevert.Text, edtPackbarcodeRevert.Text);
      grdRevert.DataController.Filter.Active := True;
      Application.ProcessMessages;
      i := grdRevert.DataController.FilteredRecordCount;
      RecCount := i;
      Result := i > 0;
    finally
      grdRevert.DataController.Filter.Root.Clear;
      grdRevert.DataController.Filter.Active := False;
    end;
  End;

begin
  SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
  if edtPackbarcodeRevert.Text = '' then
    Exit;

  if (Key = 13) or (Key = 9) or (Key = 10) then
  begin

    if UpperCase(LeftStr(edtPackbarcodeRevert.Text,1))='B' then
    begin
      edtBoxBarcodeRevert.Text:=edtPackbarcodeRevert.Text;
      edtPackbarcodeRevert.Clear;
      exit;
    end;

    if ExistedRedcord(iRecord) then
    begin
      edtPackbarcodeRevert.Text := '';
      MessageDlg(msgDataExisted, mtWarning, [mbOK], 0);
    end
    else
    begin
      edtPackbarcodeRevert.SelectAll;
      DM.stSearch.Close;
      DM.stSearch.DisableControls;
      DM.stSearch.StoredProcName:='GetExistedPartByBoxNo';
      DM.stSearch.Prepare;
      DM.stSearch.Params[0].Value:= edtPackbarcodeRevert.Text;
      DM.stSearch.ExecProc;
      if dm.stSearch.RecordCount>0 then
      begin
        edtBoxBarcodeRevert.Text:=edtPackbarcodeRevert.Text;
        edtPackbarcodeRevert.SelectAll;
      end;
      DM.stSearch.Close;
      DM.stSearch.DisableControls;
      DM.stSearch.StoredProcName:='GetExistedPartBySerialNo';
      DM.stSearch.Prepare;
      DM.stSearch.Params[0].Value:= edtPackbarcodeRevert.Text;
      DM.stSearch.ExecProc;

      if dm.stSearch.RecordCount > 0 then
      begin
        if dm.stSearch.FieldByName('Record_Status').AsString <> '1' then
        begin
          MessageDlg(msgAlreadyCancel, mtWarning, [mbOK], 0);
          edtPackbarcodeRevert.SelectAll;
          edtPackbarcodeRevert.SetFocus;
          Exit;
        end;
        if dm.stSearch.FieldByName('Check_in').AsString = '' then
        begin
          MessageDlg(msgItemsNotInStock, mtWarning, [mbOK], 0);
          edtPackbarcodeRevert.SelectAll;
          edtPackbarcodeRevert.SetFocus;
          Exit;
        end;
        if dm.stSearch.FieldByName('Check_Out_By').AsString = '' then
        begin
          MessageDlg(msgAlreadyReceive, mtWarning, [mbOK], 0);
          edtPackbarcodeRevert.SelectAll;
          edtPackbarcodeRevert.SetFocus;
          Exit;
        end;
        with grdRevert.DataController do
        begin
          RecordCount := RecordCount + 1;
          BeginUpdate;
          try
            for i := 0 to dm.stSearch.FieldCount - 4 do
              Values[RecordCount - 1, i] := dm.stSearch.Fields[i].Value;
          finally
            EndUpdate;
          end;
          SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE);
          beep;
          edtPackbarcodeRevert.Text := '';
          edtPackbarcodeRevert.SetFocus;
        end;
      end
      else
      begin
        edtPackbarcodeRevert.Text := '';
        MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
        edtPackbarcodeRevert.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmMain.sPageControl1Change(Sender: TObject);
Var
  S: String;
begin
  if sPageControl1.ActivePage = tabRevert then
  begin
    S:='SELECT * from Settings Where SET_TYPE like ''STORE-ACTI%'' ORDER BY SET_CODE';
    DM.RequestDataDset(S,DM.qRevert);
    if dm.qRevert.RecordCount=0 then
    begin
      SS:='insert into settings ('
      +' SET_CODE,SET_TYPE,SET_DESCRIPTION' +
       ',SET_VALUE,SET_STATUS,CREATE_BY'+
       ',UPDATE_BY) VALUES (' +
       '''01'',''STORE-ACTION'',''CANCEL BY CUSTOMER''' +
       ',''False'',''1'','+Uid+','+Uid+'),(' +
       '''02'',''STORE-ACTION'',''REVERT TO CLAIM''' +
       ',''False'',''1'','+Uid+','+Uid+'),(' +
       '''03'',''STORE-ACTION'',''RECALL BY OUR COMPANY''' +
       ',''False'',''1'','+Uid+','+Uid+'),(' +
       '''04'',''STORE-ACTION'',''DELIVERY PROBLEMS''' +
       ',''False'',''1'','+Uid+','+Uid+'),(' +
       '''05'',''STORE-ACTION'',''DISPENSE MISTAKE''' +
       ',''False'',''1'','+Uid+','+Uid+')';
       DM.UniConnection1.ExecSQL(SS);
    end;
    chklReasonRevert.Items.Clear;
    while not dm.qRevert.eof do
    begin
      chklReasonRevert.Items.Add(dm.qRevert.FieldByName('set_description').AsString);
      dm.qRevert.Next;
    end;
  end
  else if sPageControl1.ActivePage = tabReport then
  begin
    SS := 'SHOW PROCEDURE STATUS WHERE DB='''+sCatalog+''' and Name like ''REP%''';
    GetData(SS);
    dReportName.DataSet := dm.qSelect;
    with dm.qSelect do
    begin
      while not Eof do
      begin
        S := dm.qSelect.FieldByName('Name').AsString;
        S := ReplaceStr(S, 'REP_', '');
        S := ReplaceStr(S, '_', ' ');
        dm.qSelect.Edit;
        dm.qSelect.FieldByName('Name').AsString := S;
        dm.qSelect.Post;
        Next;
      end;
    end;
  end
  else if sPageControl1.ActivePage = tabReceive then
  begin
    edtPackBarcode_In.Text := '';
    edtBoxBarcode_In.Text := '';
    edtPackBarcode_In.SetFocus;
  end
  else if sPageControl1.ActivePage = tabCheckOut then
  begin
    pageCheckout.TabIndex:=0;
    edtPackBarcodeOut.Text := '';
    edtBoxBarcodeOut.Text := '';
    edtPackBarcodeOut.SetFocus;
  end
  else if sPageControl1.ActivePage = tabSetting then
  begin
    gString := 'select * from Users order by 1';
    dm.RequestDataDset(gString, dm.qUsers);
    with grdUser.DataController.Filter.Root do
    begin
      Clear;
      AddItem(grdUserColumn3, foEqual, dm.qUsers.FieldByName('User_status')
        .AsString, '1');
    end;
    sPageControl2.ActivePageIndex := 0;
  end
  else if sPageControl1.ActivePage = tabPacking then
  begin
    spagePackaging.ActivePageIndex := 0;
    spagePackagingChange(Sender);
  end;
end;

procedure TfrmMain.sPageControl2Change(Sender: TObject);
begin
  if sPageControl2.ActivePage = tabSystem then
  begin
    gString := 'select * from Settings order by set_type,set_code';
    dm.RequestDataDset(gString, dm.qSetting);
  end
  else if sPageControl2.ActivePage = tabUser then
  begin
    sPageControl1Change(Sender);
  end
  else if sPageControl2.ActivePage = tabDatabase then
  begin
    sPageDatabase.ActivePage := tabProducts;
    sPageDatabaseChange(Sender);
  end;

end;

procedure TfrmMain.sPageDatabaseChange(Sender: TObject);
Var
  frm:TfrmProductionOrder;
begin
  if sPageDatabase.ActivePage = tabProducts then
  begin
    dm.RequestDataDset('Select part_no,Part_name from parts order by 1',
        dm.qShortPart);
  end
  else if sPageDatabase.ActivePage = tabCustomer then
  begin
    if dm.qCustomer.Active = False then

      dm.RequestDataDset('select * from customers order by 1', dm.qCustomer);
  end
  else if sPageDatabase.ActivePage = tabTemplate then
  Begin
      DM.stReport.Close;
      DM.stReport.StoredProcName:='Select_Pack_Template';
      DM.stReport.ExecProc;
  End else if sPageDatabase.ActivePage = tabPattern then
  Begin
      DM.RequestDataDset('Select * from Pattern',DM.qPattern);
  End else if sPageDatabase.ActivePage = tabPrdData then
    PageItemChange(Sender);

end;

procedure TfrmMain.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
  begin
    liPage := Strtoint(mskPreviewPage.Text);

    ppViewer1.GotoPage(liPage);
  end; { if, carriage return pressed }

end;

procedure TfrmMain.mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
  begin
    liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

    ppViewer1.ZoomPercentage := liPercentage;

    spbPreviewWhole.Down := False;
    spbPreviewWidth.Down := False;
    spbPreview100Percent.Down := False;

    mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  end; { if, carriage return pressed }

end;

procedure TfrmMain.P1Click(Sender: TObject);
begin
  btnPrintClick(Sender);
end;

procedure TfrmMain.P2Click(Sender: TObject);
begin
  ShowReport('Print');
end;

procedure TfrmMain.pageCheckoutChange(Sender: TObject);
begin
  if pageCheckout.ActivePage = Checkout then
    dtCheckOutDate.Date:=Date;

end;

procedure TfrmMain.PageItemChange(Sender: TObject);
begin
  case PageItem.ActivePageIndex of
    0:
    Begin
      dm.qPrdItemsGrid.SQL.Text:='Select I.*,C.cus_code,C.Cus_Name'+
      ' From Items i left join customers C on i.cus_id=c.cus_id and i.Cus_code = c.cus_code';
      dm.qPrdItemsGrid.Open;

     dm.qPrdItems.SQL.Text:='Select *'+
      ' From Items';
      dm.qPrdItems.Open;

      dm.qPrdProcess.SQL.Text:='Select * '+
      ' From ItemProcess';
      dm.qPrdProcess.Open;
      DBEdit9.DataField:='NumberPerKilo';
      DBEdit8.DataField:='Material_Size';
      DBEdit7.DataField:='Material_Code';
    End;
    1:
    begin
     DBEdit9.DataField:='';
     DBEdit8.DataField:='';
     DBEdit7.DataField:='';
     dm.qPrdItems.SQL.Text:='Select Distinct Item_No, Cus_id, Cus_code, Part_No, Item_Name, Material_Code, Material_Size, NumberPerKilo '+
      ' From Items';
      dm.qPrdItems.Open;

      dm.qPrdMapping.SQL.Text:='Select * '+
      ' From ItemMapping Where Item_no='''+dm.qPrdItems.FieldByName('Item_No').AsString+'''';
      dm.qPrdMapping.Open;

      dm.qPrdMappingGrid.SQL.Text:='Select M.*,P.Part_Name '+
      ' From ItemMapping M inner join Parts P on M.Part_No= P.Part_No '+
      ' Where Item_no='''+dm.qPrdItems.FieldByName('Item_No').AsString+'''';
      dm.qPrdMappingGrid.Open;
    end;
  end;
end;

procedure TfrmMain.ppViewer1Click(Sender: TObject);
begin
  //
end;

procedure TfrmMain.spagePackagingChange(Sender: TObject);
begin
  if spagePackaging.ActivePageIndex =1 then
  begin
    edtPackBarcodePK.SetFocus;
    dtLabelCreateDate.Date:=Now;
  end
  else if spagePackaging.ActivePageIndex =2 then
  begin
    edtRepackRecieve.SetFocus;
  end;
end;

procedure TfrmMain.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TfrmMain.spbPreviewCancelClick(Sender: TObject);
begin
  if ppViewer1.Report.Printing then
    ppViewer1.Cancel;
end;

procedure TfrmMain.spbPreviewFirstClick(Sender: TObject);
begin
  ppViewer1.FirstPage;
end;

procedure TfrmMain.spbPreviewLastClick(Sender: TObject);
begin
  ppViewer1.LastPage;
end;

procedure TfrmMain.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
end;

procedure TfrmMain.spbPreviewPrintClick(Sender: TObject);
begin
  ppViewer1.Print;
end;

procedure TfrmMain.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
end;

procedure TfrmMain.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TfrmMain.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TfrmMain.spdCreatedClick(Sender: TObject);
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='Label_Created';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:= dtLabelCreateDate.Date;
  dm.stGlobal.ExecProc;
  dm.dPrevious.DataSet:=dm.stGlobal;
  frmPresaveData.Show;
  frmPresaveData.Caption:=TSpeedButton(Sender).Caption;
  frmPresaveData.cxGrid1DBTableView1Column1.Caption:='เลขที่เอกสาร';
end;

procedure TfrmMain.spdCustomerNameClick(Sender: TObject);
var
  frmSelectPopup: TfrmSelectPopup;
begin
  frmSelectPopup := TfrmSelectPopup.Create(Self);
  try
    dm.qFoxCustomer.Open;
    frmSelectPopup.cxGrid1DBTableView1.DataController.DataSource :=
      dm.dFoxCustomer;
    frmSelectPopup.cxGrid1DBTableView1Column1.DataBinding.FieldName :=
      'cus_code';
    frmSelectPopup.cxGrid1DBTableView1Column2.DataBinding.FieldName :=
      'cus_name';
    if frmSelectPopup.ShowModal = 1 then
    begin
      edtPartNo.Text := dm.qFoxCustomer.FieldByName('cus_code').AsString;
      edtPartName.Text := dm.qFoxCustomer.FieldByName('cus_name').AsString;

    end;
  finally
    frmSelectPopup.Free;
  end;
end;

procedure TfrmMain.spdGenerateClick(Sender: TObject);
Var
  i: Integer;
begin
  gString := dm.GetDocNumber('USER_ID');
  i := StrToInt64Def(gString, 1);
  dm.qUsers.FieldByName('User_id').AsString := FormatFloat('#', i);
end;

procedure TfrmMain.spdModelSelectClick(Sender: TObject);
var
  frm: TfrmSelectPopup;
  S: string;
begin
  frm := TfrmSelectPopup.Create(Self);
  try
    gString := 'Select Pck_Type,Pck_Value,Pck_Value from Packing_Template Where Pck_Type=''MODEL'' ';
    S := ' set names tis620';
    dm.RequestDataDset(S, dm.qPopup);
    dm.qPopup.ExecSQL;
    dm.RequestDataDset(gString, dm.qPopup);
    frm.cxGrid1DBTableView1.DataController.DataSource := dm.dPopup;
    frm.cxGrid1DBTableView1Column1.DataBinding.FieldName := dm.qPopup.Fields[1]
      .FieldName;
    frm.cxGrid1DBTableView1Column2.DataBinding.FieldName := dm.qPopup.Fields[2]
      .FieldName;
    if frm.ShowModal = 1 then
    begin
      edtModel.Text := dm.qPopup.Fields[1].AsString;
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.spdPartsClick(Sender: TObject);
var
  frmSelectPopup: TfrmSelectPopup;
begin
  frmSelectPopup := TfrmSelectPopup.Create(Self);
  try
    dm.qFoxPart.Open;
    frmSelectPopup.cxGrid1DBTableView1.DataController.DataSource := dm.dFoxPart;
    frmSelectPopup.cxGrid1DBTableView1Column1.DataBinding.FieldName :=
      'prd_code';
    frmSelectPopup.cxGrid1DBTableView1Column2.DataBinding.FieldName :=
      'prd_name';
    if frmSelectPopup.ShowModal = 1 then
    begin
      edtPartNo.Text := dm.qFoxPart.FieldByName('prd_code').AsString;
      edtPartName.Text := dm.qFoxPart.FieldByName('prd_name').AsString;

    end;
  finally
    frmSelectPopup.Free;
  end;
end;

procedure TfrmMain.spdProductionOrderClick(Sender: TObject);
Var
  frm: TfrmProductionOrder;
begin
  frm := TfrmProductionOrder.Create(Self);
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.spdRecievedItemClick(Sender: TObject);
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='Stock_Balance';
  dm.stGlobal.ExecProc;
  dm.dPrevious.DataSet:=dm.stGlobal;
  frmPresaveData.Show;
  frmPresaveData.Caption:=TSpeedButton(Sender).Caption;
  frmPresaveData.cxGrid1DBTableView1Column1.Caption:='วันที่';
end;

procedure TfrmMain.spdSaleOrderClick(Sender: TObject);
var
  frm: TfrmSaleOrder;
begin
  frm := TfrmSaleOrder.Create(Self);
  frm.DateTimePicker1.Date := IncDay(now, -180);
  frm.DateTimePicker2.Date := now;

  try
    if frm.ShowModal = 1 then
    begin
      with dm.qFoxQuery do
      begin
        edtCustomerCode.Text := FieldByName('cus_code').AsString;
        edtCustomerName.Text := FieldByName('cus_name').AsString;
        edtPartNo.Text := FieldByName('prd_code').AsString;
        edtPartName.Text := FieldByName('DESC').AsString;
        edtOrderNo.Text := FieldByName('DOC_NO').AsString;
        edtLotNo.SetFocus;
      end;
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.spdSavetoFileClick(Sender: TObject);
Var
  ch:word;
begin
  with grdParts.DataController.DataSource do
  begin
    dataset.First;
    ch := vkDown;
    while not dataset.eof do
    begin
      grdPartsKeyUp(Sender, ch, [ssAlt]);
      Application.ProcessMessages;
      try
        imgPartPicture.Picture.SaveToFile('img\'+grdParts.DataController.DataSource.DataSet.FieldByName('part_No').AsString+'.jpg');
      except

      end;
      dataset.Next;
    end;
  end;
end;

procedure TfrmMain.spdSelectPackingClick(Sender: TObject);
var
  frm: TfrmSelectPopup;
  S: string;
begin
  frm := TfrmSelectPopup.Create(Self);
  try
    gString := 'Select Pck_Type,Pck_Value,Pck_Value from Packing_Template Where Pck_Type=''PACK'' ';
    S := ' set names tis620';
    dm.RequestDataDset(S, dm.qPopup);
    dm.qPopup.ExecSQL;
    dm.RequestDataDset(gString, dm.qPopup);
    frm.cxGrid1DBTableView1.DataController.DataSource := dm.dPopup;
    frm.cxGrid1DBTableView1Column1.DataBinding.FieldName := dm.qPopup.Fields[1]
      .FieldName;
    frm.cxGrid1DBTableView1Column2.DataBinding.FieldName := dm.qPopup.Fields[2]
      .FieldName;
    if frm.ShowModal = 1 then
    begin
      cmbPackSize.Text := LeftStr(dm.qPopup.Fields[1].AsString,Pos(':',dm.qPopup.Fields[1].AsString)-1);
      cmbPackPerBox.Text := Copy(dm.qPopup.Fields[1].AsString,Pos(':',dm.qPopup.Fields[1].AsString)+1,255);
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
var
  sCode: String;
begin
  if InputQuery(msgInputCode, msgInputCode, sCode) then
  begin
    grdPartsPart_No.SortOrder:=TcxGridSortOrder(0);
    grdPartsPart_No.SortIndex:=0;
    grdParts.DataController.DataSource.DataSet.Locate('Part_no', sCode, [loCaseInsensitive, loPartialKey]);
  end;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
var
  sCode: String;
begin
  if InputQuery(msgInputCode, msgInputDescription, sCode) then
  begin
    grdPartsPart_Name.SortOrder:=TcxGridSortOrder(0);
    grdPartsPart_Name.SortIndex:=0;
    grdParts.DataController.DataSource.DataSet.Locate('Part_Name', sCode, [loCaseInsensitive, loPartialKey]);
  end;

end;

procedure TfrmMain.spdPackingSentClick(Sender: TObject);
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='Stock_From_Packing';
  dm.stGlobal.ExecProc;
  dm.dPrevious.DataSet:=dm.stGlobal;
  frmPresaveData.Show;
  frmPresaveData.Caption:=TSpeedButton(Sender).Caption;
  frmPresaveData.cxGrid1DBTableView1Column1.Caption:='วันที่';
end;

procedure TfrmMain.sSkinSelector1Exit(Sender: TObject);
begin

  // sSkinManager1.Active:=False;
  // sSkinManager1.SkinName := TMenuItem(Sender).Caption;
  // sSkinManager1.Active:=True;
end;

procedure TfrmMain.StatusBar1DblClick(Sender: TObject);
begin
  Timer1.Enabled:= Not Timer1.Enabled;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  fIdleTime:=fIdleTime+1;
  StatusBar1.Panels[3].Text:='Idle Time: '+FormatFloat('#,###',fIdleTime)
  +'   [Will Close in '+FormatFloat('#,### sec]',(MaxIdleTime-fIdleTime));
  if fIdleTime>MaxIdleTime then
    Application.Terminate;
end;

procedure TfrmMain.spdUserCodeDatabaseClick(Sender: TObject);
var
  frmSelectPopup: TfrmSelectPopup;
begin
  frmSelectPopup := TfrmSelectPopup.Create(Self);
  try
    gString := 'Select User_Name,Full_name from Users  order by 1';
    dm.RequestDataDset(gString, dm.qPopup);
    frmSelectPopup.cxGrid1DBTableView1Column1.DataBinding.FieldName :=
      'User_Name';
    frmSelectPopup.cxGrid1DBTableView1Column2.DataBinding.FieldName :=
      'Full_name';
    frmSelectPopup.cxGrid1DBTableView1.DataController.DataSource := dm.dPopup;
    if frmSelectPopup.ShowModal = 1 then
    begin
      dm.qUsers.Locate('User_Name', dm.qPopup.FieldByName('User_Name')
        .AsString, []);
    end;
  finally
    frmSelectPopup.Free;
  end;
end;

procedure TfrmMain.spdZoomInClick(Sender: TObject);
Var
  frm: TfrmMagnify;
  jpg: TJpegImage;
  pict: TPicture;
  procedure SaveBlob();
  var
    ms: TMemoryStream;
  begin
    ms := TMemoryStream.Create;
    try
      imgPartPicture.Picture.Graphic.SaveToStream(ms);
      // make sure having loaded a JPG
      ms.Position := 0;
      TBlobField(dm.qPart.FieldByName('Part_image')).LoadFromStream(ms);

    finally
      ms.Free;
    end;
  end;

begin
  frm := TfrmMagnify.Create(Self);
  try
    if frm.ShowModal = 1 then
    begin
      imgPartPicture.Picture := nil;
      jpg := TJpegImage.Create;
      pict := TPicture.Create;
      try
        jpg.LoadFromFile(JPEGFilename);
        pict.Assign(jpg);
        imgPartPicture.Picture := pict;
        SaveBlob;
      finally
        jpg.Free;
        pict.Free;
      end;
    end;
  finally
    //frm.Free;
  end;

end;

procedure TfrmMain.spdCustSearchClick(Sender: TObject);
var
  frmSelectPopup: TfrmSelectPopup;
begin
  frmSelectPopup := TfrmSelectPopup.Create(Self);
  try
    gString := 'Select cus_code,cus_name from customers  order by 1';
    dm.RequestDataDset(gString, dm.qPopup);
    frmSelectPopup.cxGrid1DBTableView1Column1.DataBinding.FieldName :=
      'Cus_code';
    frmSelectPopup.cxGrid1DBTableView1Column2.DataBinding.FieldName :=
      'Cus_name';
    frmSelectPopup.cxGrid1DBTableView1.DataController.DataSource := dm.dPopup;
    if frmSelectPopup.ShowModal = 1 then
    begin
      dm.qCustomer.Locate('cus_code', dm.qPopup.FieldByName('Cus_code')
        .AsString, []);
    end;
  finally
    frmSelectPopup.Free;
  end;
end;

procedure TfrmMain.spdDispensedClick(Sender: TObject);
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='DispensedItem';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=dtCheckOutDate.Date;
  dm.stGlobal.ExecProc;
  dm.dPrevious.DataSet:=dm.stGlobal;
  frmPresaveData.Show;
  frmPresaveData.Caption:=TSpeedButton(Sender).Caption;
  frmPresaveData.cxGrid1DBTableView1Column1.Caption:='วันที่จ่ายออก';
end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
var
  src: TSearchRec;
  ch:word;
  frm: TfrmMagnify;
  jpg: TJpegImage;
  pict: TPicture;
  procedure SaveBlob();
  var
    ms: TMemoryStream;
  begin
    ms := TMemoryStream.Create;
    try
      imgPartPicture.Picture.Graphic.SaveToStream(ms);
      // make sure having loaded a JPG
      ms.Position := 0;

      TBlobField(dm.qPart.FieldByName('Part_image')).LoadFromStream(ms);

    finally
      ms.Free;
    end;
  end;
begin
  ch := vkDown;
  if FindFirst('img\*.jpg',faAnyFile,src)=0 then
  begin
    grdParts.DataController.DataSource.DataSet.Locate('Part_No',LeftStr(src.Name,Pos('.',src.Name)-1),[]);
    grdPartsKeyUp(Sender, ch, [ssAlt]);
    dm.qPart.Edit;
    dm.qPart.FieldByName('Create_by').AsString := Uid;
    imgPartPicture.Picture.LoadFromFile('img\'+src.Name);
    SaveBlob;
    Application.ProcessMessages;
    dm.qPart.FieldByName('Create_Date').AsDateTime := dm.GetServerDate;
    dm.qPart.Post;
    dm.qPart.ApplyUpdates;
    while FindNext(src) = 0 do
    begin
        grdParts.DataController.DataSource.DataSet.Locate('Part_No',LeftStr(src.Name,Pos('.',src.Name)-1),[]);
        grdPartsKeyUp(Sender, ch, [ssAlt]);
        dm.qPart.Edit;
        dm.qPart.FieldByName('Create_by').AsString := Uid;
        imgPartPicture.Picture.LoadFromFile('img\'+src.Name);
        SaveBlob;
        Application.ProcessMessages;
        dm.qPart.FieldByName('Create_Date').AsDateTime := dm.GetServerDate;
        dm.qPart.Post;
        dm.qPart.ApplyUpdates;
    end;
  end;
  MessageDlg('edqe', mtWarning, [mbOK], 0);

end;

procedure TfrmMain.spdSaveModelClick(Sender: TObject);
begin
  if edtCustomerCode.Text='' then
    Exit;

  if edtPartNo.Text='' then
    Exit;

  Try
    dm.UniConnection1.ExecSQL('Insert into Packing_Template' +
                              '(Pck_Type,Pck_Company,Pck_Part_No' +
                              ',Pck_Value,User_Id) Values (' +
                              '''MODEL'','''+edtCustomerCode.Text+''','''+edtPartNo.Text+'''' +
                              ','''+edtModel.Text+''','''+Uid+'''' +
                              ')');
    MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
  Except
    MessageDlg(msgSaveFail, mtError, [mbOK], 0);

  End;

end;

procedure TfrmMain.spdSavePackingClick(Sender: TObject);
begin
  if edtCustomerCode.Text='' then
    Exit;

  if edtPartNo.Text='' then
    Exit;

  Try
    dm.UniConnection1.ExecSQL('Insert into Packing_Template' +
                              '(Pck_Type,Pck_Company,Pck_Part_No' +
                              ',Pck_Value,User_Id) Values (' +
                              '''PACK'','''+edtCustomerCode.Text+''','''+edtPartNo.Text+'''' +
                              ','''+cmbPackSize.Text+':'+cmbPackPerBox.Text+''','''+Uid+'''' +
                              ')');
    MessageDlg(msgSaveCompleted, mtInformation, [mbOK], 0);
  Except
    MessageDlg(msgSaveFail, mtError, [mbOK], 0);

  End;

end;

procedure TfrmMain.btnPreviousRepackClick(Sender: TObject);
begin
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='RepackSent';
  dm.stGlobal.ExecProc;
  dm.dPrevious.DataSet:=dm.stGlobal;
  frmPresaveData.Show;
  frmPresaveData.Caption:=TSpeedButton(Sender).Caption;
  frmPresaveData.cxGrid1DBTableView1Column1.Caption:='วันที่';
end;
procedure TfrmMain.ShowImage();
Var
  jpg: TJpegImage;
  pict: TPicture;
  Stm: TStream;
begin

    dm.RequestDataDset('select * from parts where part_no=''' +edtPartNo.Text + '''', dm.qPart);
    jpg := TJpegImage.Create;
    pict := TPicture.Create;
    try
      if dm.qPart.FieldByName('Part_image').IsNull = False then
      begin
        Stm := dm.qPart.CreateBlobStream
          (TBlobField(dm.qPart.FieldByName('Part_image')), bmRead);
        stJPGStream := dm.qPart.CreateBlobStream
          (TBlobField(dm.qPart.FieldByName('Part_image')), bmRead);
        try
          jpg.LoadFromStream(Stm);
        finally
          Stm.Free;
        end;
        pict.Assign(jpg);
        imgPart.Picture := pict;
      end
      else
        imgPart.Picture := nil;
    finally
      jpg.Free;
      pict.Free;
    end;
end;

procedure TfrmMain.Action1Execute(Sender: TObject);
begin
  if Sender.ClassType = TLabeledEdit then
     TLabeledEdit(Sender).Color:=clYellow
  else if Sender.ClassType = TEdit then
    TEdit(Sender).Color:= clYellow
  else if Sender.ClassType = TCnButtonEdit then
    TCnButtonEdit(Sender).Color:= clYellow;
end;

procedure TfrmMain.Action2Execute(Sender: TObject);
begin
  if Sender.ClassType = TLabeledEdit then
     TLabeledEdit(Sender).Color:=clWindow
  else if Sender.ClassType = TEdit then
    TEdit(Sender).Color:= clWindow
  else if Sender.ClassType = TCnButtonEdit then
    TCnButtonEdit(Sender).Color:= clWindow;
end;

procedure tfrmMain.SaveRepack(Grid : TcxGridTableView; Sender: TObject);
Var
  Repack_No:String;
  i:integer;
begin
  if Grid.DataController.RecordCount= 0 then
  begin
    MessageDlg(msgDataNotFound, mtWarning, [mbOK], 0);
    exit;
  end;

    Try
      Repack_No:=Dm.GetDocNumber('REPACK_NO');
      SS:='INSERT INTO repackhead(Tran_Code, Create_Date, Create_By, Record_Status)'
      +' VALUES ('''+Repack_No+''', Current_Timestamp,'+Uid+', ''1'')';
      DM.UniConnection1.ExecSQL(SS);
      i:=0;
      for i:=0 to Grid.DataController.DataRowCount-1 do
      begin
        SS:='Insert into repackdetail(Tran_Code, Part_No, Serial_No, Record_Status, Record_Date)'+
        ' values ('''+Repack_No+''', '''+Grid.DataController.Values[i,0]+''', '''+Grid.DataController.Values[i,3]+''', ''1'', Current_Timestamp)';
        DM.UniConnection1.ExecSQL(SS);
      end;

    except on E: Exception do
      begin
        MessageDlg(msgSaveFail+#10#13+E.Message, mtWarning, [mbOK], 0);
      end;
    end;
//  end;
end;

procedure TfrmMain.dbgSelectionDblClick(Sender: TObject);
begin
  SetValue((ActiveEdit as TEdit));

  if ActiveEdit = edtPartCode then
  begin
    SetValue(Edit1);
    lblPartInternal.Caption:= dbgSelection.Fields[2].AsString;
    edtLotToOperate.SetFocus;
  end;
  if ActiveEdit = Edit1 then
  begin
    SetValue(edtPartCode );
    lblPartInternal.Caption:= dbgSelection.Fields[2].AsString;
  end;

  if ActiveEdit = edtCustomer then
  begin
    SetValue(Edit2);
    lblCustomerId.Caption:= dbgSelection.Fields[2].AsString;
    edtLotToOperate.SetFocus;
  end;
  if ActiveEdit = Edit2 then
  begin
    SetValue(edtCustomer );
    lblCustomerId.Caption:= dbgSelection.Fields[2].AsString;
  end;

  if (ActiveEdit = edtCustomer) or (ActiveEdit = Edit2) then
  Begin
    edtPartCode.SetFocus;
    edtPartCode.Text:=' ';
    edtPartCode.Clear;
    //edtPartCodeChange(Sender);
  End;

  pnlSelect.Hide;

end;

procedure TfrmMain.dbgSelectionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    dbgSelectionDblClick(Sender);
    pnlSelect.Hide;
  end;
end;

procedure TfrmMain.Edit1Change(Sender: TObject);
begin
  if not TEdit(Sender).Focused then
    Exit;

  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectPartByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;

  ActiveEdit:= TEdit(Sender);
end;

procedure TfrmMain.Edit1Click(Sender: TObject);
begin
  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectPartByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
  ActiveEdit:= TEdit(Sender);
end;

procedure TfrmMain.Edit1Enter(Sender: TObject);
begin
  ActiveEdit:= Tedit(Sender);
end;

procedure TfrmMain.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;
procedure TfrmMain.Edit2Change(Sender: TObject);
begin
  if not TEdit(Sender).Focused then
    Exit;

  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;

  ActiveEdit:= TEdit(Sender);
end;

procedure TfrmMain.Edit2Click(Sender: TObject);
begin
  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;
  pnlSelect.Visible:=True;
  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByName';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=TEdit(Sender).Text;
  dm.stGlobal.ExecProc;
end;

procedure TfrmMain.Edit2Enter(Sender: TObject);
begin
  ActiveEdit:= Tedit(Sender);
end;

procedure TfrmMain.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TfrmMain.edtCustomerChange(Sender: TObject);
begin
  dm.stGlobal.Close;
  if chkFilterByPart.Checked then
  Begin
    dm.stGlobal.StoredProcName:='SelectCustomerByCode';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtCustomer.Text;
    //dm.stGlobal.Params[1].Value:=edtPartCode.Text;
  End
  else
  Begin
    dm.stGlobal.StoredProcName:='SelectCustomerByCode';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtCustomer.Text;
  End;

  dm.stGlobal.ExecProc;

  pnlSelect.Visible:=True;
  dbgSelection.Visible:=True;

  ActiveEdit:= TEdit(Sender);

  pnlSelect.Top:= edtCustomer.Top+edtCustomer.Height;
  pnlSelect.Left:=edtCustomer.Left;

end;

procedure TfrmMain.edtCustomerClick(Sender: TObject);
begin
  ActiveEdit:= TEdit(Sender);
end;

procedure TfrmMain.edtCustomerEnter(Sender: TObject);
begin


  dm.stGlobal.Close;
  dm.stGlobal.StoredProcName:='SelectCustomerByCode';
  dm.stGlobal.Prepare;
  dm.stGlobal.Params[0].Value:=edtCustomer.Text;
  dm.stGlobal.ExecProc;

  ActiveEdit:= Tedit(Sender);
  pnlSelect.Visible:=True;

  pnlSelect.Visible:=True;
  ActiveEdit:= Tedit(Sender);
  dbgSelection.Visible:=True;

  pnlSelect.Top:= edtCustomer.Top+edtCustomer.Height;
  pnlSelect.Left:=edtCustomer.Left;
end;

procedure TfrmMain.edtCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;

procedure TfrmMain.edtPartCodeChange(Sender: TObject);
begin
  if chkFilterByPart.Checked then
  Begin
    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='selectPartByCodeAndCusId';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtPartCode.Text;
    dm.stGlobal.Params[1].Value:=lblCustomerId.Caption;
  end
  else
  Begin
    dm.stGlobal.Close;
    dm.stGlobal.UnPrepare;
    dm.stGlobal.StoredProcName:='SelectPartByCode';
    dm.stGlobal.Prepare;
    dm.stGlobal.Params[0].Value:=edtPartCode.Text;
  End;
  dm.stGlobal.ExecProc;

  pnlSelect.Top:=TEdit(Sender).Top+TEdit(Sender).Height;

  ActiveEdit:= TEdit(Sender);
  edtPartCodeEnter(Sender);

  pnlSelect.Visible:=True; dbgSelection.Visible:=True;
end;

Procedure TfrmMain.edtPartCodeClick(Sender: TObject);
begin
  ActiveEdit:= TEdit(Sender);
end;

Procedure TfrmMain.edtPartCodeEnter(Sender: TObject);
begin
  pnlSelect.Top:= edtPartCode.Top+edtPartCode.Height;
  pnlSelect.Left:=edtPartCode.Left;
  pnlSelect.Visible:=True;
  ActiveEdit:= Tedit(Sender);
  dbgSelection.Visible:=True;

end;

procedure TfrmMain.edtPartCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    dbgSelection.SetFocus;
end;


end.
