unit UMovBaixaCorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Mask, rxToolEdit, RXDBCtrl, RXSwitch,
  RXDice, Buttons, ExtCtrls, ADODB, ImgList;

type
  TFMovBaixaCorte = class(TForm)
    DBGrid: TDBGrid;
    DsConsUsu_TMovBax: TDataSource;
    Panel1: TPanel;
    EdData2: TDateEdit;
    EdData1: TDateEdit;
    EdProduto: TEdit;
    EdCor: TEdit;
    EdCarga: TEdit;
    BPesquisa: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    EdDsProduto: TEdit;
    Label5: TLabel;
    EdDerivacao: TEdit;
    Label6: TLabel;
    ValidaCarga: TADOQuery;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaCargaUSU_NUMANE: TIntegerField;
    ValidaCargaUSU_DATIMP: TDateTimeField;
    ValidaCargaUSU_HORIMP: TIntegerField;
    ValidaCargaUSU_USUIMP: TIntegerField;
    ValidaCargaUSU_CARPRO: TStringField;
    ValidaDerivacao: TADOQuery;
    ValidaDerivacaoCODEMP: TIntegerField;
    ValidaDerivacaoCODMDP: TStringField;
    ValidaDerivacaoCODDER: TStringField;
    ValidaDerivacaoSEQCMD: TIntegerField;
    ValidaDerivacaoDESDER: TStringField;
    ValidaDerivacaoABRDER: TStringField;
    ValidaDerivacaoCODAGR: TIntegerField;
    ValidaDerivacaoSITCMD: TStringField;
    ValidaDerivacaoUSUGER: TBCDField;
    ValidaDerivacaoDATGER: TDateTimeField;
    ValidaDerivacaoHORGER: TIntegerField;
    ValidaDerivacaoUSUALT: TBCDField;
    ValidaDerivacaoDATALT: TDateTimeField;
    ValidaDerivacaoHORALT: TIntegerField;
    ValidaCor: TADOQuery;
    ValidaCorCODPRO: TStringField;
    LDsProduto: TLabel;
    ValidaProdutoDESPRO: TStringField;
    BCancelar: TBitBtn;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdDsProdutoChange(Sender: TObject);
    procedure EdCargaExit(Sender: TObject);
    procedure EdProdutoExit(Sender: TObject);
    procedure EdDerivacaoExit(Sender: TObject);
    procedure EdCorExit(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovBaixaCorte: TFMovBaixaCorte;

implementation

uses UDm1, UDm, UPrincipal;

{$R *.dfm}

procedure TFMovBaixaCorte.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FMovBaixaCorte.Name,FPrincipal.vnCodCon);
  BPesquisa.Click;
  LDsProduto.Caption := '';
end;

