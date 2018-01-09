unit UAlteraProdCarCorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB;

type
  TFAlteraProdCarCorte = class(TForm)
    PaginaControle: TPageControl;
    TbMovimento: TTabSheet;
    EdCarga: TEdit;
    EdProduto: TEdit;
    EdDerivacao: TEdit;
    EdQuantidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdTipComb: TComboBox;
    EdCor01: TEdit;
    EdCor02: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Processa: TBitBtn;
    ValidaCarga: TADOQuery;
    ValidaCargaUSU_NUMANE: TIntegerField;
    ValidaCargaUSU_DATIMP: TDateTimeField;
    ValidaCargaUSU_HORIMP: TIntegerField;
    ValidaCargaUSU_USUIMP: TIntegerField;
    ValidaCargaUSU_CARPRO: TStringField;
    ValidaProduto: TADOQuery;
    ValidaProdutoCODPRO: TStringField;
    ValidaProdutoDESPRO: TStringField;
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
    LDsTipComb: TLabel;
    SeExisteUsu_TCarPro: TADOQuery;
    SeExisteUsu_TCarProUSU_NUMANE: TIntegerField;
    SeExisteUsu_TCarProUSU_DATIMP: TDateTimeField;
    SeExisteUsu_TCarProUSU_HORIMP: TIntegerField;
    SeExisteUsu_TCarProUSU_USUIMP: TIntegerField;
    SeExisteUsu_TCarProUSU_CARPRO: TStringField;
    SeExisteUsu_TProCar: TADOQuery;
    SeExisteUsu_TProCarUSU_NUMANE: TIntegerField;
    SeExisteUsu_TProCarUSU_CODPRO: TStringField;
    SeExisteUsu_TProCarUSU_CODDER: TStringField;
    SeExisteUsu_TProCarUSU_QTDPED: TIntegerField;
    SeExisteUsu_TProCarUSU_QTDPRO: TIntegerField;
    SeExisteUsu_TProCarUSU_QTDABE: TIntegerField;
    SeExisteUsu_TProCarUSU_PROCOR: TStringField;
    RadioGroup1: TRadioGroup;
    RInserir: TRadioButton;
    RExcluir: TRadioButton;
    SeExisteUsu_TCorCar: TADOQuery;
    SeExisteUsu_TCorCarUSU_NUMANE: TIntegerField;
    SeExisteUsu_TCorCarUSU_CODPRO: TStringField;
    SeExisteUsu_TCorCarUSU_CODDER: TStringField;
    SeExisteUsu_TCorCarUSU_CODCOR1: TStringField;
    SeExisteUsu_TCorCarUSU_QTDPED: TIntegerField;
    SeExisteUsu_TCorCarUSU_QTDPRO: TIntegerField;
    SeExisteUsu_TCorCarUSU_QTDABE: TIntegerField;
    SeExisteUsu_TCorCarUSU_SALABE1: TBCDField;
    SeExisteUsu_TCorCarUSU_CODCOR2: TStringField;
    SeExisteUsu_TCorCarUSU_SALABE2: TBCDField;
    SeExisteUsu_TCorCarUSU_TIPCOM: TIntegerField;
    SeExisteUsu_TCorCarUSU_CORCOR: TStringField;
    SeExisteUsu_TCorCarUSU_SELITE: TStringField;
    SeExisteUsu_TCorCarUSU_QTDCOR1: TBCDField;
    SeExisteUsu_TCorCarUSU_QTDCOR2: TBCDField;
    BConsProd: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCargaExit(Sender: TObject);
    procedure EdProdutoExit(Sender: TObject);
    procedure EdDerivacaoExit(Sender: TObject);
    procedure EdTipCombExit(Sender: TObject);
    procedure EdTipCombChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ProcessaClick(Sender: TObject);
    procedure EdCor01Exit(Sender: TObject);
    procedure EdCor02Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BConsProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAlteraProdCarCorte: TFAlteraProdCarCorte;

implementation

uses UDm, UDm1, UPrincipal, UConsGeralNfEnt;

{$R *.dfm}

procedure TFAlteraProdCarCorte.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAlteraProdCarCorte.BConsProdClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FAlteraProdCarCorte';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := EdProduto;

end;

procedure TFAlteraProdCarCorte.EdCargaExit(Sender: TObject);
var vnNunAne : Integer;
begin
   if TryStrToInt(EdCarga.Text,vnNunAne) then
      begin
         ValidaCarga.Close;
         ValidaCarga.Parameters.ParamByName('numane').Value := vnNunAne;
         ValidaCarga.Open;
         if ValidaCarga.IsEmpty then
            begin
               Application.MessageBox('N� de Carga Inv�lido','Aviso', MB_ICONWARNING+MB_OK);
               EdCarga.Clear;
               EdCarga.SetFocus;
            end;
      end;
end;

