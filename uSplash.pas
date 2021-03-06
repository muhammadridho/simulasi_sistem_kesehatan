unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ADODB, DB, jpeg;

type
  TformNamaObat = class(TForm)
    txtnama: TEdit;
    Shape4: TShape;
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOSimpan: TADOTable;
    ADOQuery1: TADOQuery;
    btncek: TImage;
    DataSource1: TDataSource;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btncekClick(Sender: TObject);
    procedure txtnamaKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
//    procedure btncekClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formNamaObat: TformNamaObat;

implementation

{$R *.dfm}

procedure TformNamaObat.Button1Click(Sender: TObject);
begin
if (txtnama.Text<>'')then//Validasi Data Kosong
begin
  if ADOSimpan.Locate('Nama_Obat',txtnama.Text,[]) then
    begin
      ShowMessage('Data Sudah Ada');
    end
    else
      begin
      ShowMessage('Data Baru');
      ADOSimpan.Append;
      ADOSimpan.FieldByName('Nama_Obat').AsString:=txtnama.Text;
      ADOSimpan.Post;
    end;
end//
  else
    begin
    ShowMessage('Data Tidak Boleh Kosong');
end;
end;

procedure TformObformNamaObatkClick(Sender: TObject);
begin

end;

procedure TformNamaObat.btncekClick(Sender: TObject);
begin
if txtnama.Text<>'' then
begin
if ADOSimpan.Locate('Nama_Obat',txtnama.Text,[]) then
begin
    ShowMessage('Data Sudah Ada');
    txtnama.Clear;
    txtnama.SetFocus;
end
  else
    begin
    ShowMessage('Nama Obat Bisa DiPakai');
    end;
end
else
    begin
    ShowMessage('Periksa kembali nama obat anda');
end;
  end;
procedure TformNamaObat.txtnamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
btncekClick(Sender);
end;

procedure TformNamaObat.Button2Click(Sender: TObject);
var
    data:string;
begin
if txtnama.Text<>'' then
begin
if ADOSimpan.Locate('Nama_Obat',txtnama.Text,[]) then
begin
    ShowMessage('Data Obat DiDapatkan');
    txtnama.Text:=ADOSimpan.FieldByName('Nama_Obat').AsString;
    data:=InputBox('Edit Data','Masukkan Nama Baru :','');
    ADOSimpan.Edit;
    ADOSimpan.FieldByName('Nama_Obat').AsString:=data;
    ADOSimpan.Post;
end
  else
    begin
    ShowMessage('Nama Obat Bisa DiPakai');
    end;
end
else
    begin
    ShowMessage('Periksa kembali nama obat anda');
end;

end;

procedure TformNamaObat.Button3Click(Sender: TObject);
var
    data:string;
begin

end;

end.
