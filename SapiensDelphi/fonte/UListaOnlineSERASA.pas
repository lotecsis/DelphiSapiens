unit UListaOnlineSERASA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons,DBClient, ExtCtrls;

type
  TFListaOnlineSERASA = class(TForm)
    dbg1: TDBGrid;
    dsClientConsUSU_TE085SERA: TDataSource;
    btnImportar: TBitBtn;
    dlgOpen: TOpenDialog;
    edtArquivo: TEdit;
    Label1: TLabel;
    btnBuscarArq: TBitBtn;
    pnl1: TPanel;
    Label2: TLabel;
    btnFiltrar: TBitBtn;
    Label3: TLabel;
    edtCidade: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnBuscarArqClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure dbg1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure edtCidadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListaOnlineSERASA: TFListaOnlineSERASA;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFListaOnlineSERASA.btnBuscarArqClick(Sender: TObject);
begin
if dlgOpen.Execute then
   begin
     edtArquivo.Text := dlgOpen.FileName;
     ActiveControl := nil;
   end;
end;

procedure TFListaOnlineSERASA.btnFiltrarClick(Sender: TObject);
var vaFiltro : string;
begin

       DmOra.ClientConsUSU_TE085SERA.Filtered := false;
       DmOra.ClientConsUSU_TE085SERA.Filter := '';
       vaFiltro := '';

       if Trim(edtCidade.Text) <> '' then
          begin
            vaFiltro := 'USU_CIDCLI LIKE '+QuotedStr('%'+edtCidade.Text+'%');
          end
       else
          begin
            vaFiltro := '';
          end;

       DmOra.ClientConsUSU_TE085SERA.Filter := vaFiltro;
       DmOra.ClientConsUSU_TE085SERA.Filtered := True;

end;

procedure TFListaOnlineSERASA.btnImportarClick(Sender: TObject);
var
  Arq: TextFile;
  Texto: string;
  Txt: TStringList;
