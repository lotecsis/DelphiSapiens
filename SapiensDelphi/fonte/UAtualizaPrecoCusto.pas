unit UAtualizaPrecoCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, UDm2, Mask, rxToolEdit,
  UDm, DB, ADODB, rxCurrEdit, Math;

type
  TFAtualizaPrecoCusto = class(TForm)
    DBGrid1: TDBGrid;
    BAtualiza: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdDatIni: TDateEdit;
    EdDatFim: TDateEdit;
    LDsAcao: TLabel;
    LDsProduto: TLabel;
    ConsUsu_TSalCus: TADOQuery;
    ConsUsu_TSalCusUSU_CODPRO: TStringField;
    ConsUsu_TSalCusUSU_CODDER: TStringField;
    ConsUsu_TSalCusUSU_QTDPRO: TIntegerField;
    ConsUsu_TSalCusUSU_PREUNI: TBCDField;
    ConsUsu_TSalCusUSU_PRETOT: TBCDField;
    ConsUsu_TSalCusUSU_PERREP: TBCDField;
    ConsUsu_TSalCusDESPRO: TStringField;
    ConsUsu_TSalCusPRECUS: TFMTBCDField;
    DsConsUsu_TSalCus: TDataSource;
    ApagaUsu_TSalCus: TADOQuery;
    EdCusTot: TCurrencyEdit;
    ConsE140Ipv: TADOQuery;
    ConsE140IpvCODPRO: TStringField;
    ConsE140IpvCODDER: TStringField;
    ConsE140IpvPREUNI: TFMTBCDField;
    ConsE140IpvDATEMI: TDateTimeField;
    ConsE140IpvVENFAT: TStringField;
    ConsE075Der: TADOQuery;
    ConsE075DerCODPRO: TStringField;
    ConsE075DerCODDER: TStringField;
    ConsE075DerPRECUS: TFMTBCDField;
    Label4: TLabel;
    ConsUsu_TSalCusUSU_CUSATU: TBCDField;
    ApagaUsu_TSalCusUSU_CODPRO: TStringField;
    ApagaUsu_TSalCusUSU_CODDER: TStringField;
    ApagaUsu_TSalCusUSU_QTDPRO: TIntegerField;
    ApagaUsu_TSalCusUSU_PREUNI: TBCDField;
    ApagaUsu_TSalCusUSU_PRETOT: TBCDField;
    ApagaUsu_TSalCusUSU_PERREP: TBCDField;
    ApagaUsu_TSalCusUSU_CUSATU: TBCDField;
    procedure BAtualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualizaPrecoCusto: TFAtualizaPrecoCusto;

implementation

{$R *.dfm}