procedure TFMovBaixaCorte.BPesquisaClick(Sender: TObject);
begin
    if EdData1.Date = 0 then
       begin//1
         Application.MessageBox('Informe a Data Inicial.','Aviso', MB_ICONWARNING+MB_OK);
         EdData1.SetFocus;
       end//1
    else if EdData2.Date = 0 then
            begin//2
               Application.MessageBox('Informe a Data Final.','Aviso', MB_ICONWARNING+MB_OK);
               EdData2.SetFocus;
            end//2
         else
            begin//3
                Dm1.ConsUsu_TMovBax.Close;
                Dm1.ConsUsu_TMovBax.SQL.Clear;
                Dm1.ConsUsu_TMovBax.SQL.Add('select usu_tmovbax.*,e075pro.despro,usu_tr999usu.usu_nomusu');
                Dm1.ConsUsu_TMovBax.SQL.Add('from usu_tmovbax');
                Dm1.ConsUsu_TMovBax.SQL.Add('inner join e075pro on e075pro.codpro = usu_tmovbax.usu_codpro');
                Dm1.ConsUsu_TMovBax.SQL.Add('inner join usu_tr999usu on usu_tr999usu.usu_codusu = usu_tmovbax.usu_usumov');
                Dm1.ConsUsu_TMovBax.SQL.Add('where');
                Dm1.ConsUsu_TMovBax.SQL.Add('usu_tmovbax.usu_datmov between :datmov1 and :datmov2');
                if EdCarga.Text <> '' then
                   begin//4
                      Dm1.ConsUsu_TMovBax.SQL.Add('and usu_tmovbax.usu_numane = :numane');
                      Dm1.ConsUsu_TMovBax.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                   end;//4
                if EdProduto.Text <> '' then
                   begin//5
                     Dm1.ConsUsu_TMovBax.SQL.Add('and usu_tmovbax.usu_codpro = :codpro');
                     Dm1.ConsUsu_TMovBax.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                   end;//5
                if EdDerivacao.Text <> '' then
                   begin//7
                     Dm1.ConsUsu_TMovBax.SQL.Add('and usu_tmovbax.usu_codder = :codder');
                     Dm1.ConsUsu_TMovBax.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                   end;//7
                if EdCor.Text <> '' then
                   begin//6
                     Dm1.ConsUsu_TMovBax.SQL.Add('and usu_tmovbax.usu_codcor1 = :codcor1 or usu_tmovbax.usu_codcor2 = :codcor2');
                     Dm1.ConsUsu_TMovBax.Parameters.ParamByName('codcor1').Value := EdCor.Text;
                     Dm1.ConsUsu_TMovBax.Parameters.ParamByName('codcor2').Value := EdCor.Text;
                   end;//6



                Dm1.ConsUsu_TMovBax.SQL.Add('order by usu_tmovbax.usu_numane,usu_tmovbax.usu_seqmov desc');
                Dm1.ConsUsu_TMovBax.Parameters.ParamByName('datmov1').Value := EdData1.Date;
                Dm1.ConsUsu_TMovBax.Parameters.ParamByName('datmov2').Value := EdData2.Date;
                Dm1.ConsUsu_TMovBax.Open;

            end;//3



end;

procedure TFMovBaixaCorte.SpeedButton1Click(Sender: TObject);
begin
    if EdDsProduto.Visible = false then
       begin
         EdDsProduto.Visible := true;
         EdDsProduto.SetFocus;
         EdProduto.Clear;
         EdProduto.Color := clBtnFace;
         EdProduto.Enabled := false;
         BPesquisa.Enabled := false;
         LDsProduto.Caption := '';
       end
    else
      begin
        EdDsProduto.Clear;
        EdDsProduto.Visible := false;
        EdProduto.Enabled := true;
        EdProduto.Color := clWindow;
        BPesquisa.Enabled := true;
      end;
end;

procedure TFMovBaixaCorte.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFMovBaixaCorte.EdDsProdutoChange(Sender: TObject);
begin
if EdData1.Date = 0 then
       begin//1
         Application.MessageBox('Informe a Data Inicial.','Aviso', MB_ICONWARNING+MB_OK);
         EdData1.SetFocus;
         EdDsProduto.Clear;
       end//1
    else if EdData2.Date = 0 then
            begin//2
               Application.MessageBox('Informe a Data Final.','Aviso', MB_ICONWARNING+MB_OK);
               EdData2.SetFocus;
               EdDsProduto.Clear;
            end//2
         else
            begin//3
                Dm1.ConsUsu_TMovBax.Close;
                Dm1.ConsUsu_TMovBax.SQL.Clear;
                Dm1.ConsUsu_TMovBax.SQL.Add('select usu_tmovbax.*,e075pro.despro,usu_tr999usu.usu_nomusu');
                Dm1.ConsUsu_TMovBax.SQL.Add('from usu_tmovbax');
                Dm1.ConsUsu_TMovBax.SQL.Add('inner join e075pro on e075pro.codpro = usu_tmovbax.usu_codpro');
                Dm1.ConsUsu_TMovBax.SQL.Add('inner join usu_tr999usu on usu_tr999usu.usu_codusu = usu_tmovbax.usu_usumov');
                Dm1.ConsUsu_TMovBax.SQL.Add('where');
                Dm1.ConsUsu_TMovBax.SQL.Add('usu_tmovbax.usu_datmov between :datmov1 and :datmov2');
                if EdCarga.Text <> '' then
                   begin//4
                      Dm1.ConsUsu_TMovBax.SQL.Add('and usu_tmovbax.usu_numane = :numane');
                      Dm1.ConsUsu_TMovBax.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                   end;//4
                if EdCor.Text <> '' then
                   begin//6
                     Dm1.ConsUsu_TMovBax.SQL.Add('and usu_tmovbax.usu_codcor1 = :codcor1 or usu_tmovbax.usu_codcor2 = :codcor2');
                     Dm1.ConsUsu_TMovBax.Parameters.ParamByName('codcor1').Value := EdCor.Text;
                     Dm1.ConsUsu_TMovBax.Parameters.ParamByName('codcor2').Value := EdCor.Text;
                   end;//6
                if EdDerivacao.Text <> '' then
                   begin//7
                     Dm1.ConsUsu_TMovBax.SQL.Add('and usu_tmovbax.usu_codder = :codder');
                     Dm1.ConsUsu_TMovBax.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                   end;//7
                Dm1.ConsUsu_TMovBax.SQL.Add('and e075pro.despro like'+QuotedStr('%'+EdDsProduto.Text+'%'));


                Dm1.ConsUsu_TMovBax.SQL.Add('order by usu_tmovbax.usu_numane,usu_tmovbax.usu_seqmov desc');
                Dm1.ConsUsu_TMovBax.Parameters.ParamByName('datmov1').Value := EdData1.Date;
                Dm1.ConsUsu_TMovBax.Parameters.ParamByName('datmov2').Value := EdData2.Date;
                Dm1.ConsUsu_TMovBax.Open;

            end;//3
