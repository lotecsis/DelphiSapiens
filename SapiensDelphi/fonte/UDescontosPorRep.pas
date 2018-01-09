unit UDescontosPorRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, Mask, DateUtils;

type
  TFDescontosPorRep = class(TForm)
    Label1: TLabel;
    edtCodRep: TEdit;
    btnConsRep: TBitBtn;
    edtNomRep: TEdit;
    edtApeRep: TEdit;
    dbg1: TDBGrid;
    dsConsUSU_DescRep: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtDescEstof: TMaskEdit;
    edtDescColch: TEdit;
    edtCodCli: TEdit;
    edtCodPro: TEdit;
    edtDatVal: TMaskEdit;
    btnConfirmar: TBitBtn;
    edtNomCli: TEdit;
    edtDesPro: TEdit;
    btnConsCli: TBitBtn;
    btnConsProd: TBitBtn;
    btnExcluir: TBitBtn;
    Label7: TLabel;
    edtCodCpg: TEdit;
    edtDesCpg: TEdit;
    btnConsCodCpg: TBitBtn;
    lblAjuda: TLabel;
    procedure btnConsRepClick(Sender: TObject);
    procedure edtCodRepExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescEstofExit(Sender: TObject);
    procedure edtDescEstofKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescColchExit(Sender: TObject);
    procedure edtDescColchKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtDatValExit(Sender: TObject);
    procedure btnConsCliClick(Sender: TObject);
    procedure edtCodCliExit(Sender: TObject);
    procedure btnConsProdClick(Sender: TObject);
    procedure edtCodProExit(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsCodCpgClick(Sender: TObject);
    procedure edtCodCpgExit(Sender: TObject);
    procedure lblAjudaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDescontosPorRep: TFDescontosPorRep;

implementation

uses UDm, UConsGeralNfEnt, UPrincipal, UInfoDescontosPorRep;

{$R *.dfm}

procedure TFDescontosPorRep.btnConfirmarClick(Sender: TObject);
begin
  if Trim(edtCodRep.Text) = ''  then
     begin
       Application.MessageBox('Informe o representante','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtCodRep;
       Abort;
     end;

  if Trim(edtDescEstof.Text) = ''  then
     begin
       Application.MessageBox('Informe o desconto para estofados','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDescEstof;
       Abort;
     end;

  if Trim(edtDescColch.Text) = ''  then
     begin
       Application.MessageBox('Informe o desconto para colchões','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDescColch;
       Abort;
     end;

  if edtDatVal.Text = '  /  /    '  then
     begin
       Application.MessageBox('Informe a data de validade do desconto','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatVal;
       Abort;
     end;

  Dm.CadUSU_TDescRep.Open;
  Dm.CadUSU_TDescRep.Insert;
  Dm.CadUSU_TDescRepUSU_ESTOF.Value := StrToFloat(edtDescEstof.Text);
  Dm.CadUSU_TDescRepUSU_COLCH.Value := StrToFloat(edtDescColch.Text);
  Dm.CadUSU_TDescRepUSU_CODREP.Value := StrToInt(edtCodRep.Text);

  if Trim(edtCodCli.Text) = '' then
     Dm.CadUSU_TDescRepUSU_CODCLI.Value := 0
  else
     Dm.CadUSU_TDescRepUSU_CODCLI.Value := StrToInt(edtCodCli.Text);

  if Trim(edtCodPro.Text) = '' then
     Dm.CadUSU_TDescRepUSU_CODPRO.Value := ' '
  else
     Dm.CadUSU_TDescRepUSU_CODPRO.Value := edtCodPro.Text;

  if Trim(edtCodCpg.Text) = '' then
     Dm.CadUSU_TDescRepUSU_CODCPG.Value := ' '
  else
     Dm.CadUSU_TDescRepUSU_CODCPG.Value := edtCodCpg.Text;

  Dm.CadUSU_TDescRepUSU_DATVAL.Value := StrToDate(edtDatVal.Text);
  Dm.CadUSU_TDescRepUSU_DATCAD.Value := date;

  Dm.ConsSql.Close;
  Dm.ConsSql.SQL.Clear;
  Dm.ConsSql.SQL.Add('SELECT MAX(USU_SEQDES) AS SEQDES FROM USU_TDESCREP');
  Dm.ConsSql.Open;
  if not Dm.ConsSql.IsEmpty then
     Dm.CadUSU_TDescRepUSU_SEQDES.AsInteger := Dm.ConsSql.FieldByName('SEQDES').AsInteger + 1
  else
     Dm.CadUSU_TDescRepUSU_SEQDES.AsInteger := 1;

  Dm.CadUSU_TDescRepUSU_CODEMP.AsInteger := 1;
  Dm.CadUSU_TDescRepUSU_CODUSU.Value := FPrincipal.cd_usuario;

  Dm.CadUSU_TDescRep.Post;

  edtDescEstof.Clear;
  edtDescColch.Clear;
  edtCodCli.Clear;
  edtCodPro.Clear;
  edtDatVal.Clear;
  edtCodCpg.Clear;


  edtCodRepExit(Sender);

end;

procedure TFDescontosPorRep.btnConsCliClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,e085cli.insest,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,e085cli.endcli,e085cli.baicli,e085cli.sitcli,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085hcl.codrep,e090rep.nomrep,e090rep.aperep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e085cli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085hcl on e085hcl.codcli = e085cli.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e085hcl.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085hcl.codfil = 1';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' AND e085cli.sitcli = ''A''';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FDescontosPorRep';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodCli;
end;

procedure TFDescontosPorRep.btnConsCodCpgClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'SELECT E028CPG.CODCPG,E028CPG.DESCPG';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' FROM E028CPG';


    FConsGeralNfEnt.vbWhere := False;
    FConsGeralNfEnt.vaCampo := 'CodCpg';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FDescontosPorRep';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodCpg;
end;

procedure TFDescontosPorRep.btnConsProdClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FDescontosPorRep';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := edtCodPro;
end;

procedure TFDescontosPorRep.btnConsRepClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e090rep.codrep,e090rep.nomrep,e090rep.aperep,e090rep.cgccpf,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e090rep.cidrep,e090rep.sigufs,e090rep.endrep,e090rep.bairep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e090rep';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FDescontosPorRep';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodRep;
end;

procedure TFDescontosPorRep.btnExcluirClick(Sender: TObject);
begin
  if not Dm.ConsUSU_TDescRep.IsEmpty then
     begin
       if Application.MessageBox('Deseja realmente excluir o registro?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then
          begin
             Dm.CadUSU_TDescRep.Close;
             Dm.CadUSU_TDescRep.Parameters.ParamByName('SEQDES').Value := Dm.ConsUSU_TDescRepUSU_SEQDES.AsInteger;
             Dm.CadUSU_TDescRep.Open;
             if not Dm.CadUSU_TDescRep.IsEmpty then
                begin
                  Dm.CadUSU_TDescRep.Delete;
                  edtCodRepExit(Sender);
                end;
          end;
     end;
end;

procedure TFDescontosPorRep.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    //GRID ZEBRADA
    if odd(Dm.ConsUSU_TDescRep.RecNo) then
    dbg1.Canvas.Brush.Color:= clmenubar
    else
    dbg1.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFDescontosPorRep.edtCodCliExit(Sender: TObject);
begin
   if Trim(edtCodCli.Text) <> '' then
      begin
        Dm.ConsSql.Close;
        Dm.ConsSql.SQL.Clear;
        Dm.ConsSql.SQL.Add(' SELECT CODCLI,NOMCLI,APECLI');
        Dm.ConsSql.SQL.Add('  FROM E085CLI');
        Dm.ConsSql.SQL.Add('  WHERE');
        Dm.ConsSql.SQL.Add('    CODCLI = :CODCLI');
        Dm.ConsSql.Parameters.ParamByName('CODCLI').Value := StrToInt(edtCodCli.Text);
        Dm.ConsSql.Open;
        if Dm.ConsSql.IsEmpty then
           begin
             Application.MessageBox('Cliente não encontrado','Aviso',MB_ICONWARNING+MB_OK);
             ActiveControl := edtCodCli;
             edtNomCli.Clear;
             Abort;
           end
        else
           begin
             edtNomCli.Text := Dm.ConsSql.FieldByName('NOMCLI').AsString;
           end;
      end
   else
      begin
        edtNomCli.Clear;
      end;
end;

procedure TFDescontosPorRep.edtCodCliKeyPress(Sender: TObject; var Key: Char);
begin
IF not (Key in ['0'..'9',#8,',']) THEN
     begin
       Key := #0;
     end;
end;

procedure TFDescontosPorRep.edtCodCpgExit(Sender: TObject);
begin
if Trim(edtCodCpg.Text) <> '' then
      begin
        Dm.ConsSql.Close;
        Dm.ConsSql.SQL.Clear;
        Dm.ConsSql.SQL.Add(' SELECT E028CPG.CODCPG,E028CPG.DESCPG');
        Dm.ConsSql.SQL.Add('  FROM E028CPG');
        Dm.ConsSql.SQL.Add('  WHERE');
        Dm.ConsSql.SQL.Add('    CODCPG = :CODCPG');
        Dm.ConsSql.Parameters.ParamByName('CODCPG').Value := edtCodCpg.Text;
        Dm.ConsSql.Open;
        if Dm.ConsSql.IsEmpty then
           begin
             Application.MessageBox('Condição de Pagamento não encontrada','Aviso',MB_ICONWARNING+MB_OK);
             ActiveControl := edtCodCpg;
             edtDesCpg.Clear;
             Abort;
           end
        else
           begin
             edtDesCpg.Text := Dm.ConsSql.FieldByName('DESCPG').AsString;
           end;
      end
   else
      begin
        edtDesCpg.Clear;
      end;
end;

procedure TFDescontosPorRep.edtCodProExit(Sender: TObject);
begin
if Trim(edtCodPro.Text) <> '' then
      begin
        Dm.ConsSql.Close;
        Dm.ConsSql.SQL.Clear;
        Dm.ConsSql.SQL.Add(' SELECT CODPRO,DESPRO');
        Dm.ConsSql.SQL.Add('  FROM E075PRO');
        Dm.ConsSql.SQL.Add('  WHERE');
        Dm.ConsSql.SQL.Add('    CODPRO = :CODPRO');
        Dm.ConsSql.Parameters.ParamByName('CODPRO').Value := StrToInt(edtCodPro.Text);
        Dm.ConsSql.Open;
        if Dm.ConsSql.IsEmpty then
           begin
             Application.MessageBox('Produto não encontrado','Aviso',MB_ICONWARNING+MB_OK);
             ActiveControl := edtCodPro;
             edtDesPro.Clear;
             Abort;
           end
        else
           begin
             edtDesPro.Text := Dm.ConsSql.FieldByName('DESPRO').AsString;
           end;
      end
   else
      begin
        edtDesPro.Clear;
      end;
end;

procedure TFDescontosPorRep.edtCodProKeyPress(Sender: TObject; var Key: Char);
begin
IF not (Key in ['0'..'9',#8,',']) THEN
     begin
       Key := #0;
     end;
end;

procedure TFDescontosPorRep.edtCodRepExit(Sender: TObject);
begin

  if Trim(edtCodRep.Text) <> '' then
     begin
        Dm.ConsSql.Close;
        Dm.ConsSql.SQL.Clear;
        Dm.ConsSql.SQL.Add(' SELECT CODREP,NOMREP,APEREP');
        Dm.ConsSql.SQL.Add('  FROM E090REP');
        Dm.ConsSql.SQL.Add('  WHERE');
        Dm.ConsSql.SQL.Add('    CODREP = :CODREP');
        Dm.ConsSql.Parameters.ParamByName('CODREP').Value := StrToInt(edtCodRep.Text);
        Dm.ConsSql.Open;
        if Dm.ConsSql.IsEmpty then
           begin
             Application.MessageBox('Representante não encontrado','Aviso',MB_ICONWARNING+MB_OK);
             ActiveControl := edtCodRep;
             edtNomRep.Clear;
             edtApeRep.Clear;
             edtNomCli.Clear;
             edtDesPro.Clear;
             edtDesCpg.Clear;
             Dm.ConsUSU_TDescRep.Close;
           end
        else
           begin
             edtNomRep.Text := Dm.ConsSql.FieldByName('NOMREP').AsString;
             edtApeRep.Text := Dm.ConsSql.FieldByName('APEREP').AsString;

             Dm.ConsUSU_TDescRep.Close;
             Dm.ConsUSU_TDescRep.Parameters.ParamByName('CODREP').Value := StrToInt(edtCodRep.Text);
             Dm.ConsUSU_TDescRep.Open;

           end;

     end
  else
     begin
       edtNomRep.Clear;
       edtApeRep.Clear;
       edtNomCli.Clear;
       edtDesPro.Clear;
       edtDesCpg.Clear;
       Dm.ConsUSU_TDescRep.Close;
     end;

     edtDescEstof.Clear;
     edtDescColch.Clear;
     edtCodCli.Clear;
     edtNomCli.Clear;
     edtCodPro.Clear;
     edtDesPro.Clear;
     edtDesCpg.Clear;
     edtDatVal.Clear;
     edtDatVal.Text := DateToStr(EndOfTheYear(Date));

end;

procedure TFDescontosPorRep.edtDatValExit(Sender: TObject);
  var vdData : TDate;
begin
  if edtDatVal.Text <> '  /  /    ' then
     begin
       try
         vdData := StrToDate(edtDatVal.Text);
       except
         Application.MessageBox('Data inválida','Aviso',MB_ICONWARNING+MB_OK);
         ActiveControl := edtDatVal;
       end;

     end;
end;

procedure TFDescontosPorRep.edtDescColchExit(Sender: TObject);
begin
  if Trim(edtDescColch.Text) <> '' then
     begin
       edtDescColch.Text:= FormatFloat('#,,0.00', StrtoFloat(edtDescColch.Text));
     end;
end;

procedure TFDescontosPorRep.edtDescColchKeyPress(Sender: TObject;
  var Key: Char);
begin
IF not (Key in ['0'..'9',#8,',']) THEN
     begin
       Key := #0;
     end;
end;

procedure TFDescontosPorRep.edtDescEstofExit(Sender: TObject);
begin
  if Trim(edtDescEstof.Text) <> '' then
     begin
       edtDescEstof.Text:= FormatFloat('#,,0.00', StrtoFloat(edtDescEstof.Text));
     end;
end;

procedure TFDescontosPorRep.edtDescEstofKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF not (Key in ['0'..'9',#8,',']) THEN
     begin
       Key := #0;
     end;
end;

procedure TFDescontosPorRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFDescontosPorRep.FormShow(Sender: TObject);
begin
  edtDatVal.Text := DateToStr(EndOfTheYear(Date));
  Dm.ConsUSU_TDescRep.Close;
end;

procedure TFDescontosPorRep.lblAjudaClick(Sender: TObject);
begin
  FInfoDescontosPorRep := TFInfoDescontosPorRep.Create(Self);
  FInfoDescontosPorRep.ShowModal;
  FreeAndNil(FInfoDescontosPorRep);
end;

end.