procedure TFAlteraProdCarCorte.EdProdutoExit(Sender: TObject);
begin
if EdProduto.Text <> '' then
      begin
         ValidaProduto.Close;
         ValidaProduto.Parameters.ParamByName('codpro').Value := EdProduto.Text;
         ValidaProduto.Open;
         if ValidaProduto.IsEmpty then
            begin
               Application.MessageBox('N� de Produto Inv�lido','Aviso', MB_ICONWARNING+MB_OK);
               EdProduto.Clear;
               EdProduto.SetFocus;
            end
         else
            begin//2
               if EdDerivacao.Text <> '' then
                  begin//3
                      Dm1.ConsE075DerConsTec.Close;
                      Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                      Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                      Dm1.ConsE075DerConsTec.Open;
                      if Dm1.ConsE075DerConsTec.IsEmpty then
                        begin
                           Application.MessageBox('Combina��o de Produto/Deriva��o n�o encontrado.','Aviso', MB_ICONWARNING+MB_OK);
                           EdProduto.SetFocus;
                           LDsProduto.Caption := '';
                        end
                      else
                        begin
                          LDsProduto.Caption := ValidaProdutoDESPRO.Value;
                        end;
                  end//3
               else
                  begin//4
                     LDsProduto.Caption := ValidaProdutoDESPRO.Value;
                  end;//4
            end;//2
      end
else
  begin
    LDsProduto.Caption := '';
  end;

end;

procedure TFAlteraProdCarCorte.EdDerivacaoExit(Sender: TObject);
begin
if EdDerivacao.Text <> '' then
      begin
         ValidaDerivacao.Close;
         ValidaDerivacao.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
         ValidaDerivacao.Open;
         if ValidaDerivacao.IsEmpty then
            begin
               Application.MessageBox('N� de Deriva��o Inv�lido','Aviso', MB_ICONWARNING+MB_OK);
               EdDerivacao.Clear;
               EdDerivacao.SetFocus;
            end
         else
            begin
               Dm1.ConsE075DerConsTec.Close;
               Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := EdProduto.Text;
               Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
               Dm1.ConsE075DerConsTec.Open;
               if Dm1.ConsE075DerConsTec.IsEmpty then
                  begin
                     Application.MessageBox('Combina��o de Produto/Deriva��o n�o encontrado.','Aviso', MB_ICONWARNING+MB_OK);
                     EdDerivacao.SetFocus;
                  end;

            end;
      end;
end;

procedure TFAlteraProdCarCorte.EdTipCombExit(Sender: TObject);
begin
  if EdTipComb.ItemIndex = 0 then
      LDsTipComb.Caption := 'Cor �nica'
  else if EdTipComb.ItemIndex = 1 then
          begin
             LDsTipComb.Caption := 'Compos� 1'
          end
        else if EdTipComb.ItemIndex = 2 then
              begin
                 LDsTipComb.Caption := 'Compos� 2'
              end;
end;

procedure TFAlteraProdCarCorte.EdTipCombChange(Sender: TObject);
begin
if EdTipComb.ItemIndex = 0 then
      LDsTipComb.Caption := 'Cor �nica'
  else if EdTipComb.ItemIndex = 1 then
          begin
             LDsTipComb.Caption := 'Compos� 1'
          end
        else if EdTipComb.ItemIndex = 2 then
              begin
                 LDsTipComb.Caption := 'Compos� 2'
              end;
end;

procedure TFAlteraProdCarCorte.FormCreate(Sender: TObject);
begin
LDsTipComb.Caption := 'Cor �nica'
end;

procedure TFAlteraProdCarCorte.ProcessaClick(Sender: TObject);
var vaCodCor2 : String;
    vnSeqLog : integer;