begin
  if Trim(edtArquivo.Text) = '' then
     begin
       Application.MessageBox('Informe o arquivo para importação','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtArquivo;
       Abort;
     end;

  if not FileExists(edtArquivo.Text) then
     begin
       Application.MessageBox('Arquivo de importação não encontrado','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtArquivo;
       Abort;
     end;

  Txt := TStringList.Create; // cria a stringlist
  Txt.StrictDelimiter := True; // indica que o delimitador é somente aquele definido abaixo
  Txt.Delimiter := ';'; // caractere delimitador de campos

  try
    Screen.Cursor := crHourGlass;
    AssignFile(Arq,edtArquivo.Text);
    Reset(Arq);
    if not EOF(Arq) then
      repeat
        ReadLn(Arq, Texto);
        Txt.DelimitedText := Texto; // desmembra o texto

        if Txt[0] <> 'Número do CNPJ' then
           begin

              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('SELECT USU_TE085SERA.* FROM USU_TE085SERA WHERE USU_TE085SERA.USU_CGCCPF = :CGCCPF');
              DmOra.ConsSql.Parameters.ParamByName('CGCCPF').Value := Txt[0];
              DmOra.ConsSql.Open;
              if DmOra.ConsSql.IsEmpty then
                 begin
                   DmOra.CadUSU_TE085SERA.Open;
                   DmOra.CadUSU_TE085SERA.Insert;
                   DmOra.CadUSU_TE085SERAUSU_NOMCLI.Value := Txt[1];
                   DmOra.CadUSU_TE085SERAUSU_ENDCLI.Value := Txt[11];
                   DmOra.CadUSU_TE085SERAUSU_CEPCLI.Value := StrToInt(Txt[10]);
                   DmOra.CadUSU_TE085SERAUSU_BAICLI.Value := Txt[7];
                   DmOra.CadUSU_TE085SERAUSU_CIDCLI.Value := Txt[8];
                   DmOra.CadUSU_TE085SERAUSU_SIGUFS.Value := Txt[9];
                   DmOra.CadUSU_TE085SERAUSU_FONCLI.Value := '('+Txt[12]+')'+' '+Txt[13];
                   DmOra.CadUSU_TE085SERAUSU_FONCL2.Value := '('+Txt[14]+')'+' '+Txt[15];
                   DmOra.CadUSU_TE085SERAUSU_FONCL3.Value := '('+Txt[16]+')'+' '+Txt[17];
                   DmOra.CadUSU_TE085SERAUSU_DATIMP.Value := date;
                   DmOra.CadUSU_TE085SERAUSU_CGCCPF.Value := StrToFloat(Txt[0]);
                   DmOra.CadUSU_TE085SERAUSU_EMANFE.Value := '';
                   DmOra.CadUSU_TE085SERAUSU_CNAI.Value := Txt[18];

                    DmOra.ConsSql.Close;
                    DmOra.ConsSql.SQL.Clear;
                    DmOra.ConsSql.SQL.Add('SELECT MAX(USU_TE085SERA.USU_IDCLI) AS ULTIMO FROM USU_TE085SERA');
                    DmOra.ConsSql.Open;
                    if not DmOra.ConsSql.IsEmpty then
                       DmOra.CadUSU_TE085SERAUSU_IDCLI.Value := DmOra.ConsSql.FieldByName('ULTIMO').AsInteger + 1
                    else
                       DmOra.CadUSU_TE085SERAUSU_IDCLI.Value := 1;


                    DmOra.ConsSql.Close;
                    DmOra.ConsSql.SQL.Clear;
                    DmOra.ConsSql.SQL.Add('SELECT E085CLI.CODCLI,E085CLI.NOMCLI,E085CLI.DATCAD');
                    DmOra.ConsSql.SQL.Add('  FROM E085CLI');
                    DmOra.ConsSql.SQL.Add('   WHERE E085CLI.CGCCPF = :CGCCPF');
                    DmOra.ConsSql.Parameters.ParamByName('CGCCPF').Value := DmOra.CadUSU_TE085SERAUSU_CGCCPF.Value;
                    DmOra.ConsSql.Open;
                    if DmOra.ConsSql.IsEmpty then
                       begin
                         DmOra.CadUSU_TE085SERAUSU_CODCLI.Value := 0;
                         DmOra.CadUSU_TE085SERAUSU_DATCAD.Value := 0;
                       end
                    else
                      begin
                        DmOra.CadUSU_TE085SERAUSU_CODCLI.Value := DmOra.ConsSql.FieldByName('CODCLI').Value;
                        DmOra.CadUSU_TE085SERAUSU_DATCAD.Value := DmOra.ConsSql.FieldByName('DATCAD').Value;
                      end;

                   DmOra.CadUSU_TE085SERA.Post;
                 end;
           end;

      until EOF(Arq);
  finally
    Closefile(Arq); //fecha arquivo CSV
    Screen.Cursor := crDefault;
  end;
  FreeAndNil(Txt);

  DmOra.ClientConsUSU_TE085SERA.Close;
  DmOra.ConsUSU_TE085SERA.Close;
  DmOra.ConsUSU_TE085SERA.Open;
  DmOra.ClientConsUSU_TE085SERA.Open;
end;

procedure TFListaOnlineSERASA.dbg1TitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  clientdataset_idx: TClientDataSet;
begin
   clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

  if clientdataset_idx.IndexFieldNames = Column.FieldName then
  begin
    indice := AnsiUpperCase(Column.FieldName);

    try
      clientdataset_idx.IndexDefs.Find(indice);
      existe := true;
    except
      existe := false;
    end;

    if not existe then
      with clientdataset_idx.IndexDefs.AddIndexDef do begin
        Name := indice;
        Fields := Column.FieldName;
        Options := [ixDescending];
      end;
    clientdataset_idx.IndexName := indice;
    clientdataset_idx.First;
  end
  else
     begin
       clientdataset_idx.IndexFieldNames := Column.FieldName;
       clientdataset_idx.First;
     end;

end;

procedure TFListaOnlineSERASA.edtCidadeChange(Sender: TObject);
begin
btnFiltrarClick(Sender);
end;

procedure TFListaOnlineSERASA.FormShow(Sender: TObject);
begin
  DmOra.ClientConsUSU_TE085SERA.Close;
  DmOra.ConsUSU_TE085SERA.Close;
  DmOra.ConsUSU_TE085SERA.Open;
  DmOra.ClientConsUSU_TE085SERA.Open;
end;

end.
