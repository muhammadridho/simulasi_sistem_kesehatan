unit umainobat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus;

type
  Tformmainpasien = class(TForm)
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
    Shape13: TShape;
    Shape14: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenuAdmin1: TMenuItem;
    KeTransaksiPasien1: TMenuItem;
    LihatTransaksiPasien1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    Logout1: TMenuItem;
    anyakan1: TMenuItem;
    Bantuan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    Image5: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure KembaliKeMenuAdmin1Click(Sender: TObject);
    procedure KeTransaksiPasien1Click(Sender: TObject);
    procedure LihatTransaksiPasien1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmainpasien: Tformmainpasien;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatrecord,
  uLihatTranspeg, ulogindokter, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuPegawai, uPasien, upilihdokter,
  uPilihKeluarga, uSplash, uLihatPasien, AutoCompleteText, AutoEdit, ss,
  uAbout, uDoctorMain, uFamilytypetrans, uLihatBerobatKeluarga,
  ulihatChart, ulihatchart2, ulihatchartobat, ulihatdataberobat,
  uLihatDataDokter, ulihatdataobat, uLihatDataPasien, ulihatkeluarga,
  uLihatpegawai, ulogin, uLoginAdmin, umainobatpoli, uMasterPilihan,
  uMenuBerobat, uMenuDokter, uMenuUser, Unit1, uRiwayatpenyakit,
  uStatusPegawai, utest2, uTransaksiuser, uTransunit;

{$R *.dfm}

procedure Tformmainpasien.Image2Click(Sender: TObject);
begin
formadminpoli.Show;
formmainpasien.Hide;
end;

procedure Tformmainpasien.Image4Click(Sender: TObject);
begin
formpasien.ADOConnection1.Connected:=true;
formpasien.queryadopasien.Active:=true;
formpasien.qdatasource.Active:=true;
formpasien.querycarikeluarganama.Active:=true;
formpasien.querycaripasien.Active:=true;
formpasien.querykeluarga.Active:=true;
formpasien.querydatapegawai.Active:=true;
formpasien.ADOSimpan.Active:=true;
formpasien.ADOPEG.Active:=true;
formpasien.adokodetun.Active:=true;
formpasien.ADOJekel.Active:=true;
formpasien.ADUSIMPAN.Active:=true;
formpasien.adosimpandata.Active:=true;
formpasien.adopegawai.Active:=true;
formpasien.ADOQuery1.Active:=true;

formpasien.Show;
formpasien.lbllogin.Caption:='Administrasi Poliklinik';
  formmainpasien.Hide;
end;

procedure Tformmainpasien.Image3Click(Sender: TObject);
begin
    formmainpasien.Hide;
    formlihatpasien.Show;
end;

procedure Tformmainpasien.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
end;

procedure Tformmainpasien.KembaliKeMenuAdmin1Click(Sender: TObject);
begin
fMainmenu.show;
formmainpasien.Hide;
end;

procedure Tformmainpasien.KeTransaksiPasien1Click(Sender: TObject);
begin
formpasien.Show;
formmainpasien.Hide;
end;

procedure Tformmainpasien.LihatTransaksiPasien1Click(Sender: TObject);
begin
formlihatpasien.Show;
formmainpasien.hide;
end;

procedure Tformmainpasien.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformmainpasien.FormClose(Sender: TObject;
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
