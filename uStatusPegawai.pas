unit uStatusPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, Menus, jpeg, ComObj;

type
  Tformmasterstatus = class(TForm)
    Image1: TImage;
    GroupBox2: TGroupBox;
    Image5: TImage;
    Image8: TImage;
    btndeletedata: TImage;
    btneditkelaskedua: TImage;
    Shape6: TShape;
    Label6: TLabel;
    edstatus: TEdit;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Shape4: TShape;
    Label9: TLabel;
    Shape1: TShape;
    Label10: TLabel;
    txtno: TEdit;
    txtstatus: TEdit;
    Image4: TImage;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    Timer1: TTimer;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    RefreshData1: TMenuItem;
    KembaliKeTransaksiPegawai2: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    Image6: TImage;
    Image7: TImage;
    OpenDialog1: TOpenDialog;
    procedure Timer1Timer(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure KembaliKeTransaksiPegawai1Click(Sender: TObject);
    procedure KembaliMenuPegawai1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure edstatusKeyPress(Sender: TObject; var Key: Char);
    procedure btndeletedataClick(Sender: TObject);
    procedure btneditkelaskeduaClick(Sender: TObject);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure KembaliKeTransaksiPegawai2Click(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure txtnoKeyPress(Sender: TObject; var Key: Char);
    procedure txtstatusKeyPress(Sender: TObject; var Key: Char);
    procedure Image6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure txtnoChange(Sender: TObject);
    procedure txtstatusChange(Sender: TObject);
  private
    procedure RefreshData;
    procedure IsiStatusKePegawai;
    procedure IsiStatusKeLihat;
    procedure IsiLihatPasien;
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmasterstatus: Tformmasterstatus;

implementation

uses uAbout, UASAL, uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  ulihatdataobat, ulihatkeluarga, uLihatPasien, ulihatrecord,
  uLihatTranspeg, ulogindokter, umainobat, umainobatpoli, uMainUtama,
  uMasterDokter, uMasterKegunaanObat, uMasterKeluarga, uMasterLogin,
  uMasterObat, uMasterPasien, uMenuAwal, uMenuPegawai, uPasien,
  upilihdokter, uPilihKeluarga, uSplash, uTransunit;

{$R *.dfm}

procedure Tformmasterstatus.Timer1Timer(Sender: TObject);
begin
if edstatus.Text<>'' then
  begin
    Shape6.Visible:=true;
  end
else
  begin
    Shape6.Visible:=false;
  end;
if txtno.Text<>'' then
  begin
    Shape4.Visible:= true;
  end
else
  begin
    Shape4.Visible:= false;
  end;
if txtstatus.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
end;

procedure Tformmasterstatus.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tformmasterstatus.KembaliKeTransaksiPegawai1Click(
  Sender: TObject);
begin
  ftransaksipegawai.Show;
  formmasterstatus.Hide;
end;

procedure Tformmasterstatus.KembaliMenuPegawai1Click(Sender: TObject);
begin
formmainpegawai.Show;
formmasterstatus.Hide;
end;

procedure Tformmasterstatus.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformmasterstatus.Image8Click(Sender: TObject);
begin
        ADOTable1.Active:=true;
if edstatus.Text<>'' then
  begin
    if ADOTable1.Locate('Keterangan_Status',edstatus.Text,[]) then
      begin
        ShowMessage('Data Field sudah ada');
      end
    else
      begin
        ADOTable1.Append;
        ADOTable1.FieldByName('Keterangan_Status').AsString:=edstatus.Text;
        ADOTable1.Post;
//Mengisi Ke Master Status Pegawai
edstatus.Clear;
IsiStatusKePegawai;
IsiStatusKeLihat;
IsiLihatPasien;
//
ADOQuery1.Active:=false;
ADOQuery1.Active:=true;
ADOTable1.Active:=false;
ShowMessage('Data Tersimpan');
      end
    end
else
  begin
    ShowMessage('Masih ada Field Kosong');
  end;
end;

procedure Tformmasterstatus.edstatusKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  if edstatus.Text<>'' then
    begin
      ShowMessage('Silahkan klik Tombol Add untuk menyimpan');
    end
  else
    begin
      ShowMessage('Field masih kosong');
    end;
end;

procedure Tformmasterstatus.btndeletedataClick(Sender: TObject);
var
  i,data1:string;
begin
ADOTable1.Active:=true;
repeat
    i:='';
    if InputQuery('Hapus Data', 'Silahkan masukkan kode status :', i) then
      begin
        try
          if (StrToInt(i) < 0) or (StrToInt(i) > 100) then
            showmessage('Silahkan masukkan angka untuk kode status');
            except
            showmessage('Kode harus berupa angka');
            i:='-1';
        end;
      end
    else
      break;
        until (StrToInt(i) >= 0) and ((StrToInt(i) <= 100));
        data1:=i;
          if ADOTable1.Locate('Keterangan_Status',data1,[]) then
    begin
      ADOTable1.Delete;

IsiStatusKePegawai;
IsiStatusKeLihat;
IsiLihatPasien;
MessageDlg('Data Berhasil Dihapus',mtInformation,[mbOK],1);
//
        ADOQuery1.Active:=false;
        ADOQuery1.Active:=true;
        ADOTable1.Active:=false;

    end
  else
    begin
      ShowMessage('Data Tidak Ditemukan');
        formlihattranspeg.ADOQuery2.Active:=true;
formlihattranspeg.ADOQuery2.Close;
formlihattranspeg.ADOQuery2.SQL.Clear;
formlihattranspeg.ADOQuery2.SQL.Add('SELECT * FROM Master_Status');
formlihattranspeg.ADOQuery2.ExecSQL;
formlihattranspeg.ADOQuery2.Open;
formlihattranspeg.cbkspeg.Clear;
While not formlihattranspeg.ADOQuery2.Eof do
  begin
  formlihattranspeg.cbkspeg.Items.Add(formlihattranspeg.ADOQuery2['Keterangan_status']);
  formlihattranspeg.ADOQuery2.Next;
end;
        ADOQuery1.Active:=false;
        ADOQuery1.Active:=true;
        ADOTable1.Active:=false;
end;





  data1:=InputBox('Hapus Data :','Masukkan Jenis Status : ','');

end;

procedure Tformmasterstatus.btneditkelaskeduaClick(Sender: TObject);
var
  i,data1,data2:string;
begin
 ADOTable1.Active:=true;
//  data1:=InputBox('Edit Data :','Masukkan Kode Status  : ','');

repeat
    i:='';
    if InputQuery('Edit Data', 'Silahkan masukkan kode status :', i) then
      begin
        try
          if (StrToInt(i) < 0) or (StrToInt(i) > 100) then
            showmessage('Silahkan masukkan angka untuk kode status');
            except
            showmessage('Kode harus berupa angka');
            i:='-1';
        end;
      end
    else
      break;
        until (StrToInt(i) >= 0) and ((StrToInt(i) <= 100));
        data1:=i;
          if ADOTable1.Locate('kode_status',data1,[]) then
            begin
              data2:=InputBox('Edit Data :','Masukkan Status Pegawai yang Baru :','');
              ADOTable1.Edit;
               ADOTable1.FieldByName('Keterangan_Status').AsString:=data2;
               ADOTable1.Post;
               ADOTable1.Active:=false;
               IsiStatusKePegawai;
              IsiStatusKeLihat;
              IsiLihatPasien;
               MessageDlg('Data Edit Berhasil tersimpan',mtInformation,[mbOK],1);

        ADOQuery1.Active:=false;
        ADOQuery1.Active:=true;
        ADOTable1.Active:=false;


    end
  else
    begin
      ShowMessage('Data Tidak Ditemukan');
      ADOTable1.Active:=false;
    end;


      end;




procedure Tformmasterstatus.btncarinomorindukClick(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Status WHERE Kode_Status =:kode ORDER BY Kode_Status ASC');
ADOQuery1.Parameters.ParamByName('kode').Value:=txtno.Text;
ADOQuery1.Open;

end;

procedure Tformmasterstatus.Image2Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Status WHERE Keterangan_Status =:ket ORDER BY Kode_Status ASC');
ADOQuery1.Parameters.ParamByName('ket').Value:=txtstatus.Text;
ADOQuery1.Open;
end;

procedure Tformmasterstatus.RefreshData;
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Status ');
ADOQuery1.Open;
edstatus.Clear;
txtno.Clear;
txtstatus.Clear;
end;
procedure Tformmasterstatus.RefreshData1Click(Sender: TObject);
begin
RefreshData;
end;

procedure Tformmasterstatus.KembaliKeTransaksiPegawai2Click(
  Sender: TObject);
begin
ftransaksipegawai.Show;
formmasterstatus.Hide;
end;

procedure Tformmasterstatus.KeluarAplikasi2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformmasterstatus.txtnoKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  btncarinomorindukClick(Sender);
end;

procedure Tformmasterstatus.txtstatusKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
Image2Click(Sender);
end;

procedure Tformmasterstatus.Image6Click(Sender: TObject);
begin
TutupKoneksi;
ftransaksipegawai.Show;
formmasterstatus.Hide;
end;

procedure Tformmasterstatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
RefreshData;
TutupKoneksi;
ftransaksipegawai.Show;
formmasterstatus.Hide;

end;

procedure Tformmasterstatus.IsiStatusKePegawai;
begin
ftransaksipegawai.qkstatus.Active:=true;
ftransaksipegawai.qkstatus.Close;
ftransaksipegawai.qkstatus.SQL.Clear;
ftransaksipegawai.qkstatus.SQL.Add('SELECT * FROM Master_Status');
ftransaksipegawai.qkstatus.ExecSQL;
ftransaksipegawai.qkstatus.Open;
ftransaksipegawai.cbkodestp.Clear;
ftransaksipegawai.qkstatus.First;
While not ftransaksipegawai.qkstatus.Eof do
  begin
  ftransaksipegawai.cbkodestp.Items.Add(ftransaksipegawai.qkstatus['Keterangan_Status']);
  ftransaksipegawai.qkstatus.Next;
end;



//
end;

procedure Tformmasterstatus.IsiStatusKeLihat;
begin
formlihattranspeg.ADOQuery2.Active:=true;
formlihattranspeg.ADOQuery2.Close;
formlihattranspeg.ADOQuery2.SQL.Clear;
formlihattranspeg.ADOQuery2.SQL.Add('SELECT * FROM Master_Status');
formlihattranspeg.ADOQuery2.ExecSQL;
formlihattranspeg.ADOQuery2.Open;
While not formlihattranspeg.ADOQuery2.Eof do
  begin
  formlihattranspeg.cbkspeg.Items.Add(formlihattranspeg.ADOQuery2['Keterangan_status']);
  formlihattranspeg.ADOQuery2.Next;
end;
formlihattranspeg.cbkspeg.Enabled:=true;
formlihattranspeg.cbkspeg.Clear;




end;

procedure Tformmasterstatus.IsiLihatPasien;
begin
//formlihatpasien.RefreshDatagrid1Click(Sender);



end;

procedure Tformmasterstatus.TutupKoneksi;
begin
ADOConnection1.Connected:=false;
ADOTable1.Active:=false;
ADOQuery1.Active:=false;
edstatus.Clear;
txtno.Clear;
txtstatus.Clear;
end;
procedure Tformmasterstatus.FormActivate(Sender: TObject);
begin
ADOQuery1.Active:=True;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * from Master_Status');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
ADOTable1.Active:=True;
end;

procedure Tformmasterstatus.Image7Click(Sender: TObject);
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
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text :='insert into Master_Status (Keterangan_Status)'+
                            'values (:ketstat)';
        ADOQuery1.Parameters.ParamByName('ketstat').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
        ADOQuery1.ExecSQL;
        inc(i);
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
        IsiStatusKePegawai;
        IsiStatusKeLihat;
        IsiLihatPasien;
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


  ADOQuery1.Close;
  ADOQuery1.SQL.Text:='select * from Master_Status';
  ADOQuery1.Open;

  dataSource1.DataSet:=ADOQuery1;
  Dbgrid1.DataSource:=DataSource1;
end;

procedure Tformmasterstatus.txtnoChange(Sender: TObject);
begin
if txtno.Text='' then
  begin
    ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Status');
ADOQuery1.Open;
end
else
  begin
    ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Status WHERE Kode_Status Like'+QuotedStr(txtno.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
  end;
end;

procedure Tformmasterstatus.txtstatusChange(Sender: TObject);
begin
if txtstatus.Text='' then
  begin
    ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Status');
ADOQuery1.Open;
end
else
  begin
    ADOQuery1.Active:=true;
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Master_Status WHERE Keterangan_Status Like'+QuotedStr('%'+txtstatus.Text+'%'));
    ADOQuery1.ExecSQL;
    ADOQuery1.Open;
  end;
end;

end.

