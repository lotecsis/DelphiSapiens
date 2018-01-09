unit UMoniCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, DBClient, Mask,
  rxToolEdit, rxCurrEdit, ADODB, DBCtrls;

type
  TFMoniCliente = class(TForm)
    PaginaControle: TPageControl;
    tsMonitoramento: TTabSheet;
    dbg1: TDBGrid;
    dsClientMoniCliente: TDataSource;
    btnMostrar: TBitBtn;
    lblCliente: TLabel;
    edtCodCli: TCurrencyEdit;
    btnConsCli: TBitBtn;
    edtNomCli: TEdit;
    lblCidade: TLabel;
    edtCodRaiz: TCurrencyEdit;
    btnConsCid: TBitBtn;
    edtNomCid: TEdit;
    ConsCli: TADOQuery;
    ConsCliCODCLI: TIntegerField;
    ConsCliNOMCLI: TStringField;
    ConsCliCODRAI: TIntegerField;
    ConsCliCODREP: TIntegerField;
    ConsCliSITCLI: TStringField;
    chkCliente: TCheckBox;
    chkCidade: TCheckBox;
    ConsCid: TADOQuery;
    ConsCidCODRAI: TIntegerField;
    ConsCidNOMCID: TStringField;
    ConsCidSIGUFS: TStringField;
    ConsCidUSU_CODREP: TIntegerField;
    btnFiltrar: TBitBtn;
    lblNomCid: TLabel;
    edtNomCid1: TEdit;
    chkNomCid: TCheckBox;
    lblUF: TLabel;
    chkUF: TCheckBox;
    edtUF: TEdit;
    lblInicio: TLabel;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label6: TLabel;
    chkInicio: TCheckBox;
    lblDiasMonitoramento: TLabel;
    chkDiasMonitoramento: TCheckBox;
    edtDiasMonitoramento: TCurrencyEdit;
    cbbDiasMonitoramento: TComboBox;
    lblComCompra: TLabel;
    chkComCompra: TCheckBox;
    cbbComCompra: TComboBox;
    lblDiasSerasa: TLabel;
    chkDiasSerasa: TCheckBox;
    edtDiasSerasa: TCurrencyEdit;
    cbbDiasSerasa: TComboBox;
    lblSitSerasa: TLabel;
    chkSitSerasa: TCheckBox;
    cbbSitSerasa: TComboBox;
    lblSitMon: TLabel;
    chkSitMon: TCheckBox;
    cbbSitMon: TComboBox;
    edtNomRep: TEdit;
    lblRepresentante: TLabel;
    chkRepresentante: TCheckBox;
    ConsRep: TADOQuery;
    ConsRepNOMREP: TStringField;
    ConsRepAPEREP: TStringField;
    ConsRepCIDREP: TStringField;
    edtCodRep: TCurrencyEdit;
    btnConsRep: TBitBtn;
    dbedtvnQtdCli: TDBEdit;
    dbedtvnVlrPedAbe: TDBEdit;
    dbedtvnVlrPedFat: TDBEdit;
    dbedtvnVlrPedTot: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnAddCliente: TBitBtn;
    lblOriSerasa: TLabel;
    chkOriSerasa: TCheckBox;
    cbbOriSerasa: TComboBox;
    btnFinalizarMon: TBitBtn;
    ConsCliListaOn: TADOQuery;
    ConsCliListaOnCODCLI: TIntegerField;
    ConsCliListaOnNOMCLI: TStringField;
    ConsCliListaOnSITCLI: TStringField;
    ConsCliListaOnCODRAI: TIntegerField;
    ConsCliListaOnCODREP: TIntegerField;
    procedure btnMostrarClick(Sender: TObject);
    procedure btnConsCliClick(Sender: TObject);
    procedure edtCodCliExit(Sender: TObject);
    procedure btnConsCidClick(Sender: TObject);
    procedure edtCodRaizExit(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure btnConsRepClick(Sender: TObject);
    procedure edtCodRepExit(Sender: TObject);
    procedure chkCidadeClick(Sender: TObject);
    procedure chkNomCidClick(Sender: TObject);
    procedure chkUFClick(Sender: TObject);
    procedure chkInicioClick(Sender: TObject);
    procedure chkDiasMonitoramentoClick(Sender: TObject);
    procedure chkComCompraClick(Sender: TObject);
    procedure chkDiasSerasaClick(Sender: TObject);
    procedure chkSitSerasaClick(Sender: TObject);
    procedure chkSitMonClick(Sender: TObject);
    procedure chkRepresentanteClick(Sender: TObject);
    procedure btnAddClienteClick(Sender: TObject);
    procedure chkOriSerasaClick(Sender: TObject);
    procedure btnFinalizarMonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMoniCliente: TFMoniCliente;

implementation

uses UDmOra, UConsGeralNfEnt, UAddCliMonitoramento, UMotivoFimMon;

{$R *.dfm}

procedure TFMoniCliente.btnAddClienteClick(Sender: TObject);
begin
  FAddCliMonitoramento := TFAddCliMonitoramento.Create(Self);
  FAddCliMonitoramento.ShowModal;
  FreeAndNil(FAddCliMonitoramento);
  btnMostrar.Click;
  btnFiltrar.Click;
end;

procedure TFMoniCliente.btnConsCidClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'SELECT E008RAI.CODRAI,E008RAI.NOMCID,E008RAI.SIGUFS,E008RAI.USU_CODREP';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'  FROM E008RAI';


    FConsGeralNfEnt.vbWhere := False;
    FConsGeralNfEnt.vaCampo := 'CodRai';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FMoniCliente';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodCli;
end;

procedure TFMoniCliente.btnConsCliClick(Sender: TObject);
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

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FMoniCliente';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodCli;
end;

procedure TFMoniCliente.btnConsRepClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'SELECT CODREP,NOMREP,APEREP,CIDREP FROM E090REP';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' WHERE SITREP = ''A''';


    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FMoniCliente';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodRep;
end;

procedure TFMoniCliente.btnFiltrarClick(Sender: TObject);
var vaFiltro : string;
begin
 if not DmOra.ClientMoniCliente.IsEmpty then
    begin
      DmOra.ClientMoniCliente.Filtered := False;
      DmOra.ClientMoniCliente.Filter := '';
      vaFiltro := '';

      if chkCliente.Checked then
         begin
           if edtCodCli.Value = 0 then
              begin
                Application.MessageBox('Informe o Cliente','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtCodCli;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'USU_CODCLI = '+IntToStr(edtCodCli.AsInteger);
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND USU_CODCLI = '+IntToStr(edtCodCli.AsInteger);
              end;
         end;

      if chkCidade.Checked then
         begin
           if edtCodRaiz.Value = 0 then
              begin
                Application.MessageBox('Informe a Cidade','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtCodRaiz;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'USU_CODRAI = '+IntToStr(edtCodRaiz.AsInteger);
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND USU_CODRAI = '+IntToStr(edtCodRaiz.AsInteger);
              end;
         end;

      if chkNomCid.Checked then
         begin
           if Trim(edtNomCid1.Text) = '' then
              begin
                Application.MessageBox('Informe o nome da Cidade','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtNomCid1;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'NOMCID LIKE '+QuotedStr('%'+edtNomCid1.Text+'%');
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND NOMCID LIKE '+QuotedStr('%'+edtNomCid1.Text+'%');
              end;
         end;

         if chkUF.Checked then
         begin
           if Trim(edtUF.Text) = '' then
              begin
                Application.MessageBox('Informe a UF','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtUF;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'SIGUFS = '+QuotedStr(edtUF.Text);
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND SIGUFS = '+QuotedStr(edtUF.Text);
              end;
         end;

         if chkInicio.Checked then
         begin
           if edtDatIni.Date = 0 then
              begin
                Application.MessageBox('Informe a Data Inicial','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtDatIni;
                Abort;
              end;
           if edtDatFim.Date = 0 then
              begin
                Application.MessageBox('Informe a Data Final','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtDatFim;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := '((USU_DATINI >= '+QuotedStr(edtDatIni.Text)+') AND (USU_DATINI <= '+QuotedStr(edtDatFim.Text)+'))';
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND ((USU_DATINI >= '+QuotedStr(edtDatIni.Text)+') AND (USU_DATINI <= '+QuotedStr(edtDatFim.Text)+'))';
              end;
         end;

         if chkDiasMonitoramento.Checked then
         begin
           if Trim(cbbDiasMonitoramento.Text) = '' then
              begin
                Application.MessageBox('Informe a condição','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := cbbDiasMonitoramento;
                Abort;
              end;

           if edtDiasMonitoramento.AsInteger = 0 then
              begin
                Application.MessageBox('Informe a quantidade de dias','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtDiasMonitoramento;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'vnQtdDiasMon '+cbbDiasMonitoramento.Text+' '+IntToStr(edtDiasMonitoramento.AsInteger);
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND vnQtdDiasMon '+cbbDiasMonitoramento.Text+' '+IntToStr(edtDiasMonitoramento.AsInteger);
              end;
         end;

         if chkComCompra.Checked then
         begin
           if Trim(cbbComCompra.Text) = '' then
              begin
                Application.MessageBox('Informe a opção de Compra','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := cbbComCompra;
                Abort;
              end;

           if cbbComCompra.Text = 'SIM' then
              begin
                 if Trim(vaFiltro) = '' then
                    begin
                      vaFiltro := 'vnTotalCompra > 0';
                    end
                 else
                    begin
                      vaFiltro := vaFiltro + ' AND vnTotalCompra > 0';
                    end;
              end
           else
              begin
                 if Trim(vaFiltro) = '' then
                    begin
                      vaFiltro := 'vnTotalCompra <= 0';
                    end
                 else
                    begin
                      vaFiltro := vaFiltro + ' AND vnTotalCompra <= 0';
                    end;
              end;
         end;


         if chkDiasSerasa.Checked then
         begin
            if Trim(cbbDiasSerasa.Text) = '' then
              begin
                Application.MessageBox('Informe a condição','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := cbbDiasSerasa;
                Abort;
              end;

           if edtDiasSerasa.AsInteger = 0 then
              begin
                Application.MessageBox('Informe a quantidade de dias do SERASA','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtDiasSerasa;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'vnQtdDiasSerasa '+cbbDiasSerasa.Text+' '+IntToStr(edtDiasSerasa.AsInteger);
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND vnQtdDiasSerasa '+cbbDiasSerasa.Text+' '+IntToStr(edtDiasSerasa.AsInteger);
              end;
         end;


         if chkSitSerasa.Checked then
         begin
           if Trim(cbbSitSerasa.Text) = '' then
              begin
                Application.MessageBox('Informe a situação do SERASA','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := cbbSitSerasa;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'USU_SITSER = '+QuotedStr(cbbSitSerasa.Text);
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND USU_SITSER = '+QuotedStr(cbbSitSerasa.Text);
              end;
         end;

         if chkSitMon.Checked then
         begin
           if Trim(cbbSitMon.Text) = '' then
              begin
                Application.MessageBox('Informe a situação do Monitoramento','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := cbbSitMon;
                Abort;
              end;

           if cbbSitMon.Text = 'ATIVO' then
              begin
                if Trim(vaFiltro) = '' then
                    begin
                      vaFiltro := 'USU_MOTFIM = '' ''';
                    end
                else
                    begin
                      vaFiltro := vaFiltro + ' AND USU_MOTFIM = '' ''';
                    end;
              end
           else
           if cbbSitMon.Text = 'FINALIZADO' then
              begin
                if Trim(vaFiltro) = '' then
                    begin
                      vaFiltro := 'USU_MOTFIM <> '' ''';
                    end
                else
                    begin
                      vaFiltro := vaFiltro + ' AND USU_MOTFIM <> '' ''';
                    end;
              end;
         end;

         if chkRepresentante.Checked then
         begin
           if edtCodRep.AsInteger = 0 then
              begin
                Application.MessageBox('Informe o Representante','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := edtCodRep;
                Abort;
              end;

           if Trim(vaFiltro) = '' then
              begin
                vaFiltro := 'USU_CODREP = '+IntToStr(edtCodRep.AsInteger);
              end
           else
              begin
                vaFiltro := vaFiltro + ' AND USU_CODREP = '+IntToStr(edtCodRep.AsInteger);
              end;
         end;

         if chkOriSerasa.Checked then
         begin
           if Trim(cbbOriSerasa.Text) = '' then
              begin
                Application.MessageBox('Informe a opção de origem','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := cbbOriSerasa;
                Abort;
              end;

           if cbbOriSerasa.Text = 'SIM' then
              begin
                 if Trim(vaFiltro) = '' then
                    begin
                      vaFiltro := 'USU_CLISERA = ''SIM''';
                    end
                 else
                    begin
                      vaFiltro := vaFiltro + ' AND USU_CLISERA = ''SIM''';
                    end;
              end
           else
              begin
                 if Trim(vaFiltro) = '' then
                    begin
                      vaFiltro := 'USU_CLISERA = ''NAO''';
                    end
                 else
                    begin
                      vaFiltro := vaFiltro + ' AND USU_CLISERA = ''NAO''';
                    end;
              end;
         end;


         if Trim(vaFiltro) <> '' then
            begin
              DmOra.ClientMoniCliente.Filter := vaFiltro;
              DmOra.ClientMoniCliente.Filtered := True;
            end;
    end;
end;


procedure TFMoniCliente.btnFinalizarMonClick(Sender: TObject);
begin
  if not DmOra.ClientMoniCliente.IsEmpty then
     begin
       DmOra.CadUsu_TE085Moni.Close;
       DmOra.CadUsu_TE085Moni.Parameters.ParamByName('USU_IDMON').Value := DmOra.ClientMoniClienteUSU_IDMON.Value;
       DmOra.CadUsu_TE085Moni.Open;
       if not DmOra.CadUsu_TE085Moni.IsEmpty then
          begin
            FMotivoFimMon := TFMotivoFimMon.Create(Self);
            FMotivoFimMon.ShowModal;
            FreeAndNil(FMotivoFimMon);

            if Trim(DmOra.CadUsu_TE085MoniUSU_MOTFIM.Value) <> '' then
               begin
                 DmOra.CadUsu_TE085MoniUSU_DATFIM.Value := Date;
                 DmOra.CadUsu_TE085MoniUSU_SALFIM.AsFloat := DmOra.ClientMoniClientevnTotalCompra.AsFloat;
                 DmOra.CadUsu_TE085Moni.Post;

                 btnMostrar.Click;
                 btnFiltrar.Click;
               end
            else
               begin
                  Application.MessageBox('Não foi informado um motivo para o fim do monitoramento!!','Aviso',MB_ICONWARNING+MB_OK);
               end;
          end;
     end;
end;

procedure TFMoniCliente.btnMostrarClick(Sender: TObject);
begin
  DmOra.ClientMoniCliente.Close;
  DmOra.MoniCliente.Close;
  DmOra.MoniCliente.Open;
  DmOra.ClientMoniCliente.IndexFieldNames := 'vnQtdDiasMon';
  DmOra.ClientMoniCliente.Open;

  {DmOra.ClientMoniCliente.Filtered := False;
  DmOra.ClientMoniCliente.Filter := ' USU_MOTFIM = '' '''; //PARA FILTRAR APENAS OS ATIVOS
  DmOra.ClientMoniCliente.Filtered := True;}
  btnFiltrar.Click;


end;

procedure TFMoniCliente.chkCidadeClick(Sender: TObject);
begin
  if chkCidade.Checked then
     lblCidade.Font.Color := clRed
  else
     lblCidade.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkClienteClick(Sender: TObject);
begin
  if chkCliente.Checked then
     lblCliente.Font.Color := clRed
  else
     lblCliente.Font.Color := clWindowText;

end;

procedure TFMoniCliente.chkComCompraClick(Sender: TObject);
begin
  if chkComCompra.Checked then
     lblComCompra.Font.Color := clRed
  else
     lblComCompra.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkDiasMonitoramentoClick(Sender: TObject);
begin
  if chkDiasMonitoramento.Checked then
     lblDiasMonitoramento.Font.Color := clRed
  else
     lblDiasMonitoramento.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkDiasSerasaClick(Sender: TObject);
begin
  if chkDiasSerasa.Checked then
     lblDiasSerasa.Font.Color := clRed
  else
     lblDiasSerasa.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkInicioClick(Sender: TObject);
begin
  if chkInicio.Checked then
     lblInicio.Font.Color := clRed
  else
     lblInicio.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkNomCidClick(Sender: TObject);
begin
  if chkNomCid.Checked then
     lblNomCid.Font.Color := clRed
  else
     lblNomCid.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkOriSerasaClick(Sender: TObject);
begin
if chkOriSerasa.Checked then
     lblOriSerasa.Font.Color := clRed
  else
     lblOriSerasa.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkRepresentanteClick(Sender: TObject);
begin
  if chkRepresentante.Checked then
     lblRepresentante.Font.Color := clRed
  else
     lblRepresentante.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkSitMonClick(Sender: TObject);
begin
  if chkSitMon.Checked then
     lblSitMon.Font.Color := clRed
  else
     lblSitMon.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkSitSerasaClick(Sender: TObject);
begin
  if chkSitSerasa.Checked then
     lblSitSerasa.Font.Color := clRed
  else
     lblSitSerasa.Font.Color := clWindowText;
end;

procedure TFMoniCliente.chkUFClick(Sender: TObject);
begin
  if chkUF.Checked then
     lblUF.Font.Color := clRed
  else
     lblUF.Font.Color := clWindowText;
end;

procedure TFMoniCliente.edtCodCliExit(Sender: TObject);
begin
if edtCodCli.AsInteger > 0 then
   begin
     ConsCli.Close;
     ConsCli.Parameters.ParamByName('CODCLI').Value := edtCodCli.AsInteger;
     ConsCli.Open;
     if ConsCli.IsEmpty then
        begin
          Application.MessageBox('Cliente não encontrado','Aviso',MB_ICONWARNING+MB_OK);
          edtNomCli.Clear;
          ActiveControl := edtCodCli;
        end
     else
        begin
          edtNomCli.Text := ConsCli.FieldByName('NOMCLI').AsString;
        end;

   end
else
   begin
     edtNomCli.Clear;

   end;
end;

procedure TFMoniCliente.edtCodRaizExit(Sender: TObject);
begin
if edtCodRaiz.AsInteger > 0 then
   begin
     ConsCid.Close;
     ConsCid.Parameters.ParamByName('CODRAI').Value := edtCodRaiz.AsInteger;
     ConsCid.Open;
     if ConsCid.IsEmpty then
        begin
          Application.MessageBox('Cidade não encontrada','Aviso',MB_ICONWARNING+MB_OK);
          edtNomCid.Clear;
          ActiveControl := edtCodRaiz;
        end
     else
        begin
          edtNomCid.Text := ConsCid.FieldByName('NOMCID').AsString;
        end;

   end
else
   begin
     edtNomCid.Clear;

   end;
end;

procedure TFMoniCliente.edtCodRepExit(Sender: TObject);
begin
  if edtCodRep.AsInteger > 0 then
     begin
       ConsRep.Close;
       ConsRep.Parameters.ParamByName('CODREP').Value := edtCodRep.AsInteger;
       ConsRep.Open;
       if ConsRep.IsEmpty then
          begin
            Application.MessageBox('Representante não encontrado','Aviso',MB_ICONWARNING+MB_OK);
            edtNomRep.Clear;
            ActiveControl := edtCodRep;
          end
       else
          begin
            edtNomRep.Text := ConsRep.FieldByName('APEREP').AsString;
          end;

     end
  else
     begin
       edtNomRep.Clear;

     end;
end;

procedure TFMoniCliente.FormShow(Sender: TObject);
begin
//BUSCA OS CLIENTES QUE FORAM IMPORTADOS PELO LISTAONLINE DO SERASA
  ConsCliListaOn.Close;
  ConsCliListaOn.Open;
  if not ConsCliListaOn.IsEmpty then
     begin
       ConsCliListaOn.First;
       while not ConsCliListaOn.Eof do
         begin
            DmOra.CadUsu_TE085Moni.Open;
            DmOra.CadUsu_TE085Moni.Insert;
            DmOra.CadUsu_TE085MoniUSU_CODCLI.AsInteger := ConsCliListaOnCODCLI.Value;
            DmOra.CadUsu_TE085MoniUSU_CODRAI.Value := ConsCliListaOnCODRAI.Value;
            DmOra.CadUsu_TE085MoniUSU_CODREP.Value := ConsCliListaOnCODREP.Value;
            DmOra.CadUsu_TE085MoniUSU_CLISERA.Value := 'SIM';
            DmOra.CadUsu_TE085MoniUSU_DATINI.Value := Date;
            DmOra.CadUsu_TE085MoniUSU_DATFIM.Value := 0;
            DmOra.CadUsu_TE085MoniUSU_MOTFIM.Value := ' ';
            DmOra.CadUsu_TE085MoniUSU_SALFIM.AsFloat := 0;
            DmOra.CadUsu_TE085MoniUSU_DATSER.Value := 0;
            DmOra.CadUsu_TE085MoniUSU_SITSER.Value := 'INDEFINIDO';
            DmOra.CadUsu_TE085MoniUSU_USUSER.Value := 0;
            DmOra.ConsSql.Close;
            DmOra.ConsSql.SQL.Clear;
            DmOra.ConsSql.SQL.Add('SELECT MAX(USU_IDMON)AS USU_IDMON FROM USU_TE085MONI');
            DmOra.ConsSql.Open;
            if not DmOra.ConsSql.IsEmpty then
               begin
                 DmOra.CadUsu_TE085MoniUSU_IDMON.Value := DmOra.ConsSql.FieldByName('USU_IDMON').AsInteger + 1;
               end
            else
               begin
                 DmOra.CadUsu_TE085MoniUSU_IDMON.Value :=  1;
               end;
            DmOra.CadUsu_TE085Moni.Post;

           ConsCliListaOn.Next;
         end;
     end;
  chkSitMon.Checked := True;
  cbbSitMon.ItemIndex := 0;

  btnMostrar.Click;

end;

end.
