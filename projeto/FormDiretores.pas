unit FormDiretores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SQLQueryDiretores: TSQLQuery;
    DataSetProviderDiretores: TDataSetProvider;
    ClientDataSetDiretores: TClientDataSet;
    DataSourceDiretores: TDataSource;
    SQLQueryFilmes: TSQLQuery;
    DataSetProviderFilmes: TDataSetProvider;
    ClientDataSetFilmes: TClientDataSet;
    DataSourceFilmes: TDataSource;
    SQLConnection1: TSQLConnection;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

  SQLConnection1.Open;

  SQLQueryDiretores.SQL.Text := 'SELECT * FROM diretor';
  SQLQueryDiretores.Open;

  ClientDataSetDiretores.ProviderName := 'DataSetProviderDiretores';
  ClientDataSetDiretores.Open;

  SQLQueryFilmes.SQL.Text := 'SELECT Id, Nome FROM cartaz';
  SQLQueryFilmes.Open;

  ClientDataSetFilmes.ProviderName := 'DataSetProviderFilmes';

  ClientDataSetFilmes.Open;

  DBLookupComboBox1.DataSource := DataSourceFilmes;
  DBLookupComboBox1.ListField := 'Nome';
  DBLookupComboBox1.KeyField := 'Id';

  DBGrid1.DataSource := DataSourceDiretores;
end;

end.
