program BarcodeChecking;

uses
  Vcl.Forms,
  UntMain in 'UntMain.pas' {frmMain},
  UntConstant in 'UntConstant.pas',
  untDM in 'untDM.pas' {DM: TDataModule},
  UntLogin in 'UntLogin.pas' {frmLogin},
  untPopup in 'untPopup.pas' {frmSelectPopup},
  untDocumentNo in 'untDocumentNo.pas' {frmDocumentNo},
  untSaleOrder in 'untSaleOrder.pas' {frmSaleOrder},
  untSummary in 'untSummary.pas' {frmSummary},
  Vcl.Themes,
  Vcl.Styles,
  untPresaveData in 'untPresaveData.pas' {frmPresaveData},
  untMagnify in 'untMagnify.pas' {frmMagnify},
  untParameters in 'untParameters.pas' {frmParameters},
  untSendBack in 'untSendBack.pas' {frmSendBack},
  UntGlobalLibs in 'UntGlobalLibs.pas',
  MainFrm in '..\MainFrm.pas' {MainForm},
  untProductionOrder in 'untProductionOrder.pas' {frmProductionOrder},
  untFrameProductionOrder in 'untFrameProductionOrder.pas' {FraProductionOrder: TFrame},
  untFraProduction in 'untFraProduction.pas' {fraProduction: TFrame},
  untProductionDetail in 'untProductionDetail.pas' {fraProductionDetail: TFrame},
  untPrdLine in 'untPrdLine.pas' {frmPrdLine},
  untNodeConfiguration in 'untNodeConfiguration.pas' {FraNodeConfiguration: TFrame},
  untNodes in 'untNodes.pas' {Form1},
  untfraOrder in 'untfraOrder.pas' {fraOrder: TFrame},
  untPusrchasingRequest in 'untPusrchasingRequest.pas' {FraPurChasingRequest: TFrame},
  untPurchasingOrder in 'untPurchasingOrder.pas' {frmPurchase},
  UntPattern in 'UntPattern.pas' {FramePattern: TFrame},
  untFrameProductionNew in 'untFrameProductionNew.pas' {fraProductionNew: TFrame};

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'Barcode Checking ';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPresaveData, frmPresaveData);
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