begin
if RInserir.Checked = true then
   begin//1
          if EdCarga.Text = '' then
             begin//2
                Application.MessageBox('Informe a Carga','Aviso', MB_ICONWARNING+MB_OK);
                EdCarga.SetFocus;
             end//2
          else if EdProduto.Text = '' then
                  begin//3
                     Application.MessageBox('Informe o Produto','Aviso', MB_ICONWARNING+MB_OK);
                     EdProduto.SetFocus;
                  end//3
               else if EdDerivacao.Text = '' then
                       begin//4
                          Application.MessageBox('Informe a Deriva��o','Aviso', MB_ICONWARNING+MB_OK);
                          EdDerivacao.SetFocus;
                       end//4
                    else if EdQuantidade.Text = '' then
                            begin//5
                               Application.MessageBox('Informe a Quantidade','Aviso', MB_ICONWARNING+MB_OK);
                               EdQuantidade.SetFocus;
                            end//5
                         else if EdCor01.Text = '' then
                                 begin//6
                                    Application.MessageBox('Informe a Cor 01','Aviso', MB_ICONWARNING+MB_OK);
                                    EdCor01.SetFocus;
                                 end//6
                              else if ((EdTipComb.ItemIndex = 1) or (EdTipComb.ItemIndex = 2)) and (EdCor02.Text = '') then
                                     begin//7
                                       Application.MessageBox('Informe a Cor 02','Aviso', MB_ICONWARNING+MB_OK);
                                       EdCor02.SetFocus;
                                     end//7
                                   else
                                      begin//8
                                         //verifica se realmente existe carga com o numero informado
                                         SeExisteUsu_TCarPro.Close;
                                         SeExisteUsu_TCarPro.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                         SeExisteUsu_TCarPro.Open;
                                         if not SeExisteUsu_TCarPro.IsEmpty then
                                            begin//9
                                               SeExisteUsu_TProCar.Close;
                                               SeExisteUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                               SeExisteUsu_TProCar.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                               SeExisteUsu_TProCar.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                               SeExisteUsu_TProCar.Open;
                                               //se existir altera a quantidade na carga se nao inseri um novo registro
                                               if not SeExisteUsu_TProCar.IsEmpty then
                                                  begin//10
                                                     Dm1.CadUsu_TProCar.Close;
                                                     Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                     Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TProCar.Open;
                                                     Dm1.CadUsu_TProCar.Edit;
                                                     Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value + StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDABE.Value + StrToInt(EdQuantidade.Text);
                                                     if Dm1.CadUsu_TProCarUSU_QTDABE.Value = Dm1.CadUsu_TProCarUSU_QTDPED.Value then
                                                        Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N'
                                                     else
                                                        Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'P';
                                                     Dm1.CadUsu_TProCar.Post;
                                                  end//10
                                               else
                                                  begin//11
                                                     Dm1.CadUsu_TProCar.Open;
                                                     Dm1.CadUsu_TProCar.Insert;
                                                     Dm1.CadUsu_TProCarUSU_NUMANE.Value := StrToInt(EdCarga.Text);
                                                     Dm1.CadUsu_TProCarUSU_CODPRO.Value := EdProduto.Text;
                                                     Dm1.CadUsu_TProCarUSU_CODDER.Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TProCarUSU_QTDPED.Value := StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TProCarUSU_QTDPRO.Value := 0;
                                                     Dm1.CadUsu_TProCarUSU_QTDABE.Value := StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N';
                                                     Dm1.CadUsu_TProCar.Post;
                                                  end;//11
                                               //se ja existir a cor para o produto atualiza a quantidade se nao inserre um novo registro
                                               if EdCor02.Text = '' then
                                                  vaCodCor2 := ' '
                                               else
                                                  vaCodCor2 := EdCor02.Text;
                                               SeExisteUsu_TCorCar.Close;
                                               SeExisteUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                               SeExisteUsu_TCorCar.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                               SeExisteUsu_TCorCar.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                               SeExisteUsu_TCorCar.Parameters.ParamByName('codcor1').Value := EdCor01.Text;
                                               SeExisteUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                               SeExisteUsu_TCorCar.Open;
                                               if not SeExisteUsu_TCorCar.IsEmpty then
                                                  begin//12
                                                     Dm1.CadUsu_TCorCar.Close;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := EdCor01.Text;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                                     Dm1.CadUsu_TCorCar.Open;
                                                     Dm1.CadUsu_TCorCar.Edit;
                                                     Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value + StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value + StrToInt(EdQuantidade.Text);
                                                     //consulta o consumo de tecido do produto
                                                     Dm1.ConsE075DerConsTec.Close;
                                                     Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.ConsE075DerConsTec.Open;
                                                     if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                                        begin//13
                                                           Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * StrToInt(EdQuantidade.Text));
                                                        end//13
                                                     else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                                        begin//14
                                                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * StrToInt(EdQuantidade.Text));
                                                            Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value + (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * StrToInt(EdQuantidade.Text));
                                                        end//14
                                                     else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                        begin//15
                                                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * StrToInt(EdQuantidade.Text));
                                                            Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value + (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * StrToInt(EdQuantidade.Text));
                                                        end;//15
                                                     if Dm1.CadUsu_TCorCarUSU_QTDPED.Value =  Dm1.CadUsu_TCorCarUSU_QTDABE.Value then
                                                        Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N'
                                                     else
                                                        Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'P';
                                                     Dm1.CadUsu_TCorCar.Post;
                                                  end//12
                                               else
                                                  begin//16
                                                     Dm1.CadUsu_TCorCar.Open;
                                                     Dm1.CadUsu_TCorCar.Insert;
                                                     Dm1.CadUsu_TCorCarUSU_NUMANE.Value := StrToInt(EdCarga.Text);
                                                     Dm1.CadUsu_TCorCarUSU_CODPRO.Value := EdProduto.Text;
                                                     Dm1.CadUsu_TCorCarUSU_CODDER.Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TCorCarUSU_CODCOR1.Value := EdCor01.Text;
                                                     Dm1.CadUsu_TCorCarUSU_CODCOR2.Value := vaCodCor2;
                                                     Dm1.CadUsu_TCorCarUSU_QTDPED.Value := StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := 0;
                                                     Dm1.CadUsu_TCorCarUSU_QTDABE.Value := StrToInt(EdQuantidade.Text);
                                                     if EdTipComb.ItemIndex = 0 then
                                                        Dm1.CadUsu_TCorCarUSU_TIPCOM.Value := 1
                                                     else if EdTipComb.ItemIndex = 1 then
                                                          Dm1.CadUsu_TCorCarUSU_TIPCOM.Value := 2
                                                          else if EdTipComb.ItemIndex = 2 then
                                                               Dm1.CadUsu_TCorCarUSU_TIPCOM.Value := 3;
                                                    Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N';
                                                    //consulta o consumo de tecido do produto
                                                     Dm1.ConsE075DerConsTec.Close;
                                                     Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.ConsE075DerConsTec.Open;
                                                     if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                                        begin//17
                                                           Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CORUNI.Value * StrToInt(EdQuantidade.Text);
                                                           Dm1.CadUsu_TCorCarUSU_SALABE2.Value := 0;
                                                        end//17
                                                     else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                                        begin//18
                                                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * StrToInt(EdQuantidade.Text);
                                                            Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * StrToInt(EdQuantidade.Text);
                                                        end//18
                                                     else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                        begin//19
                                                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * StrToInt(EdQuantidade.Text);
                                                            Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * StrToInt(EdQuantidade.Text);
                                                        end;//19

                                                     Dm1.CadUsu_TCorCar.Post;
                                                  end;//16
   //----------------------------------------------------------------------------------------------------------------------------------------
                                                  //gera o log para transferencia do tecido do deposito 1001 para o 1001.1

                                                  //consulta o consumo de tecido do produto
                                                  Dm1.ConsE075DerConsTec.Close;
                                                  Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                  Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                  Dm1.ConsE075DerConsTec.Open;

                                                  if EdTipComb.ItemIndex = 0 then
                                                     begin//13
                                                        Dm1.SeqUsu_TLogBax.Close;
                                                        Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor01.Text);
                                                        Dm1.SeqUsu_TLogBax.Open;
                                                        if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                           vnSeqLog := 1
                                                        else
                                                           vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                        Dm1.CadUsu_TLogBax.Open;
                                                        Dm1.CadUsu_TLogBax.Insert;
                                                        Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                        Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor01.Text);
                                                        Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CORUNI.Value;
                                                        Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                        Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                                                        Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001 --> 1001.1 ';
                                                        Dm1.CadUsu_TLogBax.Post;
                                                     end//13
                                                   else
                                                     if EdTipComb.ItemIndex = 1 then
                                                      begin//14
                                                          //com a cor 001
                                                          Dm1.SeqUsu_TLogBax.Close;
                                                          Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor01.Text);
                                                          Dm1.SeqUsu_TLogBax.Open;
                                                          if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                             vnSeqLog := 1
                                                          else
                                                             vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                          Dm1.CadUsu_TLogBax.Open;
                                                          Dm1.CadUsu_TLogBax.Insert;
                                                          Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                          Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor01.Text);
                                                          Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP1BB.Value;
                                                          Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                          Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                                                          Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001 --> 1001.1 ';
                                                          Dm1.CadUsu_TLogBax.Post;

                                                          //com a cor 002
                                                          Dm1.SeqUsu_TLogBax.Close;
                                                          Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor02.Text);
                                                          Dm1.SeqUsu_TLogBax.Open;
                                                          if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                             vnSeqLog := 1
                                                          else
                                                             vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                          Dm1.CadUsu_TLogBax.Open;
                                                          Dm1.CadUsu_TLogBax.Insert;
                                                          Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                          Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor02.Text);
                                                          Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP1AE.Value;
                                                          Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                          Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                                                          Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001 --> 1001.1 ';
                                                          Dm1.CadUsu_TLogBax.Post;
                                                      end//14
                                                    else
                                                      if EdTipComb.ItemIndex = 2 then
                                                       begin//15
                                                           //com a cor 001
                                                           Dm1.SeqUsu_TLogBax.Close;
                                                           Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor01.Text);
                                                           Dm1.SeqUsu_TLogBax.Open;
                                                           if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                              vnSeqLog := 1
                                                           else
                                                              vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                           Dm1.CadUsu_TLogBax.Open;
                                                           Dm1.CadUsu_TLogBax.Insert;
                                                           Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                           Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor01.Text);
                                                           Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP2BB.Value;
                                                           Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                           Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                                                           Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001 --> 1001.1 ';
                                                           Dm1.CadUsu_TLogBax.Post;

                                                           //com a cor 002
                                                           Dm1.SeqUsu_TLogBax.Close;
                                                           Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor02.Text);
                                                           Dm1.SeqUsu_TLogBax.Open;
                                                           if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                              vnSeqLog := 1
                                                           else
                                                              vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                           Dm1.CadUsu_TLogBax.Open;
                                                           Dm1.CadUsu_TLogBax.Insert;
                                                           Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                           Dm1.CadUsu_TLogBaxUSU_CODPRO.Value :=  trim(EdCor02.Text);
                                                           Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP2EN.Value;
                                                           Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                           Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'E';
                                                           Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001 --> 1001.1 ';
                                                           Dm1.CadUsu_TLogBax.Post;
                                                       end;//15  termina aqui a transferencia do tecido para o deposito 1001.1


  //-----------------------------------------------------------------------------------------------------------------------------------------


                                                  //veririca se existe saldo geral do produto se existir atualiza o saldo se nao insere
                                                  Dm1.CadUsu_TSalPro.Close;
                                                  Dm1.CadUsu_TSalPro.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                  Dm1.CadUsu_TSalPro.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                  Dm1.CadUsu_TSalPro.Open;
                                                  if not Dm1.CadUsu_TSalPro.IsEmpty then
                                                     begin//20
                                                        Dm1.CadUsu_TSalPro.Edit;
                                                        Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value + StrToInt(EdQuantidade.Text);
                                                        Dm1.CadUsu_TSalPro.Post;
                                                     end//20
                                                  else
                                                     begin//21
                                                        Dm1.CadUsu_TSalPro.Insert;
                                                        Dm1.CadUsu_TSalProUSU_CODPRO.Value := EdProduto.Text;
                                                        Dm1.CadUsu_TSalProUSU_CODDER.Value := EdDerivacao.Text;
                                                        Dm1.CadUsu_TSalProUSU_QTDABE.Value := StrToInt(EdQuantidade.Text);
                                                        Dm1.CadUsu_TSalPro.Post;
                                                     end;//21
                                                  //verifica se existe a cor do saldo geral de produtos se existir atualiza se nao insere
                                                  Dm1.CadUsu_TCorSal.Close;
                                                  Dm1.CadUsu_TCorSal.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                  Dm1.CadUsu_TCorSal.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                  Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor1').Value := EdCor01.Text;
                                                  Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                                  Dm1.CadUsu_TCorSal.Open;
                                                  if not Dm1.CadUsu_TCorSal.IsEmpty then
                                                     begin//22
                                                       Dm1.CadUsu_TCorSal.Edit;
                                                       Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.CadUsu_TCorSalUSU_QTDABE.Value + StrToInt(EdQuantidade.Text);
                                                       Dm1.CadUsu_TCorSal.Post;
                                                     end//22
                                                  else
                                                     begin//23
                                                        Dm1.CadUsu_TCorSal.Insert;
                                                        Dm1.CadUsu_TCorSalUSU_CODPRO.Value := EdProduto.Text;
                                                        Dm1.CadUsu_TCorSalUSU_CODDER.Value := EdDerivacao.Text;
                                                        Dm1.CadUsu_TCorSalUSU_CODCOR1.Value := EdCor01.Text;
                                                        Dm1.CadUsu_TCorSalUSU_CODCOR2.Value := vaCodCor2;
                                                        Dm1.CadUsu_TCorSalUSU_QTDABE.Value := StrToInt(EdQuantidade.Text);
                                                        if EdTipComb.ItemIndex = 0 then
                                                           Dm1.CadUsu_TCorSalUSU_TIPCOM.Value := 1
                                                        else if EdTipComb.ItemIndex = 1 then
                                                                Dm1.CadUsu_TCorSalUSU_TIPCOM.Value := 2
                                                             else if EdTipComb.ItemIndex = 2 then
                                                                   Dm1.CadUsu_TCorSalUSU_TIPCOM.Value := 3;
                                                        Dm1.CadUsu_TCorSal.Post;
                                                     end;//23
                                                   //se a carga ja estiver produzida muda a situa�ao para nao produzida
                                                   Dm1.CadUsu_TCarPro2.Close;
                                                   Dm1.CadUsu_TCarPro2.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                   Dm1.CadUsu_TCarPro2.Open;
                                                   if Dm1.CadUsu_TCarPro2USU_CARPRO.Value = 'S' then
                                                      begin//24
                                                         Dm1.CadUsu_TCarPro2.Edit;
                                                         Dm1.CadUsu_TCarPro2USU_CARPRO.Value := 'N';
                                                         Dm1.CadUsu_TCarPro2.Post;
                                                         //atualiza a consulta das cargas em produao
                                                         Dm1.ConsUsu_TCarPro.Close;
                                                         Dm1.ConsUsu_TCarPro.Open;
                                                      end//24
                                                   else
                                                       begin//25
                                                          dm1.ConsUsu_TProCar.Close;
                                                          dm1.ConsUsu_TProCar.SQL.Clear;
                                                          dm1.ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
                                                          dm1.ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
                                                          dm1.ConsUsu_TProCar.SQL.Add('where');
                                                          dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane and');
                                                          dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
                                                          dm1.ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
                                                          dm1.ConsUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                          dm1.ConsUsu_TProCar.Open;
                                                      end;//25
                                                      Application.MessageBox('Produdo Incluido com Sucesso!','Aviso', MB_ICONWARNING+MB_OK);
                                                      EdCarga.Clear;
                                                      EdProduto.Clear;
                                                      LDsProduto.Caption := '';
                                                      EdDerivacao.Clear;
                                                      EdQuantidade.Clear;
                                                      EdCor01.Clear;
                                                      EdCor02.Clear;
                                            end;//9
                                      end;//8
   end//1