end;

procedure TFMovBaixaCorte.EdCargaExit(Sender: TObject);
var vnNunAne : Integer;
begin
   if TryStrToInt(EdCarga.Text,vnNunAne) then
      begin
         ValidaCarga.Close;
         ValidaCarga.Parameters.ParamByName('numane').Value := vnNunAne;
         ValidaCarga.Open;
         if ValidaCarga.IsEmpty then
            begin
               Application.MessageBox('Nº de Carga Inválido','Aviso', MB_ICONWARNING+MB_OK);
               EdCarga.Clear;
               EdCarga.SetFocus;
            end;
      end;

end;

procedure TFMovBaixaCorte.EdProdutoExit(Sender: TObject);
var vnCodPro : integer;
begin
if EdProduto.Text <> '' then
      begin
         ValidaProduto.Close;
         ValidaProduto.Parameters.ParamByName('codpro').Value := EdProduto.Text;
         ValidaProduto.Open;
         if ValidaProduto.IsEmpty then
            begin
               Application.MessageBox('Nº de Produto Inválido','Aviso', MB_ICONWARNING+MB_OK);
               EdProduto.Clear;
               EdProduto.SetFocus;
            end
         else
            begin
               LDsProduto.Caption := ValidaProdutoDESPRO.Value;
            end;
      end
else
  begin
    LDsProduto.Caption := '';
  end;
end;

procedure TFMovBaixaCorte.EdDerivacaoExit(Sender: TObject);
begin
if EdDerivacao.Text <> '' then
      begin
         ValidaDerivacao.Close;
         ValidaDerivacao.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
         ValidaDerivacao.Open;
         if ValidaDerivacao.IsEmpty then
            begin
               Application.MessageBox('Nº de Derivação Inválido','Aviso', MB_ICONWARNING+MB_OK);
               EdDerivacao.Clear;
               EdDerivacao.SetFocus;
            end;
      end;
end;

procedure TFMovBaixaCorte.EdCorExit(Sender: TObject);
var vnCodPro : Integer;
begin
if TryStrToInt(EdCor.Text,vnCodPro) then
      begin
         ValidaCor.Close;
         ValidaCor.Parameters.ParamByName('codpro').Value := vnCodPro;
         ValidaCor.Open;
         if ValidaCor.IsEmpty then
            begin
               Application.MessageBox('Nº de Cor Inválido','Aviso', MB_ICONWARNING+MB_OK);
               EdCor.Clear;
               EdCor.SetFocus;
            end;
      end;
end;

