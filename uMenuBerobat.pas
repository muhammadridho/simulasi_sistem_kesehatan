unit uMenuBerobat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tformmenuberobat = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
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
    Image7: TImage;
    Image8: TImage;
    Timer1: TTimer;
    Image2: TImage;
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmenuberobat: Tformmenuberobat;

implementation

uses uAbout, UASAL, uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  ulihatChart, ulihatchart2, ulihatdataberobat, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogin,
  ulogindokter, umainobat, umainobatpoli, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuPegawai, uPasien, upilihdokter,
  uPilihKeluarga, uSplash, uStatusPegawai, uTransunit,
  uLihatBerobatKeluarga, uDoctorMain, uLihatDataDokter, uMenuDokter,
  uMenuUser, ulihatchartobat, AutoCompleteText, AutoEdit, ss,
  uLihatDataPasien, uLihatpegawai, uMasterPilihan, Unit1, uRiwayatpenyakit,
  utest2, uTransaksiuser;

{$R *.dfm}

procedure Tformmenuberobat.Image5Click(Sender: TObject);
begin
formlihatchartobat.ADOConnection1.Connected:=true;
formlihatchartobat.qtipepasien.Active:=true;
formlihatchartobat.Show;
end;

procedure Tformmenuberobat.Image6Click(Sender: TObject);
begin
formstatunit.ADOConnection1.Connected:=true;
formstatunit.ADOQuery1.Active:=true;
formstatunit.ADOQuery2.Active:=true;
formstatunit.Show;
end;

procedure Tformmenuberobat.Image3Click(Sender: TObject);
begin
formlihatberobatpegawai.ADOConnection1.Connected:=true;
formlihatberobatpegawai.querypegawai.Active:=true;
formlihatberobatpegawai.queryunit.Active:=true;
formlihatberobatpegawai.queryobat.Active:=true;
formlihatberobatpegawai.querybeliobat.Active:=true;
formlihatberobatpegawai.queryjumlahtrans.Active:=true;
formlihatberobatpegawai.qtipeobat.Active:=true;
formlihatberobatpegawai.Show;
formmenuberobat.Hide;
end;

procedure Tformmenuberobat.Image2Click(Sender: TObject);
begin
formmainobat.Show;
formmenuberobat.Hide;
end;

procedure Tformmenuberobat.Image4Click(Sender: TObject);
begin
formlihatberobatkeluarga.ADOConnection1.Connected:=true;
formlihatberobatkeluarga.queryrecord.Active:=true;
formlihatberobatkeluarga.querybeliobat.Active:=true;
formlihatberobatkeluarga.querytransaksikeluarga.Active:=true;
formlihatberobatkeluarga.queryjk.Active:=true;
formlihatberobatkeluarga.querystatustunjangan.Active:=true;
formlihatberobatkeluarga.qtipeobat.Active:=true;
formlihatberobatkeluarga.Show;
formmenuberobat.Hide;
end;

procedure Tformmenuberobat.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('hhhh,mmmm,yyyy',now);
end;

procedure Tformmenuberobat.Image7Click(Sender: TObject);
begin
if lbllogin.Caption='Administrasi Poliklinik' then
  begin
     formadminpoli.Show;
     formmenuberobat.Hide;
  end
else if lbllogin.Caption='Administrasi PLN' then
  begin
    fMainmenu.Show;
    formmenuberobat.Hide;
end
else
  begin
  Application.Terminate;
  end;
end;

procedure Tformmenuberobat.Image8Click(Sender: TObject);
begin
formlihattipeobat.ADOConnection1.Connected:=true;
formlihattipeobat.qtipeobat.Active:=True;
formlihattipeobat.Show;

end;

procedure Tformmenuberobat.FormClose(Sender: TObject;
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