else if RExcluir.Checked = true then
   begin//26
    if EdCarga.Text = '' then
             begin//27
                Application.MessageBox('Informe a Carga','Aviso', MB_ICONWARNING+MB_OK);
                EdCarga.SetFocus;
             end//27
          else if EdProduto.Text = '' then
                  begin//28
                     Application.MessageBox('Informe o Produto','Aviso', MB_ICONWARNING+MB_OK);
                     EdProduto.SetFocus;
                  end//28
               else if EdDerivacao.Text = '' then
                       begin//29
                          Application.MessageBox('Informe a Deriva��o','Aviso', MB_ICONWARNING+MB_OK);
                          EdDerivacao.SetFocus;
                       end//29
                    else if EdQuantidade.Text = '' then
                            begin//30
                               Application.MessageBox('Informe a Quantidade','Aviso', MB_ICONWARNING+MB_OK);
                               EdQuantidade.SetFocus;
                            end//30
                         else if EdCor01.Text = '' then
                                 begin//31
                                    Application.MessageBox('Informe a Cor 01','Aviso', MB_ICONWARNING+MB_OK);
                                    EdCor01.SetFocus;
                                 end//31
                              else if ((EdTipComb.ItemIndex = 1) or (EdTipComb.ItemIndex = 2)) and (EdCor02.Text = '') then
                                     begin//32
                                       Application.MessageBox('Informe a Cor 02','Aviso', MB_ICONWARNING+MB_OK);
                                       EdCor02.SetFocus;
                                     end//32
                                   else
                                      begin//33
                                      //valida se existe o produto/derivacao com as cores para ser excluido
                                         if EdCor02.Text = '' then
                                            vaCodCor2 := ' '
                                         else
                                            vaCodCor2 := EdCor02.Text;
                                         SeExisteUsu_TCorCar.Close;
                                         SeExisteUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                         SeExisteUsu_TCorCar.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                         SeExisteUsu_TCorCar.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                         SeExisteUsu_TCorCar.Parameters.ParamByName('codcor1').Value := EdCor01.Text;
                                         SeExisteUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                         SeExisteUsu_TCorCar.Open;
                                         if SeExisteUsu_TCorCar.IsEmpty  then
                                            begin//34
                                              Application.MessageBox('Combina��o de cores com o produto n�o encontrado','Aviso', MB_ICONWARNING+MB_OK);
                                            end//34
                                         else
                                            begin//35
                                              if SeExisteUsu_TCorCarUSU_QTDABE.Value < StrToInt(EdQuantidade.Text) then
                                                 begin//36
                                                    Application.MessageBox('Quantidade informada maior do que a quantidade em aberto','Aviso', MB_ICONWARNING+MB_OK);
                                                    EdQuantidade.SetFocus;
                                                 end//36
                                              else
                                                begin//37
                                                     //atualiza a quantidade de produtos usu_tprocar
                                                     Dm1.CadUsu_TProCar.Close;
                                                     Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                     Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TProCar.Open;
                                                     Dm1.CadUsu_TProCar.Edit;
                                                     Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value - StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDABE.Value - StrToInt(EdQuantidade.Text);
                                                     if Dm1.CadUsu_TProCarUSU_QTDABE.Value = Dm1.CadUsu_TProCarUSU_QTDPED.Value then
                                                        Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N'
                                                     else
                                                        Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'P';
                                                     Dm1.CadUsu_TProCar.Post;
                                                     //se a quantidade pedida ficar zerado apaga o registro
                                                     if Dm1.CadUsu_TProCarUSU_QTDPED.Value = 0 then
                                                        Dm1.CadUsu_TProCar.Delete;

                                                      //atualiza as cores
                                                     Dm1.CadUsu_TCorCar.Close;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := EdCor01.Text;
                                                     Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                                     Dm1.CadUsu_TCorCar.Open;
                                                     Dm1.CadUsu_TCorCar.Edit;
                                                     Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value - StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value - StrToInt(EdQuantidade.Text);
                                                     //consulta o consumo de tecido do produto
                                                     Dm1.ConsE075DerConsTec.Close;
                                                     Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.ConsE075DerConsTec.Open;
                                                     if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                                        begin//38
                                                           Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * StrToInt(EdQuantidade.Text));
                                                        end//38
                                                     else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                                        begin//39
                                                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * StrToInt(EdQuantidade.Text));
                                                            Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value - (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * StrToInt(EdQuantidade.Text));
                                                        end//39
                                                     else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                        begin//40
                                                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * StrToInt(EdQuantidade.Text));
                                                            Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value - (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * StrToInt(EdQuantidade.Text));
                                                        end;//40
                                                     if Dm1.CadUsu_TCorCarUSU_QTDPED.Value =  Dm1.CadUsu_TCorCarUSU_QTDABE.Value then
                                                        Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N'
                                                     else
                                                        Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'P';
                                                     Dm1.CadUsu_TCorCar.Post;
                                                     //se q quantidade pedida da cor ficar zerada apaga o registro
                                                     if Dm1.CadUsu_TCorCarUSU_QTDPED.Value = 0 then
                                                        Dm1.CadUsu_TCorCar.Delete;

                                                     //atualiza o saldo geral do produto
                                                     Dm1.CadUsu_TSalPro.Close;
                                                     Dm1.CadUsu_TSalPro.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.CadUsu_TSalPro.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TSalPro.Open;
                                                     Dm1.CadUsu_TSalPro.Edit;
                                                     Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value - StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TSalPro.Post;
                                                     if Dm1.CadUsu_TSalProUSU_QTDABE.Value = 0 then
                                                        begin//41
                                                           Dm1.CadUsu_TSalPro.Delete;
                                                        end;//41

                                                     //verifica se existe a cor do saldo geral, se o saldo ficar igual a zero apaga o registro
                                                     Dm1.CadUsu_TCorSal.Close;
                                                     Dm1.CadUsu_TCorSal.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                     Dm1.CadUsu_TCorSal.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                     Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor1').Value := EdCor01.Text;
                                                     Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor2').Value := vaCodCor2;
                                                     Dm1.CadUsu_TCorSal.Open;
                                                     Dm1.CadUsu_TCorSal.Edit;
                                                     Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.CadUsu_TCorSalUSU_QTDABE.Value - StrToInt(EdQuantidade.Text);
                                                     Dm1.CadUsu_TCorSal.Post;
                                                     if Dm1.CadUsu_TCorSalUSU_QTDABE.Value = 0 then
                                                        begin//42
                                                          Dm1.CadUsu_TCorSal.Delete;
                                                        end;//42


