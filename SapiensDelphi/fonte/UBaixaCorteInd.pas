unit UBaixaCorteInd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dbcgrids, Mask, DBCtrls, DB, ExtCtrls, Buttons;

type
  TFBaixaCorteInd = class(TForm)
    Panel1: TPanel;
    LNumAne: TLabel;
    LCodPro: TLabel;
    LCodDer: TLabel;
    LDesPro: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LQtdAbe: TLabel;
    Label7: TLabel;
    LQtdPedida: TLabel;
    DsCoresBaixaCorteInd: TDataSource;
    Panel2: TPanel;
    DBGeral: TDBCtrlGrid;
    DBECor01: TDBEdit;
    DBECor02: TDBEdit;
    DBEQtdAbe: TDBEdit;
    DBEQtdProd: TDBEdit;
    DBEQtdCor01: TDBEdit;
    DBEQtdCor02: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BConfirma: TBitBtn;
    Label11: TLabel;
    Label12: TLabel;
    BCancela: TBitBtn;
    DBESelIte: TDBEdit;
    DBESalAbe1: TDBEdit;
    DBESalAbe2: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    BMarcaTodos: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure DBEQtdProdExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGeralEnter(Sender: TObject);
    procedure DBGeralKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGeralStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure DBGeralKeyPress(Sender: TObject; var Key: Char);
    procedure BConfirmaClick(Sender: TObject);
    procedure DBGeralExit(Sender: TObject);
    procedure BCancelaClick(Sender: TObject);
    procedure DBEQtdProdKeyPress(Sender: TObject; var Key: Char);
    procedure DBESelIteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BMarcaTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBaixaCorteInd: TFBaixaCorteInd;
  vaMarcados : String;
implementation

uses UDm1, UPrincipal, DateUtils;

{$R *.dfm}

procedure TFBaixaCorteInd.FormShow(Sender: TObject);
begin
 FPrincipal.GravaTela(FBaixaCorteInd.Name,FPrincipal.vnCodCon);
 
    Dm1.ClientCoresBaixaCorteInd.Close;
    Dm1.CoresBaixaCorteInd.Close;
    Dm1.CoresBaixaCorteInd.Parameters.ParamByName('numane').Value := dm1.ConsUsu_TProCarUSU_NUMANE.Value;
    Dm1.CoresBaixaCorteInd.Parameters.ParamByName('codpro').Value := dm1.ConsUsu_TProCarUSU_CODPRO.Value;
    Dm1.CoresBaixaCorteInd.Parameters.ParamByName('codder').Value := dm1.ConsUsu_TProCarUSU_CODDER.Value;
    Dm1.CoresBaixaCorteInd.Open;
    Dm1.ClientCoresBaixaCorteInd.Open;

    Dm1.ClientCoresBaixaCorteInd.First;
    Dm1.ClientCoresBaixaCorteInd.Edit;
    while not Dm1.ClientCoresBaixaCorteInd.Eof do
       begin
         Dm1.ClientCoresBaixaCorteInd.Edit;
         Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_QTDABE.Value;
         Dm1.ClientCoresBaixaCorteInd.Post;
         Dm1.ClientCoresBaixaCorteInd.Next;
       end;

       DBGeral.SetFocus; 

       vaMarcados := 'N';
       BMarcaTodos.Click;
       BMarcaTodos.Click;
end;

procedure TFBaixaCorteInd.DBEQtdProdExit(Sender: TObject);
begin
  if DBEQtdProd.Field.Value > DBEQtdAbe.Field.Value then
    begin
      DBEQtdProd.SetFocus;
      DBEQtdProd.Clear;
      Application.MessageBox('Quantidade informada maior do que quantodade em aberto!!','Aviso', MB_ICONWARNING+MB_OK);
    end
  else
    begin
        //consulta o consumo de tecido do produto
        Dm1.ConsE075DerConsTec.Close;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODPRO.Value;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODDER.Value;
        Dm1.ConsE075DerConsTec.Open;
        Dm1.ClientCoresBaixaCorteInd.Edit;
        if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 1 then
           begin//7
               Dm1.ClientCoresBaixaCorteIndUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CORUNI.Value * DBEQtdProd.Field.Value;
           end//7
        else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 2 then
                 begin//8
                     Dm1.ClientCoresBaixaCorteIndUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * DBEQtdProd.Field.Value;
                     Dm1.ClientCoresBaixaCorteIndUSU_SALABE2.Value := Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * DBEQtdProd.Field.Value;
                 end//8
              else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 3 then
                    begin//9
                        Dm1.ClientCoresBaixaCorteIndUSU_SALABE1.Value := Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * DBEQtdProd.Field.Value;
                        Dm1.ClientCoresBaixaCorteIndUSU_SALABE2.Value := Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * DBEQtdProd.Field.Value;
                    end;//9
                    Dm1.ClientCoresBaixaCorteInd.Post;
    end;

