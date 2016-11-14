unit uMenuDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tformawaldokter = class(TForm)
    Image4: TImage;
    Image1: TImage;
    Image5: TImage;
    Image6: TImage;
    Shape5: TShape;
    Label18: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape6: TShape;
    Shape9: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Timer1: TTimer;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formawaldokter: Tformawaldokter;

implementation

uses uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatdataberobat, uLihatDataDokter, ulihatdataobat, ulihatkeluarga,
  uLihatPasien, ulihatrecord, uLihatTranspeg, ulogin, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuBerobat, uMenuPegawai, uMenuUser, uPasien, upilihdokter,
  uPilihKeluarga, uSplash, uStatusPegawai, uTransunit, ulihatchartobat,
  uLihatpegawai, uRiwayatpenyakit, uTransaksiuser;

{$R *.dfm}

procedure Tformawaldokter.Image2Click(Sender: TObject);
begin
formpengobatan.Show;
formpengobatan.lbllogin.Caption:='Dokter';
formawaldokter.Hide;
end;

procedure Tformawaldokter.Image3Click(Sender: TObject);
begin
formlihatberobatpegawai.lbllogin.Caption:='Dokter';
formlihatberobatpegawai.Show;
formawaldokter.Hide;

end;

procedure Tformawaldokter.Image6Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda ingin Logout Dari Aplikasi',mtInformation,[mbYes,mbNo],1)=mrYes then
begin
formutama.Show;
formawaldokter.Hide;
end
else
abort;

end;

procedure Tformawaldokter.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
end;

procedure Tformawaldokter.Image5Click(Sender: TObject);
begin
  formpengobatan.ADOConnection1.Connected:=True;
  formpengobatan.adorecord.Active:=True;
  formpengobatan.adorecordobat.Active:=True;
  formpengobatan.adobeliobat.Active:=True;
  formpengobatan.ADOTable1.Active:=True;
  formpengobatan.tabelpegawai.Active:=True;
  formpengobatan.tableformula.Active:=true;
  formpengobatan.tabeldokter.Active:=true;
  formpengobatan.tabelkeluarga.Active:=true;
  formpengobatan.qobat.Active:=true;
  formpengobatan.qdatasource.Active:=true;
  formpengobatan.qdataobat.Active:=true;
  formpengobatan.querycarinamakeluarga.Active:=true;
  formpengobatan.queryobat.Active:=true;
  formpengobatan.querydatapegawi.Active:=true;
  formpengobatan.querybeliobat.Active:=true;
  formpengobatan.queryhitungobat.Active:=true;
  formpengobatan.querynamaobat.Active:=true;
  formpengobatan.query_temporary.Active:=true;

formpengobatan.Show;
formawaldokter.Hide;
end;

procedure Tformawaldokter.Image4Click(Sender: TObject);
begin
formriwayat.ADOConnection1.Connected:=true;
formriwayat.queryrecord.Active:=true;
formriwayat.querybeliobat.Active:=true;
formriwayat.querypegawai.Active:=true;
formriwayat.Show;
formawaldokter.Hide;
end;

procedure Tformawaldokter.FormClose(Sender: TObject;
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

end.