//----------------------------------------------------------------------------------------------------------------------------------------
                                                  //gera o log para transferencia do tecido do deposito 1001.1 para o 1001

                                                  //consulta o consumo de tecido do produto
                                                  Dm1.ConsE075DerConsTec.Close;
                                                  Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := EdProduto.Text;
                                                  Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := EdDerivacao.Text;
                                                  Dm1.ConsE075DerConsTec.Open;

                                                  if EdTipComb.ItemIndex = 0 then
                                                     begin//13
                                                        Dm1.SeqUsu_TLogBax.Close;
                                                        Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor01.Text);
                                                        Dm1.SeqUsu_TLogBax.Open;
                                                        if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                           vnSeqLog := 1
                                                        else
                                                           vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                        Dm1.CadUsu_TLogBax.Open;
                                                        Dm1.CadUsu_TLogBax.Insert;
                                                        Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                        Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor01.Text);
                                                        Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CORUNI.Value;
                                                        Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                        Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                                        Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001.1 --> 1001 ';
                                                        Dm1.CadUsu_TLogBax.Post;
                                                     end//13
                                                   else
                                                     if EdTipComb.ItemIndex = 1 then
                                                      begin//14
                                                          //com a cor 001
                                                          Dm1.SeqUsu_TLogBax.Close;
                                                          Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor01.Text);
                                                          Dm1.SeqUsu_TLogBax.Open;
                                                          if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                             vnSeqLog := 1
                                                          else
                                                             vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                          Dm1.CadUsu_TLogBax.Open;
                                                          Dm1.CadUsu_TLogBax.Insert;
                                                          Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                          Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor01.Text);
                                                          Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP1BB.Value;
                                                          Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                          Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                                          Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001.1 --> 1001 ';
                                                          Dm1.CadUsu_TLogBax.Post;

                                                          //com a cor 002
                                                          Dm1.SeqUsu_TLogBax.Close;
                                                          Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor02.Text);
                                                          Dm1.SeqUsu_TLogBax.Open;
                                                          if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                             vnSeqLog := 1
                                                          else
                                                             vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                          Dm1.CadUsu_TLogBax.Open;
                                                          Dm1.CadUsu_TLogBax.Insert;
                                                          Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                          Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor02.Text);
                                                          Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP1AE.Value;
                                                          Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                          Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                                          Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001.1 --> 1001 ';
                                                          Dm1.CadUsu_TLogBax.Post;
                                                      end//14
                                                    else
                                                      if EdTipComb.ItemIndex = 2 then
                                                       begin//15
                                                           //com a cor 001
                                                           Dm1.SeqUsu_TLogBax.Close;
                                                           Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor01.Text);
                                                           Dm1.SeqUsu_TLogBax.Open;
                                                           if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                              vnSeqLog := 1
                                                           else
                                                              vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                           Dm1.CadUsu_TLogBax.Open;
                                                           Dm1.CadUsu_TLogBax.Insert;
                                                           Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                           Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := trim(EdCor01.Text);
                                                           Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP2BB.Value;
                                                           Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                           Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                                           Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001.1 --> 1001 ';
                                                           Dm1.CadUsu_TLogBax.Post;

                                                           //com a cor 002
                                                           Dm1.SeqUsu_TLogBax.Close;
                                                           Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := trim(EdCor02.Text);
                                                           Dm1.SeqUsu_TLogBax.Open;
                                                           if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                              vnSeqLog := 1
                                                           else
                                                              vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                                           Dm1.CadUsu_TLogBax.Open;
                                                           Dm1.CadUsu_TLogBax.Insert;
                                                           Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                                           Dm1.CadUsu_TLogBaxUSU_CODPRO.Value :=  trim(EdCor02.Text);
                                                           Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (StrToInt(trim(EdQuantidade.Text))) * Dm1.ConsE075DerConsTecUSU_CMP2EN.Value;
                                                           Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                                           Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                                           Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'TRANSFERIR 1001.1 --> 1001 ';
                                                           Dm1.CadUsu_TLogBax.Post;
                                                       end;//15  termina aqui a transferencia do tecido para o deposito 1001.1


  //-----------------------------------------------------------------------------------------------------------------------------------------


                                                    //atualiza a consulta dos produtos da carga se todos os produtos ja estiverem
                                                    //produzidos muda a situal�ao da carga para produzido
                                                   dm1.ConsUsu_TProCar.Close;
                                                   dm1.ConsUsu_TProCar.SQL.Clear;
                                                   dm1.ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
                                                   dm1.ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
                                                   dm1.ConsUsu_TProCar.SQL.Add('where');
                                                   dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane and');
                                                   dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
                                                   dm1.ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
                                                   dm1.ConsUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                   dm1.ConsUsu_TProCar.Open;
                                                   if dm1.ConsUsu_TProCar.IsEmpty then
                                                      begin//43
                                                         Dm1.CadUsu_TCarPro2.Close;
                                                         Dm1.CadUsu_TCarPro2.Parameters.ParamByName('numane').Value := StrToInt(EdCarga.Text);
                                                         Dm1.CadUsu_TCarPro2.Open;
                                                         Dm1.CadUsu_TCarPro2.Edit;
                                                         Dm1.CadUsu_TCarPro2USU_CARPRO.Value := 'S';
                                                         Dm1.CadUsu_TCarPro2.Post;
                                                         //atualiza a consulta das cargas em produao
                                                         Dm1.ConsUsu_TCarPro.Close;
                                                         Dm1.ConsUsu_TCarPro.Open;
                                                      end;//43

                                                      Application.MessageBox('Produdo Exclu�do com Sucesso!','Aviso', MB_ICONWARNING+MB_OK);
                                                      EdCarga.Clear;
                                                      EdProduto.Clear;
                                                      LDsProduto.Caption := '';
                                                      EdDerivacao.Clear;
                                                      EdQuantidade.Clear;
                                                      EdCor01.Clear;
                                                      EdCor02.Clear;
                                                end;//37
                                            end;//35
                                      end;//33



   end;//26


