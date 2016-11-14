unit uMasterObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, Menus, ComObj;

type
  Tformobat = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    grupformularium: TGroupBox;
    txtnamakelaspertama: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image7: TImage;
    Image8: TImage;
    btndeletekelaskedua: TImage;
    btneditkelaskedua: TImage;
    Shape3: TShape;
    Label2: TLabel;
    Image11: TImage;
    ADOConnection1: TADOConnection;
    tabelkelaspertama: TADOTable;
    DataSource1: TDataSource;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Shape4: TShape;
    Label5: TLabel;
    ado: TImage;
    btndeleteobatkelastiga: TImage;
    btneditkelastiga: TImage;
    Image16: TImage;
    adosimpankelassatu: TADOTable;
    tabelkelaskedua: TADOTable;
    Image13: TImage;
    Shape5: TShape;
    btnaddkelassatu: TImage;
    btndeletekelassatu: TImage;
    btneditkelassatu: TImage;
    Image21: TImage;
    querymasterkelasppertama: TADOQuery;
    Timer1: TTimer;
    querykelaskedua: TADOQuery;
    Shape1: TShape;
    Label4: TLabel;
    querykelastiga: TADOQuery;
    adoqdataobat: TADOTable;
    Label12: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    adomasterdataobat: TADOQuery;
    txtnokelaskedua: TEdit;
    Shape6: TShape;
    Label6: TLabel;
    Label10: TLabel;
    txtnamakelaskedua: TEdit;
    Shape7: TShape;
    Image20: TImage;
    lblnokelaspertama: TLabel;
    Label8: TLabel;
    Shape8: TShape;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenuAdmin1: TMenuItem;
    KembaliKeMenuObat1: TMenuItem;
    LihatdataObat1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    anyakan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    Bantuan1: TMenuItem;
    lblobatkelaskedua: TLabel;
    txtnokelastiga: TEdit;
    btnceknoobattiga: TImage;
    Shape9: TShape;
    Label9: TLabel;
    txtnamakelastiga: TEdit;
    Label11: TLabel;
    adokelaspertama: TADOTable;
    adokelaskedua: TADOTable;
    adomasterkelastiga: TADOTable;
    PopupMenu1: TPopupMenu;
    RefreshData1: TMenuItem;
    KembaliKeAdmin1: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    Shape2: TShape;
    Label1: TLabel;
    Shape11: TShape;
    edbrand: TEdit;
    Label13: TLabel;
    Shape12: TShape;
    edgeneric: TEdit;
    Shape13: TShape;
    Label14: TLabel;
    Label15: TLabel;
    btnceknaaobat: TImage;
    lblobatkelastiga: TLabel;
    memokomposisi: TMemo;
    Image6: TImage;
    qDataGrid: TADOQuery;
    Shape14: TShape;
    Shape15: TShape;
    lbledket: TLabel;
    lblednoked: TLabel;
    lblednoper: TLabel;
    Shape16: TShape;
    Label18: TLabel;
    Label19: TLabel;
    lbltransaksi: TLabel;
    Label21: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape21: TShape;
    Shape22: TShape;
    lbllogin: TLabel;
    Label16: TLabel;
    edharga: TEdit;
    Shape23: TShape;
    Image3: TImage;
    KembaliKeMenuObat2: TMenuItem;
    KeluarAplikasi3: TMenuItem;
    btnkembalikemenu: TImage;
    lblnoobat: TLabel;
    edkelaspertamakedua: TEdit;
    dbgridkelasduapertama: TDBGrid;
    sourcekelaspertama: TDataSource;
    Image9: TImage;
    lblakhirnomor: TLabel;
    Label17: TLabel;
    lblkelaskeduanopertama: TLabel;
    gridnokelaskedua: TDBGrid;
    sourcekelaskeduanokedua: TDataSource;
    Label20: TLabel;
    Label22: TLabel;
    edkelaskeduakelastiga: TEdit;
    edkelaspertamakelastiga: TEdit;
    lblkelastiganokelaspertama: TLabel;
    lblkelasketiganokelaskedua: TLabel;
    gridkelaspertamakelastiga: TDBGrid;
    Image10: TImage;
    Image12: TImage;
    queryhapus: TADOQuery;
    queryjumlahmasterkelaskedua: TADOQuery;
    Image14: TImage;
    Image15: TImage;
    txtformper: TEdit;
    Image17: TImage;
    txtformked: TEdit;
    Image18: TImage;
    txtformket: TEdit;
    Image19: TImage;
    Label23: TLabel;
    lblformnoper: TLabel;
    Label24: TLabel;
    lblformnoked: TLabel;
    Label26: TLabel;
    lblformnoket: TLabel;
    gridformper: TDBGrid;
    gridformked: TDBGrid;
    gridformket: TDBGrid;
    sourcekelastiga: TDataSource;
    Image22: TImage;
    dgridpertama: TDBGrid;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    dgridkelasdua: TDBGrid;
    dgridkelastiga: TDBGrid;
    PopupMenu2: TPopupMenu;
    EditDataInin1: TMenuItem;
    HapusDataIni1: TMenuItem;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    OpenDialog1: TOpenDialog;
    procedure Image3Click(Sender: TObject);
    procedure btneditkelaskeduaClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure cbdosisobatKeyPress(Sender: TObject; var Key: Char);
    procedure txthargaobatmasterKeyPress(Sender: TObject; var Key: Char);
    procedure cbkelassatuChange(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure btndeletekelaskeduaClick(Sender: TObject);
    procedure btnceknoobattigaClick(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenuAdmin1Click(Sender: TObject);
    procedure KembaliKeMenuObat1Click(Sender: TObject);
    procedure btndeleteobatkelastigaClick(Sender: TObject);
    procedure btneditkelastigaClick(Sender: TObject);
    procedure btnaddkelassatuClick(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure btndeletekelassatuClick(Sender: TObject);
    procedure btneditkelassatuClick(Sender: TObject);
    procedure m(Sender: TObject);
    procedure adoClick(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure btnceknaaobatClick(Sender: TObject);
    procedure txtnamakelaspertamaKeyPress(Sender: TObject; var Key: Char);
    procedure edgenericKeyPress(Sender: TObject; var Key: Char);
    procedure memokomposisiKeyPress(Sender: TObject; var Key: Char);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure txtnamakelastigaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure txtnamakelaskeduaKeyPress(Sender: TObject; var Key: Char);
    procedure txtnokelaskeduaKeyPress(Sender: TObject; var Key: Char);
    procedure txtnokelastigaKeyPress(Sender: TObject; var Key: Char);
    procedure KembaliKeAdmin1Click(Sender: TObject);
    procedure KembaliKeMenuObat2Click(Sender: TObject);
    procedure KeluarAplikasi3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edkelaspertamakeduaChange(Sender: TObject);
    procedure dbgridkelasduapertamaCellClick(Column: TColumn);
    procedure Image9Click(Sender: TObject);
    procedure edkelaspertamakeduaKeyPress(Sender: TObject; var Key: Char);
    procedure Image8Click(Sender: TObject);
    procedure edkelaspertamakelastigaChange(Sender: TObject);
    procedure edkelaspertamakelastigaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Image10Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edkelaskeduakelastigaChange(Sender: TObject);
    procedure edkelaskeduakelastigaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Image12Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure gridkelaspertamakelastigaCellClick(Column: TColumn);
    procedure Image17Click(Sender: TObject);
    procedure txtformperChange(Sender: TObject);
    procedure txtformperKeyPress(Sender: TObject; var Key: Char);
    procedure txtformkedChange(Sender: TObject);
    procedure txtformkedKeyPress(Sender: TObject; var Key: Char);
    procedure Image18Click(Sender: TObject);
    procedure txtformketChange(Sender: TObject);
    procedure txtformketKeyPress(Sender: TObject; var Key: Char);
    procedure Image19Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure edbrandKeyPress(Sender: TObject; var Key: Char);
    procedure edhargaKeyPress(Sender: TObject; var Key: Char);
    procedure gridformperCellClick(Column: TColumn);
    procedure gridformkedCellClick(Column: TColumn);
    procedure gridformketCellClick(Column: TColumn);
    procedure Image22Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure EditDataInin1Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure LihatdataObat1Click(Sender: TObject);
    procedure HapusDataIni1Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image27Click(Sender: TObject);
  private
    procedure RefreshData;
    procedure RefreshQueryKelasPertama;
    procedure RefreshQueryKelastiga;
    procedure RefreshForm;
    procedure RefreshQueryKelasDua;
    procedure RefreshFormularium;
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formobat: Tformobat;

implementation

uses Math, UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatkeluarga,
  uLihatPasien, ulihatrecord, uLihatTranspeg, ulogindokter, umainobat,
  umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterPasien, uMenuAwal, uMenuPegawai,
  uPasien, upilihdokter, uPilihKeluarga, uSplash, AutoCompleteText,
  AutoEdit, ss, uAbout, uDoctorMain, uFamilytypetrans,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatchartobat,
  ulihatdataberobat, uLihatDataDokter, ulihatdataobat, uLihatDataPasien,
  uLihatpegawai, ulogin, uMasterPilihan, uMenuBerobat, uMenuDokter,
  uMenuUser, Unit1, uRiwayatpenyakit, uStatusPegawai, utest2,
  uTransaksiuser, uTransunit;

{$R *.dfm}

procedure Tformobat.Image3Click(Sender: TObject);
var
  data,data1:string;
begin
if lbltransaksi.Caption='Tidak Ada Transaksi' then
  begin
  data:=InputBox('Edit Data ','Masukkan Nomor Obat :','');
  adoqdataobat.Active:=true;
if adoqdataobat.Locate('No_Obat',data,[]) then
  begin
     qDataGrid.Active:=true;
     qDataGrid.Locate('No_Obat',data,[]);
     txtformper.Text:=qDataGrid.FieldByName('Nama_Kelas_Pertama').AsString;
     txtformked.Text:=qDataGrid.FieldByName('Nama_Kelas_Kedua').AsString;
     txtformket.Text:=qDataGrid.FieldByName('Nama_Kelas_Ketiga').AsString;
     lblformnoper.Caption:=qDataGrid.FieldByName('No_Kelas_Pertama').AsString;
     lblformnoked.Caption:=qDataGrid.FieldByName('No_Kelas_Kedua').AsString;
     lblformnoket.Caption:=qDataGrid.FieldByName('No_Kelas_Ketiga').AsString;
     //
     edbrand.Text:=qDataGrid.FieldByName('Nama_Brand').AsString;
     edgeneric.Text:=qDataGrid.FieldByName('Nama_Generic').AsString;
     memokomposisi.Text:=qDataGrid.FieldByName('Komposisi').AsString;
     edharga.Text:=qDataGrid.FieldByName('Harga').AsString;
     lblobatkelastiga.Caption:=qDataGrid.FieldByName('No_Kelas_Ketiga').AsString;
     lblobatkelaskedua.Caption:=qDataGrid.FieldByName('No_Kelas_Kedua').AsString;
     lblnokelaspertama.Caption:=qDataGrid.FieldByName('No_Kelas_Pertama').AsString;
     lblnoobat.Caption:=qDataGrid.FieldByName('No_Obat').AsString;
     lbltransaksi.Caption:='Edit Data Formularium';
     //
     gridformper.Visible:=false;
     gridformked.Visible:=false;
     gridformket.Visible:=false;
     //
     GroupBox1.Enabled:=false;
     GroupBox2.Enabled:=false;
     GroupBox4.Enabled:=false;
     Image1.Enabled:=false;
     Image2.Enabled:=false;
     DBGrid1.Enabled:=false;
     MessageDlg('Anda Saat ini Masuk Kedalam Format Edit Data Formularium,silahkan Klik Tombol add / Edit untuk menyimpan',mtInformation,[mbOK],1);
  end
else
  begin
    MessageDlg('Data Tidak Ditemukan',mtError,mbOKCancel,1);
  end;
  end
else if lbltransaksi.Caption='Edit Data Formularium' then
  begin
  adoqdataobat.Locate('No_Obat',lblnoobat.Caption,[]);
  lbltransaksi.Caption:='Tidak Ada Transaksi';
  adoqdataobat.Edit;
  adoqdataobat.FieldByName('No_Kelas_Ketiga').AsString:=lblformnoket.Caption;
  adoqdataobat.FieldByName('Nama_Generic').AsString:=edgeneric.Text;
  adoqdataobat.FieldByName('Komposisi').AsString:=memokomposisi.Text;
  adoqdataobat.FieldByName('Nama_Brand').AsString:=edbrand.Text;
  adoqdataobat.FieldByName('Harga').AsString:=edharga.Text;
  adoqdataobat.Post;
  MessageDlg('Data Edit Tersimpan',mtInformation,mbOKCancel,0);
  edharga.Clear;
  Image15Click(Sender);
    RefreshData;
       GroupBox1.Enabled:=true;
     GroupBox2.Enabled:=true;
  GroupBox4.Enabled:=true;
  Image1.Enabled:=true;
  Image2.Enabled:=true;

end
  else
    begin
      MessageDlg('Tidak Dalam Format Edit Data',mtWarning,mbOKCancel,0);
    end;
end;

procedure Tformobat.btneditkelaskeduaClick(Sender: TObject);
var
    data,data1,data2:string;
begin
data:=InputBox('Edit Record Kelas Kedua','Masukkan No Kelas Pertama :','');
data1:=InputBox('Edit Record Kelas Kedua','Masukkan No Kelas Kedua  :','');
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Text:='SELECT * FROM Master_Kelas_Kedua WHERE No_Kelas_Pertama like'+QuotedStr('%'+data+'%')+' and No_Kelas_Kedua='+QuotedStr(data1);
querykelaskedua.ExecSQL;
querykelaskedua.Open;
if querykelaskedua.Locate('No_Kelas_Kedua',data1,[])then
  begin
    ShowMessage('Data Kelas Kedua Ditemukan dengan Nama Kelas :'+querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString);
    if MessageDlg('Apakah anda ingin Mengedit Data Kelas Kedua ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              data2:=InputBox('Konfirmasi Edit Data','Masukkan Nama Baru untuk Kelas Kedua ini?','');
              querykelaskedua.Close;
              querykelaskedua.SQL.Clear;
              querykelaskedua.SQL.Text:='UPDATE Master_Kelas_Kedua SET Nama_Kelas_Kedua='+QuotedStr(data2)+' WHERE No_Kelas_Kedua='+QuotedStr(data1);
              querykelaskedua.ExecSQL;
              RefreshQueryKelasDua;
              MessageDlg('Data Edit Kelas Kedua telah Tersimpan',mtInformation,[mbYes],1);
          end
        else
          begin
            MessageDlg('Pengeditan Data Kelas Kedua Dibatalkan',mtWarning,[mbOK],1);
          end;
  end
else
  begin
    ShowMessage('Data Kelas Kedua Tidak Ditemukan');
end;

end;

procedure Tformobat.ListBox1Click(Sender: TObject);
var
  s:string;
begin



end;

procedure Tformobat.cbdosisobatKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;


end;

procedure Tformobat.txthargaobatmasterKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;

end;

procedure Tformobat.RefreshData;
begin
txtformper.Clear;
txtformked.Clear;
txtformket.Clear;
lbltransaksi.Caption:='Tidak Ada Transaksi';
txtnamakelaspertama.Clear;
txtnamakelaskedua.Clear;
//Refresh Query Kelas Kedua
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Add('Select * From Master_Kelas_Kedua');
querykelaskedua.Open;
//Refresh Query Kelas Pertama
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
//Refresh Grup Formularium
lblnokelaspertama.Caption:='000';
lblobatkelaskedua.Caption:='000';
lblobatkelastiga.Caption:='000';
edbrand.Clear;
edgeneric.Clear;

//Refresh ComboBox Kelas Pertama Lagi
txtnamakelaspertama.Clear;
txtnokelaskedua.Clear;
txtnamakelaskedua.Clear;
GroupBox1.Enabled:=true;
GroupBox2.Enabled:=true;
GroupBox4.Enabled:=true;
grupformularium.Enabled:=true;
ado.Enabled:=false;
txtnokelaskedua.ReadOnly:=true;
txtnamakelaskedua.ReadOnly:=true;
Image8.Enabled:=false;
btnaddkelassatu.Enabled:=false;
Image1.Enabled:=false;
txtnokelastiga.Clear;
txtnamakelastiga.Clear;
//
qDataGrid.Close;
qDataGrid.SQL.Clear;
qDataGrid.SQL.Add('Select * From q_Formularium_obat');
qDataGrid.ExecSQL;
qDataGrid.Open;
qDataGrid.Last;
DBGrid1.Enabled:=true;
DBGrid1.Visible:=false;
DBGrid1.Visible:=true;

end;


procedure Tformobat.cbkelassatuChange(Sender: TObject);
begin
tabelkelaspertama.Active:=true;
lblnokelaspertama.Caption:=tabelkelaspertama.FieldByName('No_Kelas_Pertama').AsString;
GroupBox1.Enabled:=false;
GroupBox4.Enabled:=false;
grupformularium.Enabled:=false;
txtnokelaskedua.SetFocus;
txtnokelaskedua.ReadOnly:=false;
end;

procedure Tformobat.Image11Click(Sender: TObject);
begin
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Text:='SELECT * FROM Master_Kelas_Kedua WHERE No_Kelas_Pertama Like'+QuotedStr(lblkelaskeduanopertama.Caption)+' and No_Kelas_Kedua='+QuotedStr(txtnokelaskedua.Text);
querykelaskedua.ExecSQL;
querykelaskedua.Open;
if querykelaskedua.Locate('No_Kelas_Kedua',txtnokelaskedua.Text,[])then
  begin
    MessageDlg('Data Kelas Kedua Sudah Ada dengan Nama Kelas '+querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString,mtError,[mbYes],1);
  end
else
  begin
    MessageDlg('Data Kelas Kedua Bisa Tersimpan,Silahkan Masukkan Nama Untuk Kelas Baru ini!',mtInformation,[mbYes],1);
    txtnamakelaskedua.ReadOnly:=false;
    txtnamakelaskedua.SetFocus;
    btnaddkelassatu.Enabled:=True;
  end;
end;

procedure Tformobat.btndeletekelaskeduaClick(Sender: TObject);
var
  data,data1:string;
  x,y:integer;
begin
data:=InputBox('Hapus Record Kelas Kedua','Masukkan No Kelas Pertama :','');
data1:=InputBox('Hapus Record Kelas Kedua','Masukkan No Kelas Kedua  :','');
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Text:='SELECT * FROM Master_Kelas_Kedua WHERE No_Kelas_Pertama like'+QuotedStr('%'+data+'%')+' and No_Kelas_Kedua='+QuotedStr(data1);
querykelaskedua.ExecSQL;
querykelaskedua.Open;
if querykelaskedua.Locate('No_Kelas_Kedua',data1,[])then
  begin
    ShowMessage('Data Kelas Kedua Ditemukan dengan Nama Kelas :'+querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString);
    if MessageDlg('Apakah anda ingin Menghapus Data Kedua ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              if tabelkelaskedua.Locate('No_Kelas_Kedua',data1,[])then
                begin
                  tabelkelaskedua.Delete;
                end
              else
                begin
                end;
              //Perulangan Hapus Data Dari Master Kelas Ketiga
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_ketiga.No_Kelas_Kedua, Count(master_kelas_ketiga.No_Kelas_Kedua) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_ketiga');
              queryhapus.SQL.Add('GROUP BY master_kelas_ketiga.No_Kelas_Kedua;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              if queryhapus.Locate('No_Kelas_Kedua',data1,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                adomasterkelastiga.Active:=false;
                adomasterkelastiga.Active:=true;
                if adomasterkelastiga.Locate('No_Kelas_Kedua',data1,[]) then
                begin
                adomasterkelastiga.Delete;
                end
                else
                  begin
                  end;
               end;
              end;
                RefreshQueryKelasDua;
                MessageDlg('Data berhasil Dihapus',mtInformation,[mbYes],1);
          end
        else
          begin
            RefreshQueryKelasDua;
            ShowMessage('Penghapusan Data Dibatalkan');
          end;
  end
else
  begin
    ShowMessage('Data Kelas Kedua Tidak Ditemukan');
end;
end;

procedure Tformobat.btnceknoobattigaClick(Sender: TObject);

begin
RefreshQueryKelastiga;
querykelastiga.Active:=true;
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Add('SELECT * FROM Master_Kelas_Ketiga WHERE No_Kelas_Pertama Like'+QuotedStr(lblkelastiganokelaspertama.Caption)+' or No_Kelas_Kedua Like'+QuotedStr(lblkelasketiganokelaskedua.Caption));
querykelastiga.ExecSQL;
querykelastiga.Open;
if querykelastiga.Locate('No_Kelas_Ketiga',txtnokelastiga.Text,[])then
  begin
    MessageDlg('Data Kelas Ketiga Sudah Ada dan ditemukan dengan nama '+querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString,mtError,[mbYes],1);
    MessageDlg('Anda Bisa Mengklik Tombol Edit Untuk mengedit',mtWarning,[mbYes],1);
    end
else
  begin
    MessageDlg('Data Kelas Ketiga Ini Baru,Anda Dapat Menyimpan',mtInformation,[mbOK],1);
    txtnamakelastiga.SetFocus;
    txtnokelastiga.ReadOnly:=true;
    txtnamakelastiga.ReadOnly:=false;
    end;

end;

procedure Tformobat.KeluarAplikasi1Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Ingin Keluar Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
  MessageDlg('Terima Kasih Telah Menggunakan Aplikasi',mtInformation,[mbYes],1);
  TutupKoneksi;
  Application.Terminate;
  end
else
  begin
    Abort;
  end;

end;

procedure Tformobat.KembaliKeMenuAdmin1Click(Sender: TObject);
begin
RefreshData;
RefreshForm;
formadminpoli.Show;
formobat.Hide;
end;

procedure Tformobat.KembaliKeMenuObat1Click(Sender: TObject);
begin
RefreshData;
formmainobat.Show;
formobat.Hide;
end;

procedure Tformobat.btndeleteobatkelastigaClick(Sender: TObject);
var
  data,data1:string;
  x,y:integer;
begin
data:=InputBox('Hapus Record Kelas Ketiga','Masukkan No Kelas Kedua :','');
data1:=InputBox('Hapus Record Kelas Ketiga','Masukkan No Kelas Ketiga  :','');
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Text:='SELECT * FROM Master_Kelas_Ketiga WHERE No_Kelas_Kedua like'+QuotedStr('%'+data+'%')+' and No_Kelas_Ketiga='+QuotedStr(data1);
querykelastiga.ExecSQL;
querykelastiga.Open;
if querykelastiga.Locate('No_Kelas_Ketiga',data1,[])then
  begin
    ShowMessage('Data Kelas Ketiga Ditemukan dengan Nama Kelas :'+querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString);
    if MessageDlg('Apakah anda ingin Menghapus Data Kelas ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_ketiga.No_Kelas_Ketiga, Count(master_kelas_ketiga.No_Kelas_Ketiga) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_ketiga');
              queryhapus.SQL.Add('GROUP BY master_kelas_ketiga.No_Kelas_Ketiga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
               y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                adomasterkelastiga.Active:=false;
                adomasterkelastiga.Active:=true;
                if adomasterkelastiga.Locate('No_Kelas_Ketiga',data1,[]) then
                begin
                adomasterkelastiga.Delete;
                end
                else
                  begin
                  end;
               end;

              //
               queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_formularium_obat.No_Kelas_Ketiga, Count(master_formularium_obat.No_Kelas_Ketiga) AS Jumlah');
              queryhapus.SQL.Add('From master_formularium_obat');
              queryhapus.SQL.Add('GROUP BY master_formularium_obat.No_Kelas_Ketiga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              queryhapus.Locate('No_Kelas_Ketiga',data1,[]);
              y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
              ShowMessage('Data Formularium Ditemukan Sebanyak '+IntToStr(y));
              for x:=1 to y do
                begin
                adoqdataobat.Active:=false;
                adoqdataobat.Active:=true;
                if adoqdataobat.Locate('No_Kelas_Ketiga',data1,[]) then
                begin
                adoqdataobat.Delete;
                end
                else
                begin
                end;
               end;
              MessageDlg('Data berhasil Dihapus',mtInformation,[mbYes],1);

          end
        else
          begin
              MessageDlg('Penghapusan Data Dibatalkan',mtWarning,[mbYes],1);
          end;
  end
else
  begin
    MessageDlg('Data Kelas Ketiga Tidak Ditemukan',mtError,[mbOK],1);
end;
end;

procedure Tformobat.btneditkelastigaClick(Sender: TObject);
var
    data,data1,data2,data3:string;
    salah:boolean;
    x,y:integer;
begin
data:=InputBox('Edit Record Kelas Tiga','Masukkan Nomor Kelas Ketiga :','');
//
querykelastiga.Active:=true;
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Add('SELECT * FROM Query_Kelas_tiga WHERE No_Kelas_Ketiga like'+QuotedStr(data));
querykelastiga.ExecSQL;
querykelastiga.Open;
//
if querykelastiga.Locate('No_Kelas_Ketiga',data,[])then
  begin
    ShowMessage('Data Kelas Ketiga Ditemukan dengan Nama Kelas :'+querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString);
    if MessageDlg('Apakah anda ingin Mengedit Data Kelas Kedua ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
                data1:=InputBox('Edit Record Kelas Tiga','Silahkan Masukkan Nomor Kelas Tiga Baru : ','');
                data2:=InputBox('Edit Record Kelas Tiga','Silahkan Masukkan Nama Kelas Tiga Baru : ','');
                querykelastiga.Active:=true;
                querykelastiga.Close;
                querykelastiga.SQL.Clear;
                querykelastiga.SQL.Add('SELECT * FROM Query_Kelas_tiga ');
                querykelastiga.ExecSQL;
                querykelastiga.Open;
                //
                      adomasterkelastiga.Active:=true;
                      adomasterkelastiga.Locate('No_Kelas_Ketiga',data,[]);
                      adomasterkelastiga.Edit;
                      adomasterkelastiga.FieldByName('No_Kelas_Ketiga').AsString:=data1;
                      adomasterkelastiga.FieldByName('Nama_Kelas_Ketiga').AsString:=data2;
                      adomasterkelastiga.Post;
                end//Akhir Jika Data Message Dialog Ya
        else
          begin
            MessageDlg('Pengeditan Data Dibatalkan',mtWarning,[mbYes],1);
          end;
    end
else
  begin
    MessageDlg('Data Kelas Ketiga Tidak Ditemukan',mtError,[mbOK],1);
end;
end;

procedure Tformobat.btnaddkelassatuClick(Sender: TObject);

begin
if txtnamakelaspertama.Text<>'' then
  begin
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr(txtnamakelaspertama.Text));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',txtnamakelaspertama.Text,[])then
      begin
        ShowMessage('Nama Kelas Ditemukan');
      end
    else
      begin
        adokelaspertama.Append;
        adokelaspertama.FieldByName('Nama_Kelas_Pertama').AsString:=txtnamakelaspertama.Text;
        adokelaspertama.Post;
        txtnamakelaspertama.Clear;
        RefreshQueryKelasPertama;
        MessageDlg('Data Kelas Pertama yang Baru sudah Tersimpan',mtInformation,[mbYes],1);
        btnaddkelassatu.Enabled:=false;
  end;
  end
else
  begin
  ShowMessage('Data Masih Kosong');
  txtnamakelaspertama.SetFocus;
end;
end;

procedure Tformobat.Image13Click(Sender: TObject);
var
  nomor:integer;
begin
if txtnamakelaspertama.Text<>'' then
  begin
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr(txtnamakelaspertama.Text));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',txtnamakelaspertama.Text,[])then
      begin
        MessageDlg('Nama Kelas Sudah Ada , dengan Nomor '+querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString,mtError,[mbYes],1);
      end
    else
      begin
    RefreshQueryKelasPertama;
    querymasterkelasppertama.Last;
    nomor:=StrToInt(querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString);
    nomor:=nomor + 1;
    lblnokelaspertama.Caption:=IntToStr(nomor);
        txtnamakelaspertama.SetFocus;
        btnaddkelassatu.Enabled:=true;
        GroupBox4.Enabled:=false;

        MessageDlg('Nama Kelas Belum Terdaftar',mtInformation,[mbOK],1);
    end;
  end
else
  begin
  ShowMessage('Data Masih Kosong');
  txtnamakelaspertama.SetFocus;
end;
end;

procedure Tformobat.btndeletekelassatuClick(Sender: TObject);
var
  data,data1,nokelas:string;
  x,y:integer;
begin
data:=InputBox('Konfirmasi','Masukkan Nama Kelas Pertama','');
if data<>'' then
  begin
    querymasterkelasppertama.Active:=true;
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr(data));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',data,[])then
      begin
        ShowMessage('Nama Kelas Ditemukan , dengan Nomor '+querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString);
        nokelas:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
        if MessageDlg('Apakah anda ingin Menghapus Data Kelas Pertama ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              querymasterkelasppertama.Close;
              querymasterkelasppertama.SQL.Clear;
              querymasterkelasppertama.SQL.Text:='DELETE FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama='+QuotedStr(data);
              querymasterkelasppertama.ExecSQL;
              ///
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_kedua.No_Kelas_Pertama, Count(master_kelas_kedua.No_Kelas_Pertama) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_kedua');
              queryhapus.SQL.Add('GROUP BY master_kelas_kedua.No_Kelas_Pertama;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              //
              if queryhapus.Locate('No_Kelas_Pertama',nokelas,[]) then
                begin
              y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);

              //Perulangan Hapus Data Dari Master Kelas Kedua
              for x:=1 to y do
               begin
                tabelkelaskedua.Active:=false;
                tabelkelaskedua.Active:=true;
                if tabelkelaskedua.Locate('No_Kelas_Pertama',nokelas,[]) then
                  begin
                    tabelkelaskedua.Delete;
                  end
                else
                  begin
                  end;
               end;
                end;
                //Perulangan Hapus Data Dari Master Kelas Ketiga
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_ketiga.No_Kelas_Pertama, Count(master_kelas_ketiga.No_Kelas_Pertama) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_ketiga');
              queryhapus.SQL.Add('GROUP BY master_kelas_ketiga.No_Kelas_Pertama;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              if queryhapus.Locate('No_Kelas_Pertama',nokelas,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                adomasterkelastiga.Active:=false;
                adomasterkelastiga.Active:=true;
                if adomasterkelastiga.Locate('No_Kelas_Pertama',nokelas,[]) then
                begin
                adomasterkelastiga.Delete;
                end
                else
                  begin
                  end;
               end;
              end;
              {//Perulangan Hapus Data Dari Master Formularium Obat
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_formularium_obat.No_Obat, Count(master_formularium_obat.No_Obat) AS Jumlah');
              queryhapus.SQL.Add('From master_formularium_obat');
              queryhapus.SQL.Add('GROUP BY master_formularium_obat.No_Obat;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              if queryhapus.Locate('No_Obat',nokelas,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                ListBox1.Items.Add('1');
                adoqdataobat.Active:=false;
                adoqdataobat.Active:=true;
                adoqdataobat.Locate('No_Obat',nokelas,[]);
                adoqdataobat.Delete;
               end;
              end;
              }
              queryhapus.Active:=false;
               MessageDlg('Data Kelas Pertama berhasil Dihapus Di Semua Data Kelas',mtInformation,[mbYes],1);
          end
        else
          begin
            ShowMessage('Penghapusan Data Dibatalkan');
          end;
      end
    else
      begin
         ShowMessage('Nama Kelas Tidak Ditemukan');

  end;
  end
else
  begin
  ShowMessage('Data Masih Kosong');
  txtnamakelaspertama.SetFocus;
end;

end;

procedure Tformobat.btneditkelassatuClick(Sender: TObject);
var
  data,data1,data2:string;
begin
data:=InputBox('Konfirmasi','Masukkan Nama Kelas Pertama','');
if data<>'' then
  begin
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr(data));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',data,[])then
      begin
        ShowMessage('Nama Kelas Ditemukan , dengan Nomor '+querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString);
        if MessageDlg('Apakah anda ingin Mengedit Data Kelas Pertama ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              data2:=InputBox('Konfirmasi Edit Data','Masukkan Nama Baru untuk Kelas Pertama ini?','');
              querymasterkelasppertama.Close;
              querymasterkelasppertama.SQL.Clear;
              querymasterkelasppertama.SQL.Text:='UPDATE Master_Kelas_Pertama SET Nama_Kelas_Pertama='+QuotedStr(data2)+' WHERE Nama_Kelas_Pertama='+QuotedStr(data);
              querymasterkelasppertama.ExecSQL;
               showmessage('Data Edit Tersimpan');
          end
        else
          begin
            ShowMessage('Pengeditan Data Dibatalkan');
          end;
      end
    else
      begin
         ShowMessage('Nama Kelas Tidak Ditemukan');

  end;
  end
else
  begin
  ShowMessage('Data Masih Kosong');
  txtnamakelaspertama.SetFocus;
end;

end;

procedure Tformobat.m(Sender: TObject);
begin
if (txtnokelaskedua.Text='') or (txtnamakelaskedua.Text='') then
  begin
    ShowMessage('Masih Ada Field Kosong');
  end
else
  begin
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Text:='SELECT * FROM Master_Kelas_Kedua WHERE No_Kelas_Pertama like'+QuotedStr('%'+lblnokelaspertama.Caption+'%')+' and No_Kelas_Kedua='+QuotedStr(txtnokelaskedua.Text);
querykelaskedua.ExecSQL;
querykelaskedua.Open;
if querykelaskedua.Locate('No_Kelas_Kedua',txtnokelaskedua.Text,[])then
  begin
    ShowMessage('Data Kelas Kedua Sudah Ada');
    end
else
  begin
    ShowMessage('Data Kelas Kedua Tersimpan');
    adokelaskedua.Active:=true;
    adokelaskedua.Append;
    adokelaskedua.FieldByName('No_Kelas_Pertama').AsString:=lblnokelaspertama.Caption;
    adokelaskedua.FieldByName('No_Kelas_Kedua').AsString:=txtnokelaskedua.Text;
    adokelaskedua.FieldByName('Nama_Kelas_Kedua').AsString:=txtnamakelaskedua.Text;
    adokelaskedua.Post;
    GroupBox1.Enabled:=true;
    GroupBox4.Enabled:=True;
    txtnokelaskedua.Clear;
    txtnamakelaskedua.Clear;
    Image8.Enabled:=false;
    RefreshData;
  end;
end;
end;



procedure Tformobat.adoClick(Sender: TObject);
begin
querykelastiga.Active:=true;
if (txtnokelastiga.Text='') or (txtnokelastiga.Text='') then
begin
  showmessage('Masih ada Data Kosong');
end
else
  begin
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Text:='SELECT * FROM Master_Kelas_Ketiga WHERE No_Kelas_Pertama like'+QuotedStr('%'+lblnokelaspertama.Caption+'%')+' and No_Kelas_Kedua='+QuotedStr(lblobatkelaskedua.Caption); ;
querykelastiga.ExecSQL;
querykelastiga.Open;
if querykelastiga.Locate('No_Kelas_Ketiga',txtnokelastiga.Text,[])then
  begin
    MessageDlg('Data Kelas Ketiga Sudah Ada dan ditemukan atas nama '+querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString,mtError,[mbYes],1);
    end
else
  begin
    adomasterkelastiga.Active:=true;
    adomasterkelastiga.Append;
    adomasterkelastiga.FieldByName('No_Kelas_Pertama').AsString:=lblkelastiganokelaspertama.Caption;
    adomasterkelastiga.FieldByName('No_Kelas_Kedua').AsString:=lblkelasketiganokelaskedua.Caption;
    adomasterkelastiga.FieldByName('No_Kelas_Ketiga').AsString:=txtnokelastiga.Text;
    adomasterkelastiga.FieldByName('Nama_Kelas_Ketiga').AsString:=txtnamakelastiga.Text;
    adomasterkelastiga.Post;
    MessageDlg('Data Kelas Ketiga Baru Telah Tersimpan',mtInformation,[mbYes],1);
    //
    Image14Click(Sender);
    RefreshData;
  end;
  end;
end;

procedure Tformobat.KeluarAplikasi2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformobat.RefreshData1Click(Sender: TObject);
begin
RefreshData;
RefreshForm;
RadioButton4Click(Sender);
end;

procedure Tformobat.btnceknaaobatClick(Sender: TObject);
begin
adoqdataobat.Active:=true;
if adoqdataobat.Locate('Nama_Brand',edbrand.Text,[])then
  begin
    ShowMessage('Data Obat Sudah Ada');
    edbrand.SetFocus;
    if MessageDlg('Apakah Anda ingin Mengedit Data ini?',mtConfirmation,mbYesNoCancel,1)=mrYes then
      begin
      qDataGrid.Locate('Nama_Brand',edbrand.text,[]);
     txtformper.Text:=qDataGrid.FieldByName('Nama_Kelas_Pertama').AsString;
     txtformked.Text:=qDataGrid.FieldByName('Nama_Kelas_Kedua').AsString;
     txtformket.Text:=qDataGrid.FieldByName('Nama_Kelas_Ketiga').AsString;
     lblformnoper.Caption:=qDataGrid.FieldByName('No_Kelas_Pertama').AsString;
     lblformnoked.Caption:=qDataGrid.FieldByName('No_Kelas_Kedua').AsString;
     lblformnoket.Caption:=qDataGrid.FieldByName('No_Kelas_Ketiga').AsString;
     //
     edbrand.Text:=qDataGrid.FieldByName('Nama_Brand').AsString;
     edgeneric.Text:=qDataGrid.FieldByName('Nama_Generic').AsString;
     memokomposisi.Text:=qDataGrid.FieldByName('Komposisi').AsString;
     edharga.Text:=qDataGrid.FieldByName('Harga').AsString;
     lblobatkelastiga.Caption:=qDataGrid.FieldByName('No_Kelas_Ketiga').AsString;
     lblobatkelaskedua.Caption:=qDataGrid.FieldByName('No_Kelas_Kedua').AsString;
     lblnokelaspertama.Caption:=qDataGrid.FieldByName('No_Kelas_Pertama').AsString;
     lblnoobat.Caption:=qDataGrid.FieldByName('No_Obat').AsString;
     lbltransaksi.Caption:='Edit Data Formularium';
     //
     gridformper.Visible:=false;
     gridformked.Visible:=false;
     gridformket.Visible:=false;
     //
     GroupBox1.Enabled:=false;
     GroupBox2.Enabled:=false;
     GroupBox4.Enabled:=false;
     Image1.Enabled:=false;
     Image2.Enabled:=false;
     DBGrid1.Enabled:=false;
end;
 end
else
  begin
    ShowMessage('Data Obat Baru');
    edbrand.ReadOnly:=true;
    edgeneric.ReadOnly:=false;
    edgeneric.SetFocus;
    Image1.Enabled:=false;
    lbltransaksi.Caption:='Transaksi Data Baru';
  end;

end;

procedure Tformobat.txtnamakelaspertamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image13Click(Sender);
end;

procedure Tformobat.edgenericKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  memokomposisi.ReadOnly:=False;
  memokomposisi.SetFocus;
  
end;

procedure Tformobat.memokomposisiKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
end;

procedure Tformobat.Image1Click(Sender: TObject);
begin
if (edbrand.Text='')or(edgeneric.Text='')or(memokomposisi.Text='') then
begin
  ShowMessage('Field Masih ada yang kosong');
end
else
  begin
  if lbltransaksi.Caption='Transaksi Data Baru' then
  begin
    querymasterkelasppertama.Active:=true;
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
    querymasterkelasppertama.Open;
    querymasterkelasppertama.First;
    edbrand.ReadOnly:=false;
    edgeneric.ReadOnly:=false;
    memokomposisi.ReadOnly:=false;
    adoqdataobat.Active:=true;
    adoqdataobat.Append;
    adoqdataobat.FieldByName('No_Kelas_Ketiga').AsString:=lblformnoket.Caption;
    adoqdataobat.FieldByName('Nama_Generic').AsString:=edgeneric.Text;
    adoqdataobat.FieldByName('Komposisi').AsString:=memokomposisi.Text;
    adoqdataobat.FieldByName('Nama_Brand').AsString:=edbrand.Text;
    adoqdataobat.Post;
    ShowMessage('Data Baru Tersimpan');
    RefreshData;
    end
    else if lbltransaksi.Caption='Edit Data Formularium' then
    begin
    adoqdataobat.Locate('No_Obat',lblnoobat.Caption,[loPartialKey]);
      lbltransaksi.Caption:='Tidak Ada Transaksi';
  adoqdataobat.Edit;
  adoqdataobat.FieldByName('No_Kelas_Ketiga').AsString:=lblformnoket.Caption;
  adoqdataobat.FieldByName('Nama_Generic').AsString:=edgeneric.Text;
  adoqdataobat.FieldByName('Komposisi').AsString:=memokomposisi.Text;
  adoqdataobat.FieldByName('Nama_Brand').AsString:=edbrand.Text;
  adoqdataobat.FieldByName('Harga').AsString:=edharga.Text;
  adoqdataobat.Post;
  MessageDlg('Data Edit Tersimpan',mtInformation,mbOKCancel,0);
  edharga.Clear;
    RefreshData;
       GroupBox1.Enabled:=true;
     GroupBox2.Enabled:=true;
  GroupBox4.Enabled:=true;
  Image1.Enabled:=true;
  Image2.Enabled:=true;
  end
  else
    begin
    MessageDlg('Anda Tidak Dalam Format Apapun,silahkan Cek Terlebih Dahulu',mtWarning,[mbOK],1);
  end;
end;
end;




procedure Tformobat.Image2Click(Sender: TObject);
var
  data:string;
begin
adoqdataobat.Active:=True;
data:=InputBox('Konfirmasi Hapus Data','Masukkan No Obat :','');
if adoqdataobat.Locate('No_Obat',data,[]) then
  begin
    adoqdataobat.Delete;
      MessageDlg('Data Berhasil Terhapus',mtInformation,[mbOK],1);
    RefreshData;
  end
else
  begin
    MessageDlg('Nomor Obat Tidak Ditemukan',mtError,[mbYes],1);
  end;
end;

procedure Tformobat.txtnamakelastigaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
if (txtnokelastiga.Text='') or (txtnamakelastiga.Text='') then
  begin
  MessageDlg('Field Masih Ada Yang Kosong',mtWarning,[mbYes],1);
  end
else
  begin
  if MessageDlg('Apakah Anda Ingin Menyimpan Data Kelas Baru ini?',mtConfirmation,[mbOK],1)=mrOk then
    begin
  ado.Enabled:=true;
  adoClick(Sender);
  end;
end;
end;
procedure Tformobat.Timer1Timer(Sender: TObject);
begin

if memokomposisi.Text<> '' then
  begin
    Shape15.Visible:=true;
  end
else
  begin
    Shape15.Visible:=false;
  end;
  if edbrand.Text<>'' then
    begin
      Shape12.Visible:=true;
    end
  else
    begin
      Shape12.Visible:=false;
    end;
  if edgeneric.Text<>'' then
    begin
      Shape13.Visible:=true;
    end
  else
    begin
      Shape13.Visible:=true;
    end;
 if txtnamakelaspertama.Text<>'' then
  begin
    Shape5.Visible:=true;
  end
 else
  begin
    Shape5.Visible:=false;
  end;
 if txtnokelaskedua.Text<>'' then
  begin
    Shape6.Visible:=true;
  end
 else
  begin
    Shape6.Visible:=false;
  end;
  if txtnamakelaskedua.Text<>'' then
    begin
      Shape7.Visible:=true;
    end
  else
    begin
      Shape7.Visible:=false;
    end;
  if txtnokelastiga.Text<>'' then
    begin
      Shape9.Visible:=true;
    end
  else
    begin
      Shape9.Visible:=false;
    end;
  if txtnamakelastiga.Text<>'' then
    begin
      Shape14.Visible:=true;
    end
  else
    begin
      Shape14.Visible:=false;
    end;
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
end;

procedure Tformobat.txtnamakelaskeduaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image8.Enabled:=true;
  MessageDlg('Silahkan Klik Tombol Add,Untuk Simpan Data Kelas Kedua yang Baru',mtInformation,[mbOK],1);
  txtnamakelaskedua.ReadOnly:=true;
  btndeletekelaskedua.Enabled:=false;
  btneditkelaskedua.Enabled:=false;
end;

procedure Tformobat.txtnokelaskeduaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
Image11Click(Sender);
end;

procedure Tformobat.txtnokelastigaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  btnceknoobattigaClick(Sender);
end;

procedure Tformobat.KembaliKeAdmin1Click(Sender: TObject);
begin
RefreshData;
fMainmenu.Show;
formobat.Hide;
end;

procedure Tformobat.KembaliKeMenuObat2Click(Sender: TObject);
begin
RefreshData;
formmainobat.Show;
formobat.Hide;
end;

procedure Tformobat.KeluarAplikasi3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformobat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if MessageDlg('Apakah Anda Ingin Keluar Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
  MessageDlg('Terima Kasih Telah Menggunakan Aplikasi',mtInformation,[mbYes],1);
  TutupKoneksi;
  Application.Terminate;
  end
else
  begin
    Abort;
  end;
end;

procedure Tformobat.btnkembalikemenuClick(Sender: TObject);
begin
RefreshData;
RefreshForm;
TutupKoneksi;
formmainobat.Show;
formlihatobat.Hide;
formobat.Hide;
end;

procedure Tformobat.DBGrid1DblClick(Sender: TObject);
var
  no:string;
begin
if MessageDlg('Apakah Anda ingin Mengedit Data ini?',mtConfirmation,mbYesNoCancel,1)=mrYes then
begin
no:=qDataGrid.FieldByName('No_Obat').AsString;
      lblnoobat.Caption:=no;
     qDataGrid.Locate('No_Obat',no,[]);
     edbrand.Text:=qDataGrid.FieldByName('Nama_Brand').AsString;
     edgeneric.Text:=qDataGrid.FieldByName('Nama_Generic').AsString;
     memokomposisi.Text:=qDataGrid.FieldByName('Komposisi').AsString;
     edharga.Text:=qDataGrid.FieldByName('Harga').AsString;
     lblobatkelastiga.Caption:=qDataGrid.FieldByName('No_Kelas_Ketiga').AsString;
     lblobatkelaskedua.Caption:=qDataGrid.FieldByName('No_Kelas_Kedua').AsString;
     lblnokelaspertama.Caption:=qDataGrid.FieldByName('No_Kelas_Pertama').AsString;
     lbltransaksi.Caption:='Edit Data Transaksi';
     GroupBox1.Enabled:=false;
     GroupBox2.Enabled:=false;
     GroupBox4.Enabled:=false;
     Image1.Enabled:=false;
     Image2.Enabled:=false;
     DBGrid1.Enabled:=false;
end
else
  begin
  Abort;
  end;
end;

procedure Tformobat.edkelaspertamakeduaChange(Sender: TObject);
begin
If edkelaspertamakedua.Text<>'' then
begin
dbgridkelasduapertama.Visible:=true;
querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr('%'+edkelaspertamakedua.Text+'%'));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
end
else
  begin
  dbgridkelasduapertama.Visible:=false;
  end;
end;

procedure Tformobat.dbgridkelasduapertamaCellClick(Column: TColumn);
begin
edkelaspertamakedua.Text:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
lblkelaskeduanopertama.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
dbgridkelasduapertama.Visible:=false;
end;

procedure Tformobat.RefreshQueryKelasPertama;
begin
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama');
querymasterkelasppertama.ExecSQL;
querymasterkelasppertama.Open;
end;

procedure Tformobat.Image9Click(Sender: TObject);
begin
RefreshQueryKelasPertama;
if querymasterkelasppertama.Locate('No_Kelas_Pertama',lblkelaskeduanopertama.Caption,[]) then
  begin
    txtnokelaskedua.ReadOnly:=false;
    txtnokelaskedua.SetFocus;
    //
      //Kunci Grup Lain
  GroupBox1.Enabled:=false;
  GroupBox4.Enabled:=false;
  grupformularium.Enabled:=false;
  //
  edkelaspertamakedua.ReadOnly:=true;

  end
else
  begin
    MessageDlg('Data Kelas Tidak Ditemukan',mtInformation,[mbOK],1);
    edkelaspertamakedua.Clear;
  end;
end;

procedure Tformobat.edkelaspertamakeduaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
if dbgridkelasduapertama.Visible=true then
begin
  edkelaspertamakedua.Text:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
  lblkelaskeduanopertama.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
  dbgridkelasduapertama.Visible:=false;
end
else
  begin
  Image9Click(Sender);
  end;
end;

procedure Tformobat.Image8Click(Sender: TObject);
begin
if (txtnokelaskedua.Text='') or (txtnamakelaskedua.Text='') then
  begin
    MessageDlg('Pengisian Field Kelas Kedua Belum Lengkap',mtWarning,[mbYes],1);
  end
else
begin
tabelkelaskedua.Active:=true;
tabelkelaskedua.Append;
tabelkelaskedua.FieldByName('No_Kelas_Pertama').AsString:=lblkelaskeduanopertama.Caption;
tabelkelaskedua.FieldByName('No_Kelas_Kedua').AsString:=txtnokelaskedua.Text;
tabelkelaskedua.FieldByName('Nama_Kelas_Kedua').AsString:=txtnamakelaskedua.Text;
tabelkelaskedua.Post;
MessageDlg('Data Kelas Kedua Baru Telah Tersimpan',mtInformation,[mbYes],1);
RefreshQueryKelasDua;
//
edkelaspertamakedua.ReadOnly:=false;
txtnokelaskedua.ReadOnly:=true;
txtnamakelaskedua.ReadOnly:=true;
edkelaspertamakedua.Clear;
lblkelaskeduanopertama.Caption:='00';
txtnokelaskedua.Clear;
txtnamakelaskedua.Clear;
//
btndeletekelaskedua.Enabled:=true;
btneditkelaskedua.Enabled:=true;
GroupBox1.Enabled:=true;
grupformularium.Enabled:=true;
GroupBox4.Enabled:=true;
edkelaspertamakedua.SetFocus;
//
end;
end;
procedure Tformobat.edkelaspertamakelastigaChange(Sender: TObject);
begin
if edkelaspertamakelastiga.Text<>'' then
  begin
   gridkelaspertamakelastiga.Visible:=true;
   querymasterkelasppertama.Active:=true;
querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr('%'+edkelaspertamakelastiga.Text+'%'));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    end
else
  begin
    gridkelaspertamakelastiga.Visible:=false;
  end;
end;

procedure Tformobat.edkelaspertamakelastigaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
if gridkelaspertamakelastiga.Visible=true then
  begin
edkelaspertamakelastiga.Text:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
lblkelastiganokelaspertama.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
gridkelaspertamakelastiga.Visible:=false;
end
else
  begin
    Image10Click(Sender);
  end;
end;

procedure Tformobat.Image10Click(Sender: TObject);
begin
if edkelaspertamakelastiga.Text<>'' then
  begin
    querymasterkelasppertama.Active:=true;
    RefreshQueryKelasPertama;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',edkelaspertamakelastiga.Text,[loPartialKey])then
      begin
          lblkelastiganokelaspertama.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
          edkelaskeduakelastiga.ReadOnly:=false;
          edkelaskeduakelastiga.SetFocus;
          gridkelaspertamakelastiga.Visible:=false;
          //
          grupformularium.Enabled:=false;
          GroupBox1.Enabled:=false;
          GroupBox2.Enabled:=false;
          //
          btndeleteobatkelastiga.Enabled:=false;
          btneditkelastiga.Enabled:=false;
      end
    else
      begin
        MessageDlg('Data Kelas Pertama Tidak Ditemukan,',mtError,[mbYes],1);
        edkelaspertamakelastiga.SetFocus;
      end;
  end
else
  begin
    gridkelaspertamakelastiga.Visible:=false;
  end;
end;

procedure Tformobat.FormActivate(Sender: TObject);
begin
qDataGrid.Active:=true;
querymasterkelasppertama.Active:=true;
querykelaskedua.Active:=true;
querykelastiga.Active:=true;
adosimpankelassatu.Active:=true;
adoqdataobat.Active:=true;
adomasterdataobat.Active:=true;
adokelaspertama.Active:=true;
adokelaskedua.Active:=true;
adomasterkelastiga.Active:=true;

{querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
While not querymasterkelasppertama.Eof do
begin
cbforkelassatu.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
}
end;

procedure Tformobat.edkelaskeduakelastigaChange(Sender: TObject);
begin
if edkelaskeduakelastiga.Text<>'' then
  begin
gridnokelaskedua.Visible:=true;
querykelaskedua.Active:=true;
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Add('SELECT * FROM Master_Kelas_Kedua Where No_Kelas_Pertama Like'+QuotedStr(lblkelastiganokelaspertama.Caption)+' and Nama_Kelas_Kedua Like'+QuotedStr('%'+edkelaskeduakelastiga.Text+'%'));
querykelaskedua.ExecSQL;
querykelaskedua.Open;
//
end
else
  begin
    gridnokelaskedua.Visible:=false;
  end;
end;

procedure Tformobat.edkelaskeduakelastigaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
if gridnokelaskedua.Visible=true then
begin
  edkelaskeduakelastiga.Text:=querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString;
  lblkelasketiganokelaskedua.Caption:=querykelaskedua.FieldByName('No_Kelas_Kedua').AsString;
  gridnokelaskedua.Visible:=false;
 end
else
  begin
     Image12Click(Sender);
  end;
end;

procedure Tformobat.Image12Click(Sender: TObject);
begin
querykelaskedua.Active:=true;
if edkelaskeduakelastiga.Text<>'' then
  begin
    if querykelaskedua.Locate('Nama_Kelas_Kedua',edkelaskeduakelastiga.Text,[]) then
      begin
        edkelaskeduakelastiga.Text:=querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString;
        lblkelasketiganokelaskedua.Caption:=querykelaskedua.FieldByName('No_Kelas_Kedua').AsString;
        gridnokelaskedua.Visible:=false;
        txtnokelastiga.ReadOnly:=false;
        txtnokelastiga.SetFocus;
      end
    else
      begin
        MessageDlg('Data Kelas Kedua Tidak Ditemukan',mtWarning,[mbYes],1);
        edkelaskeduakelastiga.SetFocus;
      end;

  end
else
  begin
    edkelaskeduakelastiga.SetFocus;
  end;
  querykelaskedua.Active:=false;
end;

procedure Tformobat.RefreshQueryKelastiga;
begin
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Add('SELECT * FROM Master_Kelas_Ketiga ');
querykelastiga.ExecSQL;
querykelastiga.Open;
end;
procedure Tformobat.Image14Click(Sender: TObject);
begin
  lblkelastiganokelaspertama.Caption:='00';
    lblkelasketiganokelaskedua.Caption:='00';
    edkelaspertamakelastiga.ReadOnly:=false;
    edkelaspertamakelastiga.Clear;
    edkelaspertamakelastiga.SetFocus;
    edkelaskeduakelastiga.Clear;
    edkelaskeduakelastiga.ReadOnly:=true;
    txtnokelastiga.Clear;
    txtnokelastiga.ReadOnly:=true;
    txtnamakelastiga.Clear;
    txtnamakelastiga.ReadOnly:=true;
    //
    btneditkelastiga.Enabled:=true;
    btndeleteobatkelastiga.Enabled:=true;
    ado.Enabled:=false;
    //
    grupformularium.Enabled:=true;
    GroupBox1.Enabled:=true;
    GroupBox2.Enabled:=true;
    //
    gridkelaspertamakelastiga.Visible:=false;
    gridnokelaskedua.Visible:=false;
    //
    RefreshData;
end;

procedure Tformobat.gridkelaspertamakelastigaCellClick(Column: TColumn);
begin
edkelaspertamakelastiga.Text:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
lblkelastiganokelaspertama.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
gridkelaspertamakelastiga.Visible:=false;
end;

procedure Tformobat.Image17Click(Sender: TObject);
begin
if txtformper.Text<>'' then
  begin
    querymasterkelasppertama.Active:=true;
    RefreshQueryKelasPertama;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',txtformper.Text,[loPartialKey])then
      begin
          lblformnoper.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
          txtformked.ReadOnly:=false;
          txtformked.SetFocus;
          gridformper.Visible:=false;
          //
          GroupBox4.Enabled:=false;
          GroupBox1.Enabled:=false;
          GroupBox2.Enabled:=false;
          //
      end
    else
      begin
        MessageDlg('Data Kelas Pertama Tidak Ditemukan,',mtError,[mbYes],1);
        txtformper.SetFocus;
      end;
  end
else
  begin
    gridformper.Visible:=false;
  end;

end;

procedure Tformobat.txtformperChange(Sender: TObject);
begin
if txtformper.Text<>'' then
  begin
   txtformked.Clear;
   txtformket.Clear;
   lblformnoked.Caption:='00';
   lblformnoket.Caption:='00';
   //
   gridformper.Visible:=true;
   querymasterkelasppertama.Active:=true;
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr('%'+txtformper.Text+'%'));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    end
else
  begin
    gridformper.Visible:=false;
  end;

end;

procedure Tformobat.txtformperKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if gridformper.Visible=true then
  begin
    txtformper.Text:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
    lblformnoper.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
    gridformper.Visible:=false;
  end
else
  begin
    Image17Click(Sender);
  end;

end;

procedure Tformobat.txtformkedChange(Sender: TObject);
begin
if txtformked.Text<>'' then
  begin
txtformket.Clear;
lblformnoket.Caption:='00';
gridformked.Visible:=true;
querykelaskedua.Active:=true;
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Add('SELECT * FROM Master_Kelas_Kedua Where No_Kelas_Pertama Like'+QuotedStr(lblformnoper.Caption)+' and Nama_Kelas_Kedua Like'+QuotedStr('%'+txtformked.Text+'%'));
querykelaskedua.ExecSQL;
querykelaskedua.Open;
//
end
else
  begin
    gridformked.Visible:=false;
  end;
end;

procedure Tformobat.txtformkedKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if gridformked.Visible=true then
begin
  txtformked.Text:=querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString;
  lblformnoked.Caption:=querykelaskedua.FieldByName('No_Kelas_Kedua').AsString;
  gridformked.Visible:=false;
 end
else
  begin
     Image18Click(Sender);
  end;
end;

procedure Tformobat.Image18Click(Sender: TObject);
begin
querykelaskedua.Active:=true;
if txtformked.Text<>'' then
  begin
    if querykelaskedua.Locate('Nama_Kelas_Kedua',txtformked.Text,[]) then
      begin
        txtformked.Text:=querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString;
        lblformnoked.Caption:=querykelaskedua.FieldByName('No_Kelas_Kedua').AsString;
        gridformked.Visible:=false;
        txtformket.ReadOnly:=false;
        txtformket.SetFocus;
      end
    else
      begin
        MessageDlg('Data Kelas Kedua Tidak Ditemukan',mtWarning,[mbYes],1);
        txtformked.SetFocus;
      end;

  end
else
  begin
    txtformket.SetFocus;
  end;
  querykelaskedua.Active:=false;

end;

procedure Tformobat.txtformketChange(Sender: TObject);
begin
if txtformket.Text<>'' then
  begin
gridformket.Visible:=true;
querykelastiga.Active:=true;
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Add('SELECT * FROM Master_Kelas_Ketiga Where No_Kelas_Pertama Like'+QuotedStr(lblformnoper.Caption)+' and No_Kelas_Kedua Like'+QuotedStr(lblformnoked.Caption)+' and Nama_Kelas_Ketiga Like'+QuotedStr('%'+txtformket.Text+'%'));
querykelastiga.ExecSQL;
querykelastiga.Open;
//
end
else
  begin
    gridformket.Visible:=false;
  end;

end;

procedure Tformobat.txtformketKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if gridformket.Visible=true then
begin
  txtformket.Text:=querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString;
  lblformnoket.Caption:=querykelastiga.FieldByName('No_Kelas_Ketiga').AsString;
  gridformket.Visible:=false;
 end
else
  begin
     Image19Click(Sender);
  end;

end;

procedure Tformobat.Image19Click(Sender: TObject);
begin
querykelastiga.Active:=true;
if txtformked.Text<>'' then
  begin
    if querykelastiga.Locate('Nama_Kelas_Ketiga',txtformket.Text,[]) then
      begin
        txtformket.Text:=querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString;
        lblformnoket.Caption:=querykelastiga.FieldByName('No_Kelas_Ketiga').AsString;
        gridformket.Visible:=false;
        edbrand.ReadOnly:=false;
        edbrand.SetFocus;
      end
    else
      begin
        MessageDlg('Data Kelas Ketiga Tidak Ditemukan',mtWarning,[mbYes],1);
        txtformket.SetFocus;
      end;

  end
else
  begin
    txtformket.SetFocus;
  end;
  querykelastiga.Active:=false;


end;

procedure Tformobat.Image15Click(Sender: TObject);
begin
GroupBox1.Enabled:=true;
GroupBox2.Enabled:=true;
GroupBox4.Enabled:=true;
txtformper.Clear;
txtformked.Clear;
txtformket.Clear;
lblformnoper.Caption:='00';
lblformnoked.Caption:='00';
lblformnoket.Caption:='00';
gridformper.Visible:=false;
gridformked.Visible:=false;
gridformket.Visible:=false;
edbrand.Clear;
edgeneric.Clear;
memokomposisi.Clear;
edharga.Clear;
Image1.Enabled:=false;
txtformked.ReadOnly:=true;
txtformket.ReadOnly:=true;
edbrand.ReadOnly:=true;
edgeneric.ReadOnly:=true;
edharga.ReadOnly:=true;
memokomposisi.ReadOnly:=true;
txtformper.SetFocus;
Image2.Enabled:=true;
Image3.Enabled:=true;
lbltransaksi.Caption:='Tidak Ada Transaksi';
end;

procedure Tformobat.edbrandKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
btnceknaaobatClick(Sender);
end;

procedure Tformobat.edhargaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image1.Enabled:=true;
  MessageDlg('Silahkan Klik Tombol Add untuk Menyimpan Data Baru Formularium',mtInformation,[mbOK],1);

end;

procedure Tformobat.gridformperCellClick(Column: TColumn);
begin
    txtformper.Text:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
    lblformnoper.Caption:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
    gridformper.Visible:=false;
end;

procedure Tformobat.gridformkedCellClick(Column: TColumn);
begin
  txtformked.Text:=querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString;
  lblformnoked.Caption:=querykelaskedua.FieldByName('No_Kelas_Kedua').AsString;
  gridformked.Visible:=false;

end;

procedure Tformobat.gridformketCellClick(Column: TColumn);
begin
  txtformket.Text:=querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString;
  lblformnoket.Caption:=querykelastiga.FieldByName('No_Kelas_Ketiga').AsString;
  gridformket.Visible:=false;
end;

procedure Tformobat.Image22Click(Sender: TObject);
begin
edkelaspertamakedua.Clear;
edkelaspertamakedua.ReadOnly:=False;
txtnokelaskedua.ReadOnly:=true;
txtnokelaskedua.Clear;
txtnamakelaskedua.Clear;
txtnamakelaskedua.ReadOnly:=True;
dbgridkelasduapertama.Visible:=false;
edkelaspertamakedua.SetFocus;
GroupBox1.Enabled:=True;
GroupBox4.Enabled:=True;
grupformularium.Enabled:=True;
lblkelaskeduanopertama.Caption:='00';
Image8.Enabled:=false;
btndeletekelaskedua.Enabled:=true;
btneditkelaskedua.Enabled:=true;
end;

procedure Tformobat.RefreshForm;
begin
edkelaspertamakedua.Clear;
edkelaspertamakedua.ReadOnly:=False;
txtnokelaskedua.ReadOnly:=true;
txtnokelaskedua.Clear;
txtnamakelaskedua.Clear;
txtnamakelaskedua.ReadOnly:=True;
dbgridkelasduapertama.Visible:=false;
edkelaspertamakedua.SetFocus;
GroupBox1.Enabled:=True;
GroupBox4.Enabled:=True;
grupformularium.Enabled:=True;
lblkelaskeduanopertama.Caption:='00';
Image8.Enabled:=false;
btndeletekelaskedua.Enabled:=true;
btneditkelaskedua.Enabled:=true;
  lblkelastiganokelaspertama.Caption:='00';
    lblkelasketiganokelaskedua.Caption:='00';
    edkelaspertamakelastiga.ReadOnly:=false;
    edkelaspertamakelastiga.Clear;
    edkelaspertamakelastiga.SetFocus;
    edkelaskeduakelastiga.Clear;
    edkelaskeduakelastiga.ReadOnly:=true;
    txtnokelastiga.Clear;
    txtnokelastiga.ReadOnly:=true;
    txtnamakelastiga.Clear;
    txtnamakelastiga.ReadOnly:=true;
    //
    btneditkelastiga.Enabled:=true;
    btndeleteobatkelastiga.Enabled:=true;
    ado.Enabled:=false;
    //
    grupformularium.Enabled:=true;
    GroupBox1.Enabled:=true;
    GroupBox2.Enabled:=true;
    //
    gridkelaspertamakelastiga.Visible:=false;
    gridnokelaskedua.Visible:=false;
    //
GroupBox1.Enabled:=true;
GroupBox2.Enabled:=true;
GroupBox4.Enabled:=true;
txtformper.Clear;
txtformked.Clear;
txtformket.Clear;
lblformnoper.Caption:='00';
lblformnoked.Caption:='00';
lblformnoket.Caption:='00';
gridformper.Visible:=false;
gridformked.Visible:=false;
gridformket.Visible:=false;
edbrand.Clear;
edgeneric.Clear;
memokomposisi.Clear;
edharga.Clear;
Image1.Enabled:=false;
txtformked.ReadOnly:=true;
txtformket.ReadOnly:=true;
edbrand.ReadOnly:=true;
edgeneric.ReadOnly:=true;
edharga.ReadOnly:=true;
memokomposisi.ReadOnly:=true;
txtformper.SetFocus;
Image2.Enabled:=true;
Image3.Enabled:=true;
lbltransaksi.Caption:='Tidak Ada Transaksi';
//
grupformularium.Enabled:=true;
GroupBox1.Enabled:=true;
GroupBox2.Enabled:=true;
GroupBox4.Enabled:=true;
btnaddkelassatu.Enabled:=false;
btneditkelassatu.Enabled:=true;
btndeletekelassatu.Enabled:=true;
txtnamakelaspertama.Clear;

end;



procedure Tformobat.RadioButton1Click(Sender: TObject);
begin
RefreshQueryKelasPertama;
dgridpertama.Visible:=true;
DBGrid1.Visible:=false;
dgridkelasdua.Visible:=false;
dgridkelastiga.Visible:=false;
end;

procedure Tformobat.RadioButton2Click(Sender: TObject);
begin
RefreshQueryKelasDua;
dgridkelasdua.Visible:=true;
dgridpertama.Visible:=false;
dgridkelastiga.Visible:=false;
DBGrid1.Visible:=false;
end;

procedure Tformobat.RefreshQueryKelasDua;
begin
querykelaskedua.Active:=true;
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Add('Select * from Master_Kelas_Kedua');
querykelaskedua.ExecSQL;
querykelaskedua.Open;

end;
procedure Tformobat.RadioButton3Click(Sender: TObject);
begin
RefreshQueryKelastiga;
dgridkelasdua.Visible:=false;
dgridpertama.Visible:=false;
dgridkelastiga.Visible:=true;
DBGrid1.Visible:=false;
end;

procedure Tformobat.RefreshFormularium;
begin
qDataGrid.Active:=true;
qDataGrid.Close;
qDataGrid.SQL.Clear;
qDataGrid.SQL.Add('SELECT * FROM q_formularium_obat');
qDataGrid.ExecSQL;
qDataGrid.Open;
end;

procedure Tformobat.FormCreate(Sender: TObject);
begin
RadioButton4Click(Sender);
//edkelaspertamakelastiga.SetFocus;
end;

procedure Tformobat.RadioButton4Click(Sender: TObject);
begin
RefreshFormularium;
dgridkelasdua.Visible:=false;
dgridpertama.Visible:=false;
dgridkelastiga.Visible:=False;
DBGrid1.Visible:=True;

end;

procedure Tformobat.EditDataInin1Click(Sender: TObject);
var
  data,data1,data2:string;
begin
if RadioButton1.Checked=true then
begin
data:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
if data<>'' then
  begin
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr(data));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',data,[])then
      begin
        ShowMessage('Nama Kelas Ditemukan , dengan Nomor '+querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString);
        if MessageDlg('Apakah anda ingin Mengedit Data Kelas Pertama ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              data2:=InputBox('Konfirmasi Edit Data','Masukkan Nama Baru untuk Kelas Pertama ini?','');
              querymasterkelasppertama.Close;
              querymasterkelasppertama.SQL.Clear;
              querymasterkelasppertama.SQL.Text:='UPDATE Master_Kelas_Pertama SET Nama_Kelas_Pertama='+QuotedStr(data2)+' WHERE Nama_Kelas_Pertama='+QuotedStr(data);
              querymasterkelasppertama.ExecSQL;
              RefreshQueryKelasPertama;
              MessageDlg('Data Edit Kelas Pertama telah Tersimpan',mtInformation,[mbYes],1);
          end
        else
          begin
            ShowMessage('Pengeditan Data Dibatalkan');
          end;
      end
    else
      begin
         ShowMessage('Nama Kelas Tidak Ditemukan');
    end;
end
else
  begin
  ShowMessage('Data Masih Kosong');
end;

end
else if RadioButton2.Checked=true then
begin
data:=querykelaskedua.FieldByName('No_Kelas_Pertama').AsString;
data1:=querykelaskedua.FieldByName('No_Kelas_Kedua').AsString;
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Text:='SELECT * FROM Master_Kelas_Kedua WHERE No_Kelas_Pertama like'+QuotedStr('%'+data+'%')+' and No_Kelas_Kedua='+QuotedStr(data1);
querykelaskedua.ExecSQL;
querykelaskedua.Open;
if querykelaskedua.Locate('No_Kelas_Kedua',data1,[])then
  begin
    ShowMessage('Data Kelas Kedua Ditemukan dengan Nama Kelas :'+querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString);
    if MessageDlg('Apakah anda ingin Mengedit Data Kelas Kedua ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              data2:=InputBox('Konfirmasi Edit Data','Masukkan Nama Baru untuk Kelas Kedua ini?','');
              querykelaskedua.Close;
              querykelaskedua.SQL.Clear;
              querykelaskedua.SQL.Text:='UPDATE Master_Kelas_Kedua SET Nama_Kelas_Kedua='+QuotedStr(data2)+' WHERE No_Kelas_Kedua='+QuotedStr(data1);
              querykelaskedua.ExecSQL;
              RefreshQueryKelasDua;
              MessageDlg('Data Edit Kelas Kedua telah Tersimpan',mtInformation,[mbYes],1);
          end
        else
          begin
            MessageDlg('Pengeditan Data Kelas Kedua Dibatalkan',mtWarning,[mbOK],1);
          end;
  end
else
  begin
    MessageDlg('Data Kelas Kedua Tidak Ditemukan',mtError,[mbOK],1);
  end;
end
else if RadioButton3.Checked=true then
begin
data:=querykelastiga.FieldByName('No_Kelas_Ketiga').AsString;
//
querykelastiga.Active:=true;
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Add('SELECT * FROM Query_Kelas_tiga WHERE No_Kelas_Ketiga like'+QuotedStr(data));
querykelastiga.ExecSQL;
querykelastiga.Open;
//
if querykelastiga.Locate('No_Kelas_Ketiga',data,[])then
  begin
    ShowMessage('Data Kelas Ketiga Ditemukan dengan Nama Kelas :'+querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString);
    if MessageDlg('Apakah anda ingin Mengedit Data Kelas Kedua ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
                data1:=InputBox('Edit Record Kelas Tiga','Silahkan Masukkan Nomor Kelas Tiga Baru : ','');
                data2:=InputBox('Edit Record Kelas Tiga','Silahkan Masukkan Nama Kelas Tiga Baru : ','');
                querykelastiga.Active:=true;
                querykelastiga.Close;
                querykelastiga.SQL.Clear;
                querykelastiga.SQL.Add('SELECT * FROM Query_Kelas_tiga ');
                querykelastiga.ExecSQL;
                querykelastiga.Open;
                //
                      adomasterkelastiga.Active:=true;
                      adomasterkelastiga.Locate('No_Kelas_Ketiga',data,[]);
                      adomasterkelastiga.Edit;
                      adomasterkelastiga.FieldByName('No_Kelas_Ketiga').AsString:=data1;
                      adomasterkelastiga.FieldByName('Nama_Kelas_Ketiga').AsString:=data2;
                      adomasterkelastiga.Post;
                      RefreshQueryKelastiga;
                end//Akhir Jika Data Message Dialog Ya
        else
          begin
            MessageDlg('Pengeditan Data Dibatalkan',mtWarning,[mbYes],1);
          end;
    end
else
  begin
    MessageDlg('Data Kelas Ketiga Tidak Ditemukan',mtError,[mbOK],1);
  end;
end
else if RadioButton4.Checked=true then
  begin
  data:=qDataGrid.FieldByName('No_Obat').AsString;
  adoqdataobat.Active:=true;
if adoqdataobat.Locate('No_Obat',data,[]) then
  begin
     qDataGrid.Active:=true;
     qDataGrid.Locate('No_Obat',data,[]);
     txtformper.Text:=qDataGrid.FieldByName('Nama_Kelas_Pertama').AsString;
     txtformked.Text:=qDataGrid.FieldByName('Nama_Kelas_Kedua').AsString;
     txtformket.Text:=qDataGrid.FieldByName('Nama_Kelas_Ketiga').AsString;
     lblformnoper.Caption:=qDataGrid.FieldByName('No_Kelas_Pertama').AsString;
     lblformnoked.Caption:=qDataGrid.FieldByName('No_Kelas_Kedua').AsString;
     lblformnoket.Caption:=qDataGrid.FieldByName('No_Kelas_Ketiga').AsString;
     //
     edbrand.Text:=qDataGrid.FieldByName('Nama_Brand').AsString;
     edgeneric.Text:=qDataGrid.FieldByName('Nama_Generic').AsString;
     memokomposisi.Text:=qDataGrid.FieldByName('Komposisi').AsString;
     edharga.Text:=qDataGrid.FieldByName('Harga').AsString;
     lblobatkelastiga.Caption:=qDataGrid.FieldByName('No_Kelas_Ketiga').AsString;
     lblobatkelaskedua.Caption:=qDataGrid.FieldByName('No_Kelas_Kedua').AsString;
     lblnokelaspertama.Caption:=qDataGrid.FieldByName('No_Kelas_Pertama').AsString;
     lblnoobat.Caption:=qDataGrid.FieldByName('No_Obat').AsString;
     lbltransaksi.Caption:='Edit Data Formularium';
     //
     gridformper.Visible:=false;
     gridformked.Visible:=false;
     gridformket.Visible:=false;
     //
     GroupBox1.Enabled:=false;
     GroupBox2.Enabled:=false;
     GroupBox4.Enabled:=false;
     Image1.Enabled:=false;
     Image2.Enabled:=false;
     DBGrid1.Enabled:=false;
     txtformper.ReadOnly:=false;
     txtformked.ReadOnly:=false;
     txtformket.ReadOnly:=False;
     edbrand.ReadOnly:=false;
     edgeneric.ReadOnly:=false;
     memokomposisi.ReadOnly:=false;
     edharga.ReadOnly:=false;

     edbrand.SetFocus;
     MessageDlg('Anda Saat ini Masuk Kedalam Format Edit Data Formularium,silahkan Klik Tombol add / Edit untuk menyimpan',mtInformation,[mbOK],1);
  end
else
  begin
    MessageDlg('Data Tidak Ditemukan',mtError,mbOKCancel,1);
  end;

end
//
else
  begin
  MessageDlg('Silahkan Pilih Dahulu Di Pilih Data',mtError,[mbYes],1);
  end;
end;

procedure Tformobat.TutupKoneksi;
begin
ADOConnection1.Connected:=false;
querymasterkelasppertama.Active:=false;
querykelaskedua.Active:=false;
querykelastiga.Active:=false;
qDataGrid.Active:=false;
queryhapus.Active:=false;
queryjumlahmasterkelaskedua.Active:=false;
adosimpankelassatu.Active:=false;
adoqdataobat.Active:=false;
adomasterdataobat.Active:=false;
adokelaspertama.Active:=false;
adokelaskedua.Active:=false;
adomasterkelastiga.Active:=false;
end;

procedure Tformobat.Image28Click(Sender: TObject);
begin
RefreshData;
RefreshForm;
TutupKoneksi;
formlihatobat.ADOConnection1.Connected:=true;
formlihatobat.querylihatobatterbanyak.Active:=true;
formlihatobat.queryformularium.Active:=true;
formlihatobat.querymasterkelasppertama.Active:=true;
formlihatobat.query_master_kedua.Active:=true;
formlihatobat.querymasterkelasketiga.Active:=true;
formlihatobat.Show;
formobat.Hide;
end;

procedure Tformobat.LihatdataObat1Click(Sender: TObject);
begin
RefreshData;
RefreshForm;
formlihatobat.ADOConnection1.Connected:=true;
formlihatobat.querylihatobatterbanyak.Active:=true;
formlihatobat.queryformularium.Active:=true;
formlihatobat.querymasterkelasppertama.Active:=true;
formlihatobat.query_master_kedua.Active:=true;
formlihatobat.querymasterkelasketiga.Active:=true;
formlihatobat.Show;
formobat.Hide;

end;

procedure Tformobat.HapusDataIni1Click(Sender: TObject);
var
  data,data1,nokelas:string;
  x,y:integer;
begin
if RadioButton1.Checked=true then
begin
data:=querymasterkelasppertama.FieldByName('Nama_Kelas_Pertama').AsString;
if data<>'' then
  begin
    querymasterkelasppertama.Active:=true;
    querymasterkelasppertama.Close;
    querymasterkelasppertama.SQL.Clear;
    querymasterkelasppertama.SQL.Add('SELECT * FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama Like '+QuotedStr(data));
    querymasterkelasppertama.ExecSQL;
    querymasterkelasppertama.Open;
    if querymasterkelasppertama.Locate('Nama_Kelas_Pertama',data,[])then
      begin
        ShowMessage('Nama Kelas Ditemukan , dengan Nomor '+querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString);
        nokelas:=querymasterkelasppertama.FieldByName('No_Kelas_Pertama').AsString;
        if MessageDlg('Apakah anda ingin Menghapus Data Kelas Pertama ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              querymasterkelasppertama.Close;
              querymasterkelasppertama.SQL.Clear;
              querymasterkelasppertama.SQL.Text:='DELETE FROM Master_Kelas_Pertama WHERE Nama_Kelas_Pertama='+QuotedStr(data);
              querymasterkelasppertama.ExecSQL;
              ///
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_kedua.No_Kelas_Pertama, Count(master_kelas_kedua.No_Kelas_Pertama) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_kedua');
              queryhapus.SQL.Add('GROUP BY master_kelas_kedua.No_Kelas_Pertama;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              //
              if queryhapus.Locate('No_Kelas_Pertama',nokelas,[]) then
                begin
              y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);

              //Perulangan Hapus Data Dari Master Kelas Kedua
              for x:=1 to y do
               begin
                tabelkelaskedua.Active:=false;
                tabelkelaskedua.Active:=true;
                if tabelkelaskedua.Locate('No_Kelas_Pertama',nokelas,[]) then
                  begin
                tabelkelaskedua.Delete;
                end
                else
                  begin
                  end;
               end;
                end;
                //Perulangan Hapus Data Dari Master Kelas Ketiga
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_ketiga.No_Kelas_Pertama, Count(master_kelas_ketiga.No_Kelas_Pertama) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_ketiga');
              queryhapus.SQL.Add('GROUP BY master_kelas_ketiga.No_Kelas_Pertama;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              if queryhapus.Locate('No_Kelas_Pertama',nokelas,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                adomasterkelastiga.Active:=false;
                adomasterkelastiga.Active:=true;
                if adomasterkelastiga.Locate('No_Kelas_Pertama',nokelas,[]) then
                  begin
                adomasterkelastiga.Delete;
                end
                else
                begin
                end;
               end;
              end;
              {//Perulangan Hapus Data Dari Master Formularium Obat
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_formularium_obat.No_Obat, Count(master_formularium_obat.No_Obat) AS Jumlah');
              queryhapus.SQL.Add('From master_formularium_obat');
              queryhapus.SQL.Add('GROUP BY master_formularium_obat.No_Obat;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              if queryhapus.Locate('No_Obat',nokelas,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                ListBox1.Items.Add('1');
                adoqdataobat.Active:=false;
                adoqdataobat.Active:=true;
                adoqdataobat.Locate('No_Obat',nokelas,[]);
                adoqdataobat.Delete;
               end;
              end;
              }
              queryhapus.Active:=false;
               MessageDlg('Data Kelas Pertama berhasil Dihapus Di Semua Data Kelas',mtInformation,[mbYes],1);
              RefreshQueryKelasPertama;
          end
        else
          begin
            ShowMessage('Penghapusan Data Dibatalkan');
          end;
      end
    else
      begin
         ShowMessage('Nama Kelas Tidak Ditemukan');
    end;
  end
else
  begin
  ShowMessage('Data Masih Kosong');
  txtnamakelaspertama.SetFocus;
end;
end
else if RadioButton2.Checked=true then
  begin
data:=querykelaskedua.FieldByName('No_Kelas_Pertama').AsString;
data1:=querykelaskedua.FieldByName('No_Kelas_Kedua').AsString;
querykelaskedua.Close;
querykelaskedua.SQL.Clear;
querykelaskedua.SQL.Text:='SELECT * FROM Master_Kelas_Kedua WHERE No_Kelas_Pertama like'+QuotedStr('%'+data+'%')+' and No_Kelas_Kedua='+QuotedStr(data1);
querykelaskedua.ExecSQL;
querykelaskedua.Open;
if querykelaskedua.Locate('No_Kelas_Kedua',data1,[])then
  begin
    ShowMessage('Data Kelas Kedua Ditemukan dengan Nama Kelas :'+querykelaskedua.FieldByName('Nama_Kelas_Kedua').AsString);
    if MessageDlg('Apakah anda ingin Menghapus Data Kedua ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              tabelkelaskedua.Active:=true;
              if tabelkelaskedua.Locate('No_Kelas_Kedua',data1,[])then
                begin
                  tabelkelaskedua.Delete;
                end
              else
                begin
                end;
              {querykelaskedua.Close;
              querykelaskedua.SQL.Clear;
              querykelaskedua.SQL.Text:='DELETE FROM Master_Kelas_Kedua WHERE No_Kelas_Kedua='+QuotedStr(data1);
              querykelaskedua.ExecSQL;   }
              //Perulangan Hapus Data Dari Master Kelas Ketiga
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_ketiga.No_Kelas_Kedua, Count(master_kelas_ketiga.No_Kelas_Kedua) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_ketiga');
              queryhapus.SQL.Add('GROUP BY master_kelas_ketiga.No_Kelas_Kedua;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              if queryhapus.Locate('No_Kelas_Kedua',data1,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                adomasterkelastiga.Active:=false;
                adomasterkelastiga.Active:=true;
                if adomasterkelastiga.Locate('No_Kelas_Kedua',data1,[]) then
                begin
                adomasterkelastiga.Delete;
                end
                else
                  begin
                  end;
               end;
              end;
                RefreshQueryKelasDua;
                MessageDlg('Data berhasil Dihapus',mtInformation,[mbYes],1);
          end
        else
          begin
            RefreshQueryKelasDua;
            ShowMessage('Penghapusan Data Dibatalkan');
          end;
  end
else
  begin
    ShowMessage('Data Kelas Kedua Tidak Ditemukan');
end;

  end///
else if RadioButton3.Checked=true then
begin
data:=querykelastiga.FieldByName('No_Kelas_Kedua').AsString;
data1:=querykelastiga.FieldByName('No_Kelas_Ketiga').AsString;
querykelastiga.Close;
querykelastiga.SQL.Clear;
querykelastiga.SQL.Text:='SELECT * FROM Master_Kelas_Ketiga WHERE No_Kelas_Kedua like'+QuotedStr('%'+data+'%')+' and No_Kelas_Ketiga='+QuotedStr(data1);
querykelastiga.ExecSQL;
querykelastiga.Open;
if querykelastiga.Locate('No_Kelas_Ketiga',data1,[])then
  begin
    ShowMessage('Data Kelas Ketiga Ditemukan dengan Nama Kelas :'+querykelastiga.FieldByName('Nama_Kelas_Ketiga').AsString);
    if MessageDlg('Apakah anda ingin Menghapus Data Kelas ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_kelas_ketiga.No_Kelas_Ketiga, Count(master_kelas_ketiga.No_Kelas_Ketiga) AS Jumlah');
              queryhapus.SQL.Add('From master_kelas_ketiga');
              queryhapus.SQL.Add('GROUP BY master_kelas_ketiga.No_Kelas_Ketiga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
               y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                adomasterkelastiga.Active:=false;
                adomasterkelastiga.Active:=true;
                if adomasterkelastiga.Locate('No_Kelas_Ketiga',data1,[]) then
                begin
                adomasterkelastiga.Delete;
                end
                else
                  begin
                  end;
               end;

              //
               queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_formularium_obat.No_Kelas_Ketiga, Count(master_formularium_obat.No_Kelas_Ketiga) AS Jumlah');
              queryhapus.SQL.Add('From master_formularium_obat');
              queryhapus.SQL.Add('GROUP BY master_formularium_obat.No_Kelas_Ketiga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              queryhapus.Locate('No_Kelas_Ketiga',data1,[]);
              y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
              ShowMessage('Data Formularium Ditemukan Sebanyak '+IntToStr(y));
              for x:=1 to y do
                begin
                adoqdataobat.Active:=false;
                adoqdataobat.Active:=true;
                if adoqdataobat.Locate('No_Kelas_Ketiga',data1,[]) then
                begin
                adoqdataobat.Delete;
                end
                else
                begin
                end;
               end;
               RefreshQueryKelastiga;
              MessageDlg('Data berhasil Dihapus',mtInformation,[mbYes],1);

          end
        else
          begin
              MessageDlg('Penghapusan Data Dibatalkan',mtWarning,[mbYes],1);
          end;
  end
else
  begin
    MessageDlg('Data Kelas Ketiga Tidak Ditemukan',mtError,[mbOK],1);
end;

end
else if RadioButton4.Checked=true then
  begin
adoqdataobat.Active:=True;
data:=qDataGrid.FieldByName('No_Obat').AsString;
if adoqdataobat.Locate('No_Obat',data,[]) then
  begin
    adoqdataobat.Delete;
      MessageDlg('Data Berhasil Terhapus',mtInformation,[mbOK],1);
    RefreshData;
  end
else
  begin
    MessageDlg('Nomor Obat Tidak Ditemukan',mtError,[mbYes],1);
  end;

end
else
  begin
    MessageDlg('Silahkan Pilih Dulu Di Pilih Data',mtError,[mbYes],1);
  end;
end;

procedure Tformobat.Image24Click(Sender: TObject);
var
  Excel : Variant;
  i : Integer;
begin
  if OpenDialog1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        querymasterkelasppertama.Close;
        querymasterkelasppertama.SQL.Clear;
        querymasterkelasppertama.SQL.Text :='insert into Master_Kelas_Pertama (Nama_Kelas_Pertama)'+
                            'values (:namakelas)';
        querymasterkelasppertama.Parameters.ParamByName('namakelas').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
         querymasterkelasppertama.ExecSQL;
        inc(i);
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
      end;
      Excel.Quit;
    Except
      on E:Exception do
      begin
      MessageDlg('Import Data Gagal',mtError,[mbOK],1);
        raise Exception.Create(E.Message);
      end;
    End;
  end;
RefreshQueryKelasPertama;
end;

procedure Tformobat.Image25Click(Sender: TObject);
var
  Excel : Variant;
  i : Integer;
begin
  if OpenDialog1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        querykelaskedua.Close;
        querykelaskedua.SQL.Clear;
        querykelaskedua.SQL.Text :='insert into Master_Kelas_Kedua (No_Kelas_Pertama,No_Kelas_Kedua,Nama_Kelas_Kedua)'+
                            'values (:noper,:noked,:namakelas)';
        querykelaskedua.Parameters.ParamByName('noper').Value:=StrToInt(VarToStr(Excel.cells.range['a'+inttostr(i)]));
        querykelaskedua.Parameters.ParamByName('noked').Value:=VarToStr(Excel.cells.range['b'+inttostr(i)]);
        querykelaskedua.Parameters.ParamByName('namakelas').Value:=VarToStr(Excel.cells.range['c'+inttostr(i)]);
        querykelaskedua.ExecSQL;
        inc(i);
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
      end;
      Excel.Quit;
    Except
      on E:Exception do
      begin
      MessageDlg('Import Data Gagal',mtError,[mbOK],1);
        raise Exception.Create(E.Message);
      end;
    End;
  end;
//RefreshQueryKelasDua;
end;

procedure Tformobat.Image26Click(Sender: TObject);
var
  Excel : Variant;
  i : Integer;
begin
  if OpenDialog1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        querykelastiga.Close;
        querykelastiga.SQL.Clear;
        querykelastiga.SQL.Text :='insert into Master_Kelas_Ketiga (No_Kelas_Pertama,No_Kelas_Kedua,No_Kelas_Ketiga,Nama_Kelas_Ketiga)'+
                            'values (:noper,:noked,:noket,:namakelas)';
        querykelastiga.Parameters.ParamByName('noper').Value:=StrToInt(VarToStr(Excel.cells.range['a'+inttostr(i)]));
        querykelastiga.Parameters.ParamByName('noked').Value:=VarToStr(Excel.cells.range['b'+inttostr(i)]);
        querykelastiga.Parameters.ParamByName('noket').Value:=VarToStr(Excel.cells.range['c'+inttostr(i)]);
        querykelastiga.Parameters.ParamByName('namakelas').Value:=VarToStr(Excel.cells.range['d'+inttostr(i)]);
        querykelastiga.ExecSQL;
        inc(i);
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
      end;
      Excel.Quit;
    Except
      on E:Exception do
      begin
      MessageDlg('Import Data Gagal',mtError,[mbOK],1);
        raise Exception.Create(E.Message);
      end;
    End;
  end;
RefreshQueryKelastiga;
end;

procedure Tformobat.Image27Click(Sender: TObject);
var
  Excel : Variant;
  i : Integer;
begin
  if OpenDialog1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        qDataGrid.Close;
        qDataGrid.SQL.Clear;
        qDataGrid.SQL.Text :='insert into Master_Formularium_Obat(No_Kelas_Ketiga,Nama_Generic,Komposisi,Nama_Brand,Harga)'+
                            'values (:noket,:nagen,:kompos,:nabrand,:harga)';
        qDataGrid.Parameters.ParamByName('noket').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
        qDataGrid.Parameters.ParamByName('nagen').Value:=VarToStr(Excel.cells.range['b'+inttostr(i)]);
        qDataGrid.Parameters.ParamByName('kompos').Value:=VarToStr(Excel.cells.range['c'+inttostr(i)]);
        qDataGrid.Parameters.ParamByName('nabrand').Value:=VarToStr(Excel.cells.range['d'+inttostr(i)]);
         qDataGrid.Parameters.ParamByName('harga').Value:=VarToStr(Excel.cells.range['e'+inttostr(i)]);
        qDataGrid.ExecSQL;
        inc(i);
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
      end;
      Excel.Quit;
    Except
      on E:Exception do
      begin
      MessageDlg('Import Data Gagal',mtError,[mbOK],1);
        raise Exception.Create(E.Message);
      end;
    End;
  end;
end;

end.