procedure TFMovBaixaCorte.BCancelarClick(Sender: TObject);
VAR vnSeqLog : Integer;
begin
if not Dm1.ConsUsu_TMovBax.IsEmpty then
   begin//1
   if Dm1.ConsUsu_TMovBaxUSU_SITMOV.Value = 'C' then
     begin
       Application.MessageBox('Este movimento já está cancelado!','Aviso', MB_ICONWARNING+MB_OK);
     end
   else
    begin//27
      if Application.MessageBox('Deseja realmente cancelar o movimento?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
         begin//2
            //atualiza o saldo do produto na carga
            Dm1.CadUsu_TProCar.Close;
            Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := Dm1.ConsUsu_TMovBaxUSU_NUMANE.Value;
            Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODPRO.Value;
            Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_TMovBaxUSU_CODDER.Value;
            Dm1.CadUsu_TProCar.Open;
            Dm1.CadUsu_TProCar.Edit;
            Dm1.CadUsu_TProCarUSU_QTDPRO.Value := Dm1.CadUsu_TProCarUSU_QTDPRO.Value - Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
            Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDABE.Value + Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
            if Dm1.CadUsu_TProCarUSU_QTDABE.Value = Dm1.CadUsu_TProCarUSU_QTDPED.Value then
               begin//3
                  Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N';
               end//3
            else
               begin//4
                  Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'P';
               end;//4
            Dm1.CadUsu_TProCar.Post;
            //atualiza o saldo das cores do produto na carga
            Dm1.CadUsu_TCorCar.Close;
            Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := Dm1.ConsUsu_TMovBaxUSU_NUMANE.Value;
            Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODPRO.Value;
            Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_TMovBaxUSU_CODDER.Value;
            Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR1.Value;
            Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR2.Value;
            Dm1.CadUsu_TCorCar.Open;
            Dm1.CadUsu_TCorCar.Edit;
            Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := Dm1.CadUsu_TCorCarUSU_QTDPRO.Value - Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
            Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value + Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
            //consulta o consumo de tecido do produto
            Dm1.ConsE075DerConsTec.Close;
            Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODPRO.Value;
            Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_TMovBaxUSU_CODDER.Value;
            Dm1.ConsE075DerConsTec.Open;
            if Dm1.ConsUsu_TMovBaxUSU_TIPCOM.Value = 1 then
               begin//5
                  Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value);
               end//5
            else if Dm1.ConsUsu_TMovBaxUSU_TIPCOM.Value = 2 then
                    begin//6
                       Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value);
                       Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value + (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value);
                    end//6
                 else if Dm1.ConsUsu_TMovBaxUSU_TIPCOM.Value = 3 then
                         begin//7
                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value);
                            Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value - (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value);
                         end;//7
            if Dm1.CadUsu_TCorCarUSU_QTDABE.Value = Dm1.CadUsu_TCorCarUSU_QTDPED.Value then
               begin//8
                  Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N';
               end//8
            else
               begin//9
                  Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'P';
               end;//9
            Dm1.CadUsu_TCorCar.Post;
            //se existir produto/derivaçao na tabela usu_tsalpro atualiza a quantidade senao insere
            Dm1.CadUsu_TSalPro.Close;
            Dm1.CadUsu_TSalPro.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODPRO.Value;
            Dm1.CadUsu_TSalPro.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_TMovBaxUSU_CODDER.Value;
            Dm1.CadUsu_TSalPro.Open;
            if not Dm1.CadUsu_TSalPro.IsEmpty then
               begin//10
                  Dm1.CadUsu_TSalPro.Edit;
                  Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value + Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
               end//10
            else
               begin//11
                  Dm1.CadUsu_TSalPro.Insert;
                  Dm1.CadUsu_TSalProUSU_CODPRO.Value := Dm1.ConsUsu_TMovBaxUSU_CODPRO.Value;
                  Dm1.CadUsu_TSalProUSU_CODDER.Value := Dm1.ConsUsu_TMovBaxUSU_CODDER.Value;
                  Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
               end;//11
            Dm1.CadUsu_TSalPro.Post;
            //se existir cor para o produto/derivação atualiza a quantidade se nao insere
            Dm1.CadUsu_TCorSal.Close;
            Dm1.CadUsu_TCorSal.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODPRO.Value;
            Dm1.CadUsu_TCorSal.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_TMovBaxUSU_CODDER.Value;
            Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR1.Value;
            Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor2').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR2.Value;
            Dm1.CadUsu_TCorSal.Open;
            if not Dm1.CadUsu_TCorSal.IsEmpty then
               begin//12
                  Dm1.CadUsu_TCorSal.Edit;
                  Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.CadUsu_TCorSalUSU_QTDABE.Value + Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
               end//12
            else
               begin//13
                  Dm1.CadUsu_TCorSal.Insert;
                  Dm1.CadUsu_TCorSalUSU_CODPRO.Value := Dm1.ConsUsu_TMovBaxUSU_CODPRO.Value;
                  Dm1.CadUsu_TCorSalUSU_CODDER.Value := Dm1.ConsUsu_TMovBaxUSU_CODDER.Value;
                  Dm1.CadUsu_TCorSalUSU_CODCOR1.Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR1.Value;
                  Dm1.CadUsu_TCorSalUSU_CODCOR2.Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR2.Value;
                  Dm1.CadUsu_TCorSalUSU_TIPCOM.Value := Dm1.ConsUsu_TMovBaxUSU_TIPCOM.Value;
                  Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.ConsUsu_TMovBaxUSU_QTDMOV.Value;
               end;//13
            Dm1.CadUsu_TCorSal.Post;
            //se a carga ja estiver produzida muda a situaçao para nao produzida
            Dm1.CadUsu_TCarPro2.Close;
            Dm1.CadUsu_TCarPro2.Parameters.ParamByName('numane').Value := Dm1.ConsUsu_TMovBaxUSU_NUMANE.Value;
            Dm1.CadUsu_TCarPro2.Open;
            if Dm1.CadUsu_TCarPro2USU_CARPRO.Value = 'S' then
               begin//14
                    Dm1.CadUsu_TCarPro2.Edit;
                    Dm1.CadUsu_TCarPro2USU_CARPRO.Value := 'N';
                    Dm1.CadUsu_TCarPro2.Post;
                    //atualiza a consulta das cargas em produao
                    Dm1.ConsUsu_TCarPro.Close;
                    Dm1.ConsUsu_TCarPro.Open;
               end;//14
            //muda a situaçao do movimento para cancelado
            Dm1.CadUsu_TMovBax.Close;
            Dm1.CadUsu_TMovBax.Parameters.ParamByName('seqmov').Value := Dm1.ConsUsu_TMovBaxUSU_SEQMOV.Value;
            Dm1.CadUsu_TMovBax.Parameters.ParamByName('numane').Value := Dm1.ConsUsu_TMovBaxUSU_NUMANE.Value;
            Dm1.CadUsu_TMovBax.Open;
            Dm1.CadUsu_TMovBax.Edit;
            Dm1.CadUsu_TMovBaxUSU_SITMOV.Value := 'C';
            Dm1.CadUsu_TMovBax.Post;
            //verifica se o log de baixa esta em aberto se estiver atualiza o saldo
            //se nao inseri um novo do tipo entrada
            if Dm1.ConsUsu_TMovBaxUSU_TIPCOM.Value = 1 then
               begin//22
                  Dm1.ConsUsu_TLogBaxLigLog.Close;
                  Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('seqmov').Value := Dm1.ConsUsu_TMovBaxUSU_SEQMOV.Value;
                  Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('numane').Value := Dm1.ConsUsu_TMovBaxUSU_NUMANE.Value;
                  Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR1.Value;
                  Dm1.ConsUsu_TLogBaxLigLog.Open;
                  if Dm1.ConsUsu_TLogBaxLigLogUSU_SITLOG.Value = 'A' then
                     begin//16
                        Dm1.CadUsu_TLogBax.Close;
                        Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxLigLogUSU_SEQLOG.Value;
                        Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TLogBaxLigLogUSU_CODPRO.Value;
                        Dm1.CadUsu_TLogBax.Open;
                        Dm1.CadUsu_TLogBax.Edit;
                        Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value - Dm1.ConsUsu_TMovBaxUSU_QTDMT1.Value;
                        Dm1.CadUsu_TLogBax.Post;
                     end//16
                  else
                     begin//17
                        Dm1.SeqUsu_TLogBax.Close;
                        Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR1.Value;
                        Dm1.SeqUsu_TLogBax.Open;
                        if Dm1.SeqUsu_TLogBax.IsEmpty then
                            vnSeqLog := 1
                        else
                            vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                        Dm1.CadUsu_TLogBax.Open;
                        Dm1.CadUsu_TLogBax.Insert;
                        Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                        Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                        Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.ConsUsu_TMovBaxUSU_QTDMT1.Value;
                        Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                        Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                        Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'ENTRADA POR CANCELAMENTO DE MOVIMENTO ';
                        Dm1.CadUsu_TLogBax.Post;
                     end;//17
               end//22
             else
                begin//18
                  Dm1.ConsUsu_TLogBaxLigLog.Close;
                  Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('seqmov').Value := Dm1.ConsUsu_TMovBaxUSU_SEQMOV.Value;
                  Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('numane').Value := Dm1.ConsUsu_TMovBaxUSU_NUMANE.Value;
                  Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR1.Value;
                  Dm1.ConsUsu_TLogBaxLigLog.Open;
                  if Dm1.ConsUsu_TLogBaxLigLogUSU_SITLOG.Value = 'A' then
                     begin//23
                        Dm1.CadUsu_TLogBax.Close;
                        Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxLigLogUSU_SEQLOG.Value;
                        Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TLogBaxLigLogUSU_CODPRO.Value;
                        Dm1.CadUsu_TLogBax.Open;
                        Dm1.CadUsu_TLogBax.Edit;
                        Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value - Dm1.ConsUsu_TMovBaxUSU_QTDMT1.Value;
                        Dm1.CadUsu_TLogBax.Post;
                     end//23
                  else
                     begin//24
                        Dm1.SeqUsu_TLogBax.Close;
                        Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR1.Value;
                        Dm1.SeqUsu_TLogBax.Open;
                        if Dm1.SeqUsu_TLogBax.IsEmpty then
                            vnSeqLog := 1
                        else
                            vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                        Dm1.CadUsu_TLogBax.Open;
                        Dm1.CadUsu_TLogBax.Insert;
                        Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                        Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                        Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.ConsUsu_TMovBaxUSU_QTDMT1.Value;
                        Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                        Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                        Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'ENTRADA POR CANCELAMENTO DE MOVIMENTO ';
                        Dm1.CadUsu_TLogBax.Post;
                     end;//24
                     //repete o mesmo de cima com a cor 02
                        Dm1.ConsUsu_TLogBaxLigLog.Close;
                        Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('seqmov').Value := Dm1.ConsUsu_TMovBaxUSU_SEQMOV.Value;
                        Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('numane').Value := Dm1.ConsUsu_TMovBaxUSU_NUMANE.Value;
                        Dm1.ConsUsu_TLogBaxLigLog.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR2.Value;
                        Dm1.ConsUsu_TLogBaxLigLog.Open;
                        if Dm1.ConsUsu_TLogBaxLigLogUSU_SITLOG.Value = 'A' then
                           begin//25
                              Dm1.CadUsu_TLogBax.Close;
                              Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxLigLogUSU_SEQLOG.Value;
                              Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TLogBaxLigLogUSU_CODPRO.Value;
                              Dm1.CadUsu_TLogBax.Open;
                              Dm1.CadUsu_TLogBax.Edit;
                              Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value - Dm1.ConsUsu_TMovBaxUSU_QTDMT2.Value;
                              Dm1.CadUsu_TLogBax.Post;
                           end//25
                        else
                           begin//26
                              Dm1.SeqUsu_TLogBax.Close;
                              Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TMovBaxUSU_CODCOR2.Value;
                              Dm1.SeqUsu_TLogBax.Open;
                              if Dm1.SeqUsu_TLogBax.IsEmpty then
                                 vnSeqLog := 1
                              else
                              vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                              Dm1.CadUsu_TLogBax.Open;
                              Dm1.CadUsu_TLogBax.Insert;
                              Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                              Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                              Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.ConsUsu_TMovBaxUSU_QTDMT2.Value;
                              Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                              Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                              Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'ENTRADA POR CANCELAMENTO DE MOVIMENTO ';
                              Dm1.CadUsu_TLogBax.Post;
                           end;//26
                end;//18
                 BPesquisa.Click;
                 Application.MessageBox('Movimento cancelado com sucesso!','', MB_ICONINFORMATION+MB_OK);
         end;//2
      end;//27
   end;//1
end;

procedure TFMovBaixaCorte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FPrincipal.ApagaTela(FMovBaixaCorte.Name,FPrincipal.vnCodCon);
end;

end.