end;

procedure TFBaixaCorteInd.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFBaixaCorteInd.DBGeralEnter(Sender: TObject);
begin
//  DBEQtdProd.SetFocus;
  BConfirma.TabStop := false;
end;

procedure TFBaixaCorteInd.DBGeralKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f1 then
    begin
       DBEQtdProd.SetFocus;
    end;

  if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFBaixaCorteInd.DBGeralStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DBEQtdProd.SetFocus;
end;

procedure TFBaixaCorteInd.DBGeralKeyPress(Sender: TObject; var Key: Char);
begin
 if ((key <> #32) and (key <> #8)) then
   begin
     DBEQtdProd.SetFocus;
     Dm1.ClientCoresBaixaCorteInd.Open;
     dm1.ClientCoresBaixaCorteInd.Edit;
     DBEQtdProd.Field.Value := key;
   end;
 if key = #32 then
    begin
      DBESelIteClick(Sender);
    end;
end;

procedure TFBaixaCorteInd.BConfirmaClick(Sender: TObject);
var ValidaQtdPro : Boolean;
    vnQtdPro,vnSeqMov, vnSeqLog : Integer;
    vnSalUnit1, vnSalUnit2 : Double;
    Hora : String;
begin
   if Application.MessageBox('Confirma Baixa?', 'Confirma��o', MB_ICONQUESTION+MB_YESNO) = idyes then
      begin//1
         //valida se a quantidade informada nao � maior do que tem em aberto
         ValidaQtdPro := true;
         Dm1.ClientCoresBaixaCorteInd.First;
         while not dm1.ClientCoresBaixaCorteInd.Eof do
            begin//2
              if Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value > Dm1.ClientCoresBaixaCorteIndUSU_QTDABE.Value then
                  begin//3
                     Application.MessageBox('Existe quantidade informada maior do que quantodade em aberto!!','Aviso', MB_ICONWARNING+MB_OK);
                      ValidaQtdPro := false;
                     Abort;
                  end;//3
              Dm1.ClientCoresBaixaCorteInd.Next;
            end;//2
          //se as quantidades informadas estiverem corretas continua o processo
         if ValidaQtdPro = true then
            begin//4
               //conta a quantidade de itens que estao sendo baixado
               Dm1.ClientCoresBaixaCorteInd.First;
               vnQtdPro := 0;
               while not Dm1.ClientCoresBaixaCorteInd.Eof do
                  begin//5
                     if Dm1.ClientCoresBaixaCorteIndUSU_SELITE.Value <> '' then
                        vnQtdPro := vnQtdPro + Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value;
                     Dm1.ClientCoresBaixaCorteInd.Next;
                  end;//5
               //atualiza a tabela usu_tprocar com a quantidade cortada
               Dm1.CadUsu_TProCar.Close;
               Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(LNumAne.Caption);
               Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := LCodPro.Caption;
               Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := LCodDer.Caption;
               Dm1.CadUsu_TProCar.Open;
               Dm1.CadUsu_TProCar.Edit;
               Dm1.CadUsu_TProCarUSU_QTDPRO.Value := Dm1.CadUsu_TProCarUSU_QTDPRO.Value + vnQtdPro;
               Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value - Dm1.CadUsu_TProCarUSU_QTDPRO.Value;
               if Dm1.CadUsu_TProCarUSU_QTDABE.Value = 0 then
                  Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'S'
               else if Dm1.CadUsu_TProCarUSU_QTDABE.Value = Dm1.CadUsu_TProCarUSU_QTDPED.Value then
                       Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N'
                     else Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'P';
               Dm1.CadUsu_TProCar.Post;
               //percorre o clientCoresBaixaCorteInd para
               //atualiza a tabela usu_tcorcar e realizar todos os outros movimentos
               Dm1.ClientCoresBaixaCorteInd.First;
               while not Dm1.ClientCoresBaixaCorteInd.Eof do
                  begin//6
                    if Dm1.ClientCoresBaixaCorteIndUSU_SELITE.Value <> '' then
                       begin//15
                          Dm1.CadUsu_TCorCar.Close;
                          Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := Dm1.ClientCoresBaixaCorteIndUSU_NUMANE.Value;
                          Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODPRO.Value;
                          Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODDER.Value;
                          Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                          Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                          Dm1.CadUsu_TCorCar.Open;
                          Dm1.CadUsu_TCorCar.Edit;
                          Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := Dm1.CadUsu_TCorCarUSU_QTDPRO.Value + Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value;
                          Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value - Dm1.CadUsu_TCorCarUSU_QTDPRO.Value;
                          if Dm1.CadUsu_TCorCarUSU_QTDABE.Value = 0 then
                              Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'S'
                          else if Dm1.CadUsu_TCorCarUSU_QTDABE.Value = Dm1.CadUsu_TCorCarUSU_QTDPED.Value then
                                 Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N'
                               else Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'P';
                         //consulta o consumo de tecido do produto
                         Dm1.ConsE075DerConsTec.Close;
                         Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODPRO.Value;
                         Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODDER.Value;
                         Dm1.ConsE075DerConsTec.Open;
                         if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 1 then
                            begin//7
                               Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value);
                            end//7
                          else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 2 then
                                 begin//8
                                    Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value);
                                    Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value - (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value);
                                 end//8
                                else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 3 then
                                       begin//9
                                          Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value);
                                          Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value - (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value);
                                       end;//9
                          Dm1.CadUsu_TCorCar.Post;
                          //atualiza o saldo total, se a quantidade cortada for igual ao
                         //saldo em aberto apaga o produto do saldo geral
                         Dm1.CadUsu_TCorSal.Close;
                         Dm1.CadUsu_TCorSal.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODPRO.Value;
                         Dm1.CadUsu_TCorSal.Parameters.ParamByName('codder').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODDER.Value;
                         Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor1').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                         Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor2').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                         Dm1.CadUsu_TCorSal.Open;
                         Dm1.CadUsu_TSalPro.Close;
                         Dm1.CadUsu_TSalPro.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODPRO.Value;
                         Dm1.CadUsu_TSalPro.Parameters.ParamByName('codder').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODDER.Value;
                         Dm1.CadUsu_TSalPro.Open;
                         if (Dm1.CadUsu_TCorSalUSU_QTDABE.Value = Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) and
                            (Dm1.CadUsu_TSalProUSU_QTDABE.Value = Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) then
                             begin//10
                               Dm1.CadUsu_TCorSal.Delete;
                               Dm1.CadUsu_TSalPro.Delete;
                             end//10
                         else if (Dm1.CadUsu_TCorSalUSU_QTDABE.Value > Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) and
                                 (Dm1.CadUsu_TSalProUSU_QTDABE.Value > Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) then
                                 begin//11
                                     Dm1.CadUsu_TCorSal.Edit;
                                     Dm1.CadUsu_TSalPro.Edit;
                                     Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.CadUsu_TCorSalUSU_QTDABE.Value - Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value;
                                     Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value - Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value;
                                     Dm1.CadUsu_TCorSal.Post;
                                     Dm1.CadUsu_TSalPro.Post;
                                  end//11
                               else if (Dm1.CadUsu_TCorSalUSU_QTDABE.Value = Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) and
                                       (Dm1.CadUsu_TSalProUSU_QTDABE.Value > Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) then
                                        begin//12
                                          Dm1.CadUsu_TCorSal.Delete;
                                          Dm1.CadUsu_TSalPro.Edit;
                                          Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value - Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value;
                                          Dm1.CadUsu_TSalPro.Post;
                                        end;//12
                          //grava o movimento da baixa na tabela usu_tmovbax
                          if Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value > 0 then
                             begin//14
                                Dm1.SeqUsu_TMovBax.Close;
                                Dm1.SeqUsu_TMovBax.Parameters.ParamByName('numane').Value := StrToInt(LNumAne.Caption);
                                Dm1.SeqUsu_TMovBax.Open;
                                  if Dm1.SeqUsu_TMovBax.IsEmpty then
                                     vnSeqMov := 1
                                  else
                                     vnSeqMov := Dm1.SeqUsu_TMovBaxUSU_SEQMOV.Value + 1;
                                Dm1.CadUsu_TMovBax.Open;
                                Dm1.CadUsu_TMovBax.Insert;
                                Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value := vnSeqMov;
                                Dm1.CadUsu_TMovBaxUSU_NUMANE.Value := StrToInt(LNumAne.Caption);
                                Dm1.CadUsu_TMovBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODPRO.Value;
                                Dm1.CadUsu_TMovBaxUSU_CODDER.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODDER.Value;
                                Dm1.CadUsu_TMovBaxUSU_CODCOR1.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                Dm1.CadUsu_TMovBaxUSU_CODCOR2.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                Dm1.CadUsu_TMovBaxUSU_QTDMOV.Value := Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value;
                                Dm1.CadUsu_TMovBaxUSU_TIPCOM.Value := Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value;
                                Dm1.CadUsu_TMovBaxUSU_DATMOV.AsDateTime := Date;
                                Dm1.CadUsu_TMovBaxUSU_SITMOV.Value := 'A';
                                Hora := TimeToStr(Time);
                                Dm1.CadUsu_TMovBaxUSU_HORMOV.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
                                Dm1.CadUsu_TMovBaxUSU_USUMOV.Value := FPrincipal.cd_usuario;
                                //consulta o consumo de tecido do produto/deriva~�ao para fazer o calculo da quantodade em MT
                                Dm1.ConsE075DerConsTec.Close;
                                Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODPRO.Value;
                                Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODDER.Value;
                                Dm1.ConsE075DerConsTec.Open;
                                if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 1 then
                                   begin//16
                                      Dm1.CadUsu_TMovBaxUSU_QTDMT1.Value := (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value;
                                   end//16
                                else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 2 then
                                        begin//17
                                           Dm1.CadUsu_TMovBaxUSU_QTDMT1.Value := (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value;
                                           Dm1.CadUsu_TMovBaxUSU_QTDMT2.Value := (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR2.Value;
                                        end//17
                                     else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 3 then
                                             begin//18
                                                Dm1.CadUsu_TMovBaxUSU_QTDMT1.Value := (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value;
                                                Dm1.CadUsu_TMovBaxUSU_QTDMT2.Value := (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR2.Value;
                                             end;//18
                                Dm1.CadUsu_TMovBax.Post;

                                //verifica se exiete log de baixa em aberto, se existir atualiza a quantidade  se nao inseri um novo
                                if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 1 then
                                   begin//19
                                      Dm1.ConsUsu_TLogBaxAbe.Close;
                                      Dm1.ConsUsu_TLogBaxAbe.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                      Dm1.ConsUsu_TLogBaxAbe.Open;
                                      if not Dm1.ConsUsu_TLogBaxAbe.IsEmpty then
                                         begin//20
                                            Dm1.CadUsu_TLogBax.Close;
                                            Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxAbeUSU_SEQLOG.Value;
                                            Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                            Dm1.CadUsu_TLogBax.Open;
                                            Dm1.CadUsu_TLogBax.Edit;
                                            Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value +((Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value);
                                            Dm1.CadUsu_TLogBax.Post;
                                            //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                            Dm1.CadUsu_TLigLog.Open;
                                            Dm1.CadUsu_TLigLog.Insert;
                                            Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                            Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                            Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                            Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                            Dm1.CadUsu_TLigLog.Post;
                                         end//20
                                      else
                                         begin//21
                                            Dm1.SeqUsu_TLogBax.Close;
                                            Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                            Dm1.SeqUsu_TLogBax.Open;
                                            if Dm1.SeqUsu_TLogBax.IsEmpty then
                                              vnSeqLog := 1
                                            else
                                              vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                            Dm1.CadUsu_TLogBax.Open;
                                            Dm1.CadUsu_TLogBax.Insert;
                                            Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                            Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                            Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value;
                                            Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                            Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                            Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'SAIDA PARA PRODUCAO ';
                                            Dm1.CadUsu_TLogBax.Post;
                                            //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                            Dm1.CadUsu_TLigLog.Open;
                                            Dm1.CadUsu_TLigLog.Insert;
                                            Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                            Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                            Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                            Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                            Dm1.CadUsu_TLigLog.Post;
                                         end;//21
                                   end//19
                                else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 2 then
                                        begin//22
                                            //realiza a consulta do log com a cor 01
                                            Dm1.ConsUsu_TLogBaxAbe.Close;
                                            Dm1.ConsUsu_TLogBaxAbe.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                            Dm1.ConsUsu_TLogBaxAbe.Open;
                                            if not Dm1.ConsUsu_TLogBaxAbe.IsEmpty then
                                               begin//23
                                                  Dm1.CadUsu_TLogBax.Close;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxAbeUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                                  Dm1.CadUsu_TLogBax.Open;
                                                  Dm1.CadUsu_TLogBax.Edit;
                                                  Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value +((Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value);
                                                  Dm1.CadUsu_TLogBax.Post;
                                                  //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                                  Dm1.CadUsu_TLigLog.Open;
                                                  Dm1.CadUsu_TLigLog.Insert;
                                                  Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                                  Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                                  Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                                  Dm1.CadUsu_TLigLog.Post;
                                               end//23
                                        else
                                          begin//24
                                              Dm1.SeqUsu_TLogBax.Close;
                                              Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                              Dm1.SeqUsu_TLogBax.Open;
                                              if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                 vnSeqLog := 1
                                              else
                                                 vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                              Dm1.CadUsu_TLogBax.Open;
                                              Dm1.CadUsu_TLogBax.Insert;
                                              Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                              Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                              Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value;
                                              Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                              Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                              Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'SAIDA PARA PRODUCAO ';
                                              Dm1.CadUsu_TLogBax.Post;
                                              //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                             Dm1.CadUsu_TLigLog.Open;
                                             Dm1.CadUsu_TLigLog.Insert;
                                             Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                             Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                             Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                             Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                             Dm1.CadUsu_TLigLog.Post;
                                          end;//24
                                            //realiza a consulta do log com a cor 02
                                            Dm1.ConsUsu_TLogBaxAbe.Close;
                                            Dm1.ConsUsu_TLogBaxAbe.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                            Dm1.ConsUsu_TLogBaxAbe.Open;
                                            if not Dm1.ConsUsu_TLogBaxAbe.IsEmpty then
                                               begin//25
                                                  Dm1.CadUsu_TLogBax.Close;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxAbeUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                                  Dm1.CadUsu_TLogBax.Open;
                                                  Dm1.CadUsu_TLogBax.Edit;
                                                  Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value +((Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR2.Value);
                                                  Dm1.CadUsu_TLogBax.Post;
                                                  //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                                  Dm1.CadUsu_TLigLog.Open;
                                                  Dm1.CadUsu_TLigLog.Insert;
                                                  Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                                  Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                                  Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                                  Dm1.CadUsu_TLigLog.Post;
                                               end//25
                                        else
                                          begin//26
                                              Dm1.SeqUsu_TLogBax.Close;
                                              Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                              Dm1.SeqUsu_TLogBax.Open;
                                              if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                 vnSeqLog := 1
                                              else
                                                 vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                              Dm1.CadUsu_TLogBax.Open;
                                              Dm1.CadUsu_TLogBax.Insert;
                                              Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                              Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                              Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR2.Value;
                                              Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                              Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                              Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'SAIDA PARA PRODUCAO ';
                                              Dm1.CadUsu_TLogBax.Post;
                                              //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                             Dm1.CadUsu_TLigLog.Open;
                                             Dm1.CadUsu_TLigLog.Insert;
                                             Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                             Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                             Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                             Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                             Dm1.CadUsu_TLigLog.Post;
                                         end//26
                                      end//22
                                   else if Dm1.ClientCoresBaixaCorteIndUSU_TIPCOM.Value = 3 then
                                         begin//27
                                            //realiza a consulta do log com a cor 01
                                            Dm1.ConsUsu_TLogBaxAbe.Close;
                                            Dm1.ConsUsu_TLogBaxAbe.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                            Dm1.ConsUsu_TLogBaxAbe.Open;
                                            if not Dm1.ConsUsu_TLogBaxAbe.IsEmpty then
                                               begin//28
                                                  Dm1.CadUsu_TLogBax.Close;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxAbeUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                                  Dm1.CadUsu_TLogBax.Open;
                                                  Dm1.CadUsu_TLogBax.Edit;
                                                  Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value +((Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value);
                                                  Dm1.CadUsu_TLogBax.Post;
                                                  //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                                  Dm1.CadUsu_TLigLog.Open;
                                                  Dm1.CadUsu_TLigLog.Insert;
                                                  Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                                  Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                                  Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                                  Dm1.CadUsu_TLigLog.Post;
                                               end//28
                                        else
                                          begin//29
                                              Dm1.SeqUsu_TLogBax.Close;
                                              Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                              Dm1.SeqUsu_TLogBax.Open;
                                              if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                 vnSeqLog := 1
                                              else
                                                 vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                              Dm1.CadUsu_TLogBax.Open;
                                              Dm1.CadUsu_TLogBax.Insert;
                                              Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                              Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR1.Value;
                                              Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR1.Value;
                                              Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                              Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                              Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'SAIDA PARA PRODUCAO ';
                                              Dm1.CadUsu_TLogBax.Post;
                                              //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                             Dm1.CadUsu_TLigLog.Open;
                                             Dm1.CadUsu_TLigLog.Insert;
                                             Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                             Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                             Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                             Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                             Dm1.CadUsu_TLigLog.Post;
                                          end;//29
                                            //realiza a consulta do log com a cor 02
                                            Dm1.ConsUsu_TLogBaxAbe.Close;
                                            Dm1.ConsUsu_TLogBaxAbe.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                            Dm1.ConsUsu_TLogBaxAbe.Open;
                                            if not Dm1.ConsUsu_TLogBaxAbe.IsEmpty then
                                               begin//30
                                                  Dm1.CadUsu_TLogBax.Close;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxAbeUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                                  Dm1.CadUsu_TLogBax.Open;
                                                  Dm1.CadUsu_TLogBax.Edit;
                                                  Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value +((Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR2.Value);
                                                  Dm1.CadUsu_TLogBax.Post;
                                                  //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                                  Dm1.CadUsu_TLigLog.Open;
                                                  Dm1.CadUsu_TLigLog.Insert;
                                                  Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                                  Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                                  Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                                  Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                                  Dm1.CadUsu_TLigLog.Post;
                                               end//30
                                        else
                                          begin//31
                                              Dm1.SeqUsu_TLogBax.Close;
                                              Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                              Dm1.SeqUsu_TLogBax.Open;
                                              if Dm1.SeqUsu_TLogBax.IsEmpty then
                                                 vnSeqLog := 1
                                              else
                                                 vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
                                              Dm1.CadUsu_TLogBax.Open;
                                              Dm1.CadUsu_TLogBax.Insert;
                                              Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
                                              Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := Dm1.ClientCoresBaixaCorteIndUSU_CODCOR2.Value;
                                              Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ClientCoresBaixaCorteIndUSU_QTDPRO.Value) + Dm1.ClientCoresBaixaCorteIndUSU_QTDCOR2.Value;
                                              Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
                                              Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
                                              Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := 'SAIDA PARA PRODUCAO ';
                                              Dm1.CadUsu_TLogBax.Post;
                                              //grava a liga�ao das tabelas usu_tmovbax com usu_tlogbax
                                             Dm1.CadUsu_TLigLog.Open;
                                             Dm1.CadUsu_TLigLog.Insert;
                                             Dm1.CadUsu_TLigLogUSU_SEQMOV.Value := Dm1.CadUsu_TMovBaxUSU_SEQMOV.Value;
                                             Dm1.CadUsu_TLigLogUSU_NUMANE.Value := Dm1.CadUsu_TMovBaxUSU_NUMANE.Value;
                                             Dm1.CadUsu_TLigLogUSU_SEQLOG.Value := Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
                                             Dm1.CadUsu_TLigLogUSU_CODPRO.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
                                             Dm1.CadUsu_TLigLog.Post;
                                         end;//31
                                      end;//27
                             end;//14
                       end;//15
                       Dm1.ClientCoresBaixaCorteInd.Next;
                  end;//6
               //atualiza a consulta dos produtos da carga
               dm1.ConsUsu_TProCar.Close;
               dm1.ConsUsu_TProCar.SQL.Clear;
               dm1.ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
               dm1.ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
               dm1.ConsUsu_TProCar.SQL.Add('where');
               dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane and');
               dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
               dm1.ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
               dm1.ConsUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(LNumAne.Caption);
               dm1.ConsUsu_TProCar.Open;
               if dm1.ConsUsu_TProCar.IsEmpty then
                  begin//13
                     Dm1.CadUsu_TCarPro.Close;
                     Dm1.CadUsu_TCarPro.Parameters.ParamByName('numane').Value := StrToInt(LNumAne.Caption);
                     Dm1.CadUsu_TCarPro.Open;
                     Dm1.CadUsu_TCarPro.Edit;
                     Dm1.CadUsu_TCarProUSU_CARPRO.Value := 'S';
                     Dm1.CadUsu_TCarPro.Post;
                     //atualiza a consulta das cargas liberadas para producao
                     Dm1.ConsUsu_TPreCarLib.Close;
                     Dm1.ConsUsu_TPreCarLib.Open;
                     //atualiza a consulta das cargas em produao
                     Dm1.ConsUsu_TCarPro.Close;
                     Dm1.ConsUsu_TCarPro.Open;

                     dm1.ConsUsu_tCorCar1.Close;
                     dm1.ConsUsu_tCorCar1.Parameters.ParamByName('numane').Value := StrToInt(LNumAne.Caption);
                     dm1.ConsUsu_tCorCar1.Parameters.ParamByName('codpro').Value := LCodPro.Caption;
                     dm1.ConsUsu_tCorCar1.Parameters.ParamByName('codder').Value := LCodDer.Caption;
                     dm1.ConsUsu_tCorCar1.Open;

                     dm1.ConsUsu_tCorCar2.Close;
                     dm1.ConsUsu_tCorCar2.Parameters.ParamByName('numane').Value := StrToInt(LNumAne.Caption);
                     dm1.ConsUsu_tCorCar2.Parameters.ParamByName('codpro').Value := LCodPro.Caption;
                     dm1.ConsUsu_tCorCar2.Parameters.ParamByName('codder').Value := LCodDer.Caption;
                     dm1.ConsUsu_tCorCar2.Open;
                  end;//13
               Close;
            end;//4
            
      end;//1
end;

procedure TFBaixaCorteInd.DBGeralExit(Sender: TObject);
begin
  BConfirma.TabStop := true;
end;

procedure TFBaixaCorteInd.BCancelaClick(Sender: TObject);
begin
Close;
end;

procedure TFBaixaCorteInd.DBEQtdProdKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFBaixaCorteInd.DBESelIteClick(Sender: TObject);
begin
    if DBESelIte.Field.Value = '' then
        begin
           Dm1.ClientCoresBaixaCorteInd.Edit;
           DBESelIte.Field.Value := '�';
        end
    else
        begin
            Dm1.ClientCoresBaixaCorteInd.Edit;
            DBESelIte.Field.Value := '';
        end;

end;

procedure TFBaixaCorteInd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f5 then
      BConfirma.Click;
end;

procedure TFBaixaCorteInd.BMarcaTodosClick(Sender: TObject);
begin

if vaMarcados = 'N' then
   begin
     Dm1.ClientCoresBaixaCorteInd.First;
     while not Dm1.ClientCoresBaixaCorteInd.Eof do
        begin
          Dm1.ClientCoresBaixaCorteInd.Edit;
          DBESelIte.Field.Value := '�';
          Dm1.ClientCoresBaixaCorteInd.Post;

          Dm1.ClientCoresBaixaCorteInd.Next;
        end;
      vaMarcados := 'S';
   end
else
   begin
      Dm1.ClientCoresBaixaCorteInd.First;
      while not Dm1.ClientCoresBaixaCorteInd.Eof do
        begin
          Dm1.ClientCoresBaixaCorteInd.Edit;
          DBESelIte.Field.Value := '';
          Dm1.ClientCoresBaixaCorteInd.Post;

          Dm1.ClientCoresBaixaCorteInd.Next;
        end;
      vaMarcados := 'N';
   end;



end;

procedure TFBaixaCorteInd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FPrincipal.ApagaTela(FBaixaCorteInd.Name,FPrincipal.vnCodCon);
end;

end.