end;

procedure TFAlteraProdCarCorte.EdCor01Exit(Sender: TObject);
begin
    if EdCor01.Text <> '' then
        begin
          ValidaCor.Close;
          ValidaCor.Parameters.ParamByName('codpro').Value := EdCor01.Text;
          ValidaCor.Open;
          if ValidaCor.IsEmpty then
             begin
                Application.MessageBox('Cor n�o encontrada.','Aviso', MB_ICONWARNING+MB_OK);
                EdCor01.Clear;
                EdCor01.SetFocus;
             end;
        end;
end;

procedure TFAlteraProdCarCorte.EdCor02Exit(Sender: TObject);
begin
if EdCor02.Text <> '' then
        begin
          ValidaCor.Close;
          ValidaCor.Parameters.ParamByName('codpro').Value := EdCor02.Text;
          ValidaCor.Open;
          if ValidaCor.IsEmpty then
             begin
                Application.MessageBox('Cor n�o encontrada.','Aviso', MB_ICONWARNING+MB_OK);
                EdCor02.Clear;
                EdCor02.SetFocus;
             end;
        end;
end;

procedure TFAlteraProdCarCorte.FormShow(Sender: TObject);
begin
  FPrincipal.GravaTela(FAlteraProdCarCorte.Name,FPrincipal.vnCodCon);

  if trim(EdProduto.Text) <> '' then
     begin
        EdProdutoExit(Sender);
     end;

    EdTipCombExit(Sender);
end;

procedure TFAlteraProdCarCorte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FPrincipal.ApagaTela(FAlteraProdCarCorte.Name,FPrincipal.vnCodCon);
end;

end.
