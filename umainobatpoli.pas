unit umainobatpoli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls;

type
  Tformmainobat = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Shape5: TShape;
    Label18: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape6: TShape;
    Shape9: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Timer1: TTimer;
    Image5: TImage;
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure Kembali1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmainobat: Tformmainobat;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatkeluarga,
  uLihatPasien, ulihatrecord, uLihatTranspeg, ulogindokter, umainobat,
  uMainUtama, uMasterDokter, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuPegawai,
  uPasien, upilihdokter, uPilihKeluarga, uSplash, uAbout, uFamilytypetrans,
  ulihatdataobat, ulogin, uStatusPegawai, uTransunit, AutoCompleteText,
  AutoEdit, ss, uDoctorMain, uLihatBerobatKeluarga, ulihatChart,
  ulihatchart2, ulihatchartobat, ulihatdataberobat, uLihatDataDokter,
  uLihatDataPasien, uLihatpegawai, uLoginAdmin, uMasterPilihan,
  uMenuBerobat, uMenuDokter, uMenuUser, Unit1, uRiwayatpenyakit, utest2,
  uTransaksiuser;

{$R *.dfm}

procedure Tformmainobat.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformmainobat.Kembali1Click(Sender: TObject);
begin
fMainmenu.Show;
formmainobat.Hide;
end;

procedure Tformmainobat.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
end;

procedure Tformmainobat.Image2Click(Sender: TObject);
begin
formobat.Show;
formobat.ADOConnection1.Connected:=true;
formobat.querymasterkelasppertama.Active:=true;
formobat.querykelaskedua.Active:=true;
formobat.querykelastiga.Active:=true;
formobat.qDataGrid.Active:=true;
formobat.queryhapus.Active:=true;
//formobat.queryjumlahmasterkelaskedua.Active:=true;
formobat.adosimpankelassatu.Active:=true;
formobat.adoqdataobat.Active:=true;
formobat.adomasterdataobat.Active:=true;
formobat.adokelaspertama.Active:=true;
formobat.adokelaskedua.Active:=true;
formobat.adomasterkelastiga.Active:=true;
formmainobat.Hide;
end;

procedure Tformmainobat.Image4Click(Sender: TObject);
begin
 formlihatobat.Show;
 formlihatobat.ADOConnection1.Connected:=true;
formlihatobat.querylihatobatterbanyak.Active:=true;
formlihatobat.queryformularium.Active:=true;
formlihatobat.querymasterkelasppertama.Active:=true;
formlihatobat.query_master_kedua.Active:=true;
formlihatobat.querymasterkelasketiga.Active:=true;
formlihatobat.Show;
formobat.Hide;

 formmainobat.Hide;
end;

procedure Tformmainobat.FormCreate(Sender: TObject);
begin
formmainobat.WindowState:=wsNormal;
end;

procedure Tformmainobat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    Application.Terminate;
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    end
else
  begin
    Abort;
  end;
end;

procedure Tformmainobat.Image3Click(Sender: TObject);
begin
formadminpoli.Show;
formmainobat.Hide;
end;

end.