procedure TFAtualizaPrecoCusto.BAtualizaClick(Sender: TObject);
var vnPreUni, vnTabTot, vnPerRep, vnTotMP, vnPreCus : Real;
begin
  if EdDatIni.Date = 0 then
      begin
        Application.MessageBox('Informe a Data Inicial','Aviso',MB_ICONWARNING+MB_OK);
        ActiveControl := EdDatIni;
      end
  else if EdDatFim.Date = 0  then
         begin
           Application.MessageBox('Informe a Data Final','Aviso',MB_ICONWARNING+MB_OK);
           ActiveControl := EdDatFim;
         end
      else
       if EdCusTot.Value = 0  then
         begin
           Application.MessageBox('Informe o Custo Total','Aviso',MB_ICONWARNING+MB_OK);
           ActiveControl := EdCusTot;
         end
      else
         begin//1
           //apaga os registros da tabela usu_tsalcus
           LDsAcao.Caption := 'Apagando registros da tabela usu_tsalcus...';
           Refresh;
           ApagaUsu_TSalCus.Close;
           ApagaUsu_TSalCus.Open;
           while not ApagaUsu_TSalCus.Eof do
             begin
               ApagaUsu_TSalCus.Delete;
             end;

            vnTabTot := 0;//variavel para somar o valor dos produtos no movimento pela tabela de preço
           //percorre todos os movimentos
           LDsAcao.Caption := 'Consultando movimentos dos produtos produzidos...';
           Refresh;
           Dm2.ConsE210Mvp.Close;
           Dm2.ConsE210Mvp.Parameters.ParamByName('DatIni').Value := EdDatIni.Date;
           Dm2.ConsE210Mvp.Parameters.ParamByName('DatFim').Value := EdDatFim.Date;
           Dm2.ConsE210Mvp.Open;
           LDsAcao.Caption := 'Percorrendo os movimentos encontrados...';
           Refresh;
           while not Dm2.ConsE210Mvp.Eof do
              begin//2
                //consulta se existe o produto na tabela usu_tsalcus se existir atualiza
                //a quantidade se nao insere o registro
                Dm2.cadusu_tsalcus.Close;
                Dm2.cadusu_tsalcus.Parameters.ParamByName('codpro').Value := Dm2.ConsE210MvpCODPRO.Value;
                Dm2.cadusu_tsalcus.Parameters.ParamByName('codder').Value := Dm2.ConsE210MvpCODDER.Value;
                Dm2.cadusu_tsalcus.Open;
                if not Dm2.cadusu_tsalcus.IsEmpty then
                   begin//3
                      LDsProduto.Caption := 'Atualizado saldo do produto..: '+Dm2.ConsE210MvpCODPRO.Value+' na tabela usu_tsalcus...';
                      Refresh;
                     Dm2.cadusu_tsalcus.Edit;
                     vnTabTot :=  RoundTo(vnTabTot + (Dm2.ConsE210MvpQTDMOV.AsInteger * Dm2.CadUsu_TSalCusUSU_PREUNI.Value),-5);
                     Dm2.CadUsu_TSalCusUSU_PRETOT.Value := RoundTo(Dm2.CadUsu_TSalCusUSU_PRETOT.Value + (Dm2.ConsE210MvpQTDMOV.AsInteger * Dm2.CadUsu_TSalCusUSU_PREUNI.Value ),-5);
                     Dm2.CadUsu_TSalCusUSU_QTDPRO.Value :=  Dm2.CadUsu_TSalCusUSU_QTDPRO.Value + Dm2.ConsE210MvpQTDMOV.AsInteger;
                     Dm2.cadusu_tsalcus.Post;
                   end//3
                else
                   begin
                    //consulta o maior preço faturado do produto
                    ConsE140Ipv.Close;
                    ConsE140Ipv.Parameters.ParamByName('DatIni').Value := EdDatIni.Date;
                    ConsE140Ipv.Parameters.ParamByName('DatFim').Value := EdDatFim.Date;
                    ConsE140Ipv.Parameters.ParamByName('CodPro').Value := dm2.ConsE210MvpCODPRO.AsString;
                    //ConsE140Ipv.Parameters.ParamByName('CodPro').Value := '999999999';
                    ConsE140Ipv.Parameters.ParamByName('CodDer').Value := dm2.ConsE210MvpCODDER.AsString;
                    ConsE140Ipv.Open;
                    if not ConsE140Ipv.IsEmpty then
                       begin
                          vnPreUni := ConsE140IpvPREUNI.AsCurrency;
                       end
                    else
                     begin

                       //se nao achou nenhum faturamento para o produto
                       // consulta o preço do produto na tabela de preço
                       //primeiro na tabela principal a 0001 se nao achar procura nas outras

                       LDsProduto.Caption := 'Consultando preço do produto..: '+Dm2.ConsE210MvpCODPRO.Value+' na tabela de preço...';
                        Refresh;
                       Dm2.ConsE081Itp.Close;
                       Dm2.ConsE081Itp.Parameters.ParamByName('codpro').Value := dm2.ConsE210MvpCODPRO.AsString;
                       Dm2.ConsE081Itp.Parameters.ParamByName('codder').Value := dm2.ConsE210MvpCODDER.AsString;
                       Dm2.ConsE081Itp.Parameters.ParamByName('codtpr').Value := '1000';
                       Dm2.ConsE081Itp.Parameters.ParamByName('datini').Value := '04/10/2017';
                       Dm2.ConsE081Itp.Open;
                       if not Dm2.ConsE081Itp.IsEmpty then
                         begin
                            vnPreUni := RoundTo(Dm2.ConsE081ItpPREBAS.AsCurrency,-5);
                         end
                       else
                         begin
                            Dm2.ConsE081Itp.Close;
                            Dm2.ConsE081Itp.Parameters.ParamByName('codpro').Value := dm2.ConsE210MvpCODPRO.AsString;
                            Dm2.ConsE081Itp.Parameters.ParamByName('codder').Value := dm2.ConsE210MvpCODDER.AsString;
                            Dm2.ConsE081Itp.Parameters.ParamByName('codtpr').Value := '0002';
                            Dm2.ConsE081Itp.Parameters.ParamByName('datini').Value := '19/11/2009';
                            Dm2.ConsE081Itp.Open;
                            if not Dm2.ConsE081Itp.IsEmpty then
                              begin
                                vnPreUni := RoundTo(Dm2.ConsE081ItpPREBAS.AsCurrency,-5);
                              end
                            else
                              begin
                                 Dm2.ConsE081Itp.Close;
                                 Dm2.ConsE081Itp.Parameters.ParamByName('codpro').Value := dm2.ConsE210MvpCODPRO.AsString;
                                 Dm2.ConsE081Itp.Parameters.ParamByName('codder').Value := dm2.ConsE210MvpCODDER.AsString;
                                 Dm2.ConsE081Itp.Parameters.ParamByName('codtpr').Value := '0004';
                                 Dm2.ConsE081Itp.Parameters.ParamByName('datini').Value := '01/03/2010';
                                 Dm2.ConsE081Itp.Open;
                                 if not Dm2.ConsE081Itp.IsEmpty then
                                   begin
                                     vnPreUni := RoundTo(Dm2.ConsE081ItpPREBAS.AsCurrency,-5);
                                   end
                                 else
                                   begin
                                      Dm2.ConsE081Itp.Close;
                                      Dm2.ConsE081Itp.Parameters.ParamByName('codpro').Value := dm2.ConsE210MvpCODPRO.AsString;
                                      Dm2.ConsE081Itp.Parameters.ParamByName('codder').Value := dm2.ConsE210MvpCODDER.AsString;
                                      Dm2.ConsE081Itp.Parameters.ParamByName('codtpr').Value := '0005';
                                      Dm2.ConsE081Itp.Parameters.ParamByName('datini').Value := '01/04/2010';
                                      Dm2.ConsE081Itp.Open;
                                      if not Dm2.ConsE081Itp.IsEmpty then
                                        begin//11
                                          vnPreUni := Dm2.ConsE081ItpPREBAS.AsCurrency;
                                        end
                                      else
                                        begin
                                          ShowMessage('nao achou');
                                        end;

                                   end;//10
                              end;//8
                         end;//6  fim da consulta na tabela de preço

                     end;//14

                       LDsProduto.Caption := 'Gravando saldo do produto..: '+Dm2.ConsE210MvpCODPRO.Value+' na tabela usu_tsalcus...';
                      Refresh;
                     Dm2.cadusu_tsalcus.Insert;
                     Dm2.CadUsu_TSalCusUSU_CODPRO.Value := Dm2.ConsE210MvpCODPRO.Value;
                     Dm2.CadUsu_TSalCusUSU_CODDER.Value := Dm2.ConsE210MvpCODDER.Value;
                     Dm2.CadUsu_TSalCusUSU_QTDPRO.Value := Dm2.ConsE210MvpQTDMOV.AsInteger;
                     Dm2.CadUsu_TSalCusUSU_PREUNI.Value := RoundTo(vnPreUni,-5);
                     Dm2.CadUsu_TSalCusUSU_PRETOT.Value := Dm2.ConsE210MvpQTDMOV.AsInteger * vnPreUni;
                     vnTabTot := RoundTo(vnTabTot + Dm2.CadUsu_TSalCusUSU_PRETOT.Value,-5);
                     //consulta o preço antes de ser atualizado
                     ConsE075Der.Close;
                     ConsE075Der.Parameters.ParamByName('codpro').Value := Dm2.ConsE210MvpCODPRO.AsString;
                     ConsE075Der.Parameters.ParamByName('codder').Value := Dm2.ConsE210MvpCODDER.AsString;
                     ConsE075Der.Open;
                     Dm2.CadUsu_TSalCusUSU_CUSATU.Value := ConsE075DerPRECUS.AsCurrency;

                     Dm2.cadusu_tsalcus.Post;
                   end;//4
                Dm2.ConsE210Mvp.Next;
              end;//2


              //pega o custo total para produção dos produtos
              vnTotMP := EdCusTot.Value;

              //percorre a tabela usu_tsalcus para calcular o % que cada um representa no vnTabTot
              //e grava o valor no memso
              LDsAcao.Caption := 'Percorrendo os produtos para calcular seu percentual';
              Refresh;
              Dm2.ConsUsu_TSalCus.Close;
              Dm2.ConsUsu_TSalCus.Open;
              while not Dm2.ConsUsu_TSalCus.Eof do
                 begin//12
                    LDsAcao.Caption := 'Calculando % do produto..:'+Dm2.ConsUsu_TSalCusUSU_CODPRO.Value+'...';
                    Refresh;
                    vnPerRep := RoundTo((Dm2.ConsUsu_TSalCusUSU_PRETOT.Value * 100) / vnTabTot,-5);
                    Dm2.CadUsu_TSalCus.Close;
                    Dm2.CadUsu_TSalCus.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TSalCusUSU_CODPRO.AsString;
                    Dm2.CadUsu_TSalCus.Parameters.ParamByName('codder').Value := Dm2.ConsUsu_TSalCusUSU_CODDER.AsString;
                    Dm2.CadUsu_TSalCus.Open;
                    Dm2.CadUsu_TSalCus.Edit;
                    Dm2.CadUsu_TSalCusUSU_PERREP.Value := RoundTo(vnPerRep,-5);
                    Dm2.CadUsu_TSalCus.Post;
                    vnPreCus := RoundTo(((vnPerRep * vnTotMP)/100)/Dm2.ConsUsu_TSalCusUSU_QTDPRO.AsCurrency,-5);

                    LDsAcao.Caption := 'Atualizando Custo..';
                    LDsProduto.Caption := 'Produto..: '+Dm2.ConsUsu_TSalCusUSU_CODPRO.AsString;
                    Refresh;
                    //Atualiza o preço de custo do produto
                    Dm2.CadE075Der.Close;
                    Dm2.CadE075Der.Parameters.ParamByName('codemp').Value := 1;
                    Dm2.CadE075Der.Parameters.ParamByName('codpro').Value := Dm2.ConsUsu_TSalCusUSU_CODPRO.AsString;
                    Dm2.CadE075Der.Parameters.ParamByName('codder').Value := Dm2.ConsUsu_TSalCusUSU_CODDER.AsString;
                    Dm2.CadE075Der.Open;
                    Dm2.CadE075Der.Edit;
                    Dm2.CadE075DerPRECUS.AsCurrency := RoundTo(vnPreCus,-5);
                    Dm2.CadE075DerDATCUS.AsDateTime := Date;
                    Dm2.CadE075Der.Post;

                    Dm2.ConsUsu_TSalCus.Next;
                 end;//12
                 LDsAcao.Caption := '';
                 LDsProduto.Caption := '';

                 ConsUsu_TSalCus.Close;
                 ConsUsu_TSalCus.Open;

         end;//1
end;



procedure TFAtualizaPrecoCusto.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAtualizaPrecoCusto.FormShow(Sender: TObject);
begin
  ApagaUsu_TSalCus.Close;
  ApagaUsu_TSalCus.Open;
  while not ApagaUsu_TSalCus.Eof do
     begin
        ApagaUsu_TSalCus.Delete;
     end;
end;

end.
