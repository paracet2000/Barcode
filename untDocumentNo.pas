unit untDocumentNo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmDocumentNo = class(TForm)
    edtDocumentNo: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentNo: TfrmDocumentNo;

implementation

{$R *.dfm}

procedure TfrmDocumentNo.BitBtn1Click(Sender: TObject);
begin
  hide;
end;

end.
