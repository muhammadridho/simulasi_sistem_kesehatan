unit uDoctorMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tformmenudokter = class(TForm)
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
    procedure Image2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmenudokter: Tformmenudokter;

implementation

uses uAbout, UASAL, uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatdataberobat,
  ulihatdataobat, ulihatkeluarga, uLihatPasien, ulihatrecord,
  uLihatTranspeg, ulogin, ulogindokter, umainobat, umainobatpoli,
  uMainUtama, uMasterDokter, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuBerobat,
  uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga, uSplash,
  uStatusPegawai, uTransunit, AutoCompleteText, AutoEdit, ss,
  ulihatchartobat, uLihatDataDokter, uLihatDataPasien, uLihatpegawai,
  uMasterPilihan, uMenuDokter, uMenuUser, Unit1, uRiwayatpenyakit, utest2,
  uTransaksiuser;

{$R *.dfm}

procedure Tformmenudokter.Image2Click(Sender: TObject);
begin
formdokter.ADOConnection1.Connected:=true;
formdokter.ADODokter.Active:=true;
formdokter.Show;
formmenudokter.Hide;
end;

procedure Tformmenudokter.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('hhhh,mmmm,yyyy',now);

end;

procedure Tformmenudokter.Image4Click(Sender: TObject);
begin
fMainmenu.Show;
formmenudokter.Hide;

end;

procedure Tformmenudokter.FormClose(Sender: TObject;
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

procedure Tformmenudokter.Image3Click(Sender: TObject);
begin
formlihatdokter.ADOConnection1.Connected:=true;
formlihatdokter.qdokter.Active:=true;
//
formlihatdokter.Show;
formmenudokter.Hide;
end;

end.
