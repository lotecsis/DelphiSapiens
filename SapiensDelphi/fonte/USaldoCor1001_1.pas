unit USaldoCor1001_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, Buttons, StdCtrls;

type
  TFSaldoCor1001_1 = class(TForm)
    PaginaControle: TPageControl;
    TbSaldoGeral: TTabSheet;
    DBGrid1: TDBGrid;
    BMostrar: TSpeedButton;
    DsGeral: TDataSource;
    BAtualizar: TSpeedButton;
    BImprimir: TSpeedButton;
    BarraProgresso: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure BMostrarClick(Sender: TObject);
    procedure BAtualizarClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSaldoCor1001_1: TFSaldoCor1001_1;

implementation

uses UDm1, UPrincipal, UDmRave;

{$R *.dfm}

procedure TFSaldoCor1001_1.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FSaldoCor1001_1.Name,FPrincipal.vnCodCon);

  PaginaControle.ActivePageIndex := 0;

  Dm1.ConsUsu_Temp1001_1.Close;
  Dm1.ConsUsu_Temp1001_1.Open;
  while not Dm1.ConsUsu_Temp1001_1.Eof do
      begin
         Dm1.ConsUsu_Temp1001_1.Delete;
      end;

end;

procedure TFSaldoCor1001_1.BMostrarClick(Sender: TObject);
begin
BarraProgresso.Visible := true;
BarraProgresso.Position := 0;

//apaga todos os registros
   Dm1.ConsUsu_Temp1001_1.Close;
  Dm1.ConsUsu_Temp1001_1.Open;
  while not Dm1.ConsUsu_Temp1001_1.Eof do
      begin
         Dm1.ConsUsu_Temp1001_1.Delete;
      end;
      
    {*****************************************************************
    consulta todos da tabela usu_t120ipd que o pedido esta transferido
    mas nao esta em nenhuma pre-carga
    ******************************************************************}
    Dm1.Cons1001_1SCarga.Close;
    Dm1.Cons1001_1SCarga.Open;
    Dm1.Cons1001_1SCarga.First;
    while not Dm1.Cons1001_1SCarga.Eof do
        begin//1
        //consulta o consumo de tecido do produto
        Dm1.ConsE075DerConsTec.Close;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1SCargaUSU_CODPRO.Value;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.Cons1001_1SCargaUSU_CODDER.Value;
        Dm1.ConsE075DerConsTec.Open;
          if Dm1.Cons1001_1SCargaUSU_TIPCMB.Value = 1 then
             begin//2
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1SCargaUSU_COR001.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//3
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//3
                else
                   begin//4
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1SCargaUSU_COR001.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//4
             end//2
          else if Dm1.Cons1001_1SCargaUSU_TIPCMB.Value = 2 then
             begin//5
                //atualiza com a cor 01
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1SCargaUSU_COR001.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//6
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//6
                else
                   begin//7
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1SCargaUSU_COR001.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//7
                //atualiza com a cor 02
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1SCargaUSU_COR002.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//8
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//8
                else
                   begin//9
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1SCargaUSU_COR002.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//9
             end//5
          else if Dm1.Cons1001_1SCargaUSU_TIPCMB.Value = 3 then
                  begin//10
                      //atualiza com a cor 01
                      Dm1.CadUsu_Temp1001_1.Close;
                      Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1SCargaUSU_COR001.Value;
                      Dm1.CadUsu_Temp1001_1.Open;
                      if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                         begin//11
                            Dm1.CadUsu_Temp1001_1.Edit;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value);
                            Dm1.CadUsu_Temp1001_1.Post;
                         end//11
                      else
                         begin//12
                            Dm1.CadUsu_Temp1001_1.Insert;
                            Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1SCargaUSU_COR001.Value;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value;
                            Dm1.CadUsu_Temp1001_1.Post;
                         end;//12
                      //atualiza com a cor 02
                      Dm1.CadUsu_Temp1001_1.Close;
                      Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1SCargaUSU_COR002.Value;
                      Dm1.CadUsu_Temp1001_1.Open;
                      if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                         begin//13
                            Dm1.CadUsu_Temp1001_1.Edit;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value);
                            Dm1.CadUsu_Temp1001_1.Post;
                         end//13
                      else
                         begin//14
                            Dm1.CadUsu_Temp1001_1.Insert;
                            Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1SCargaUSU_COR002.Value;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.Cons1001_1SCargaUSU_QTDABE.Value;
                            Dm1.CadUsu_Temp1001_1.Post;
                         end;//14
                  end;//10
            Dm1.Cons1001_1SCarga.Next;
        end;//1
        BarraProgresso.Position := 50;
      {***************************************************************************************
       ***consulta todos que estao em pre-carga mas ainda nao foi transferida para produ�ao***
      ****************************************************************************************}
      Dm1.Cons1001_1ECargaN.Close;
      Dm1.Cons1001_1ECargaN.Open;
      Dm1.Cons1001_1ECargaN.First;
    while not Dm1.Cons1001_1ECargaN.Eof do
      begin//15
         //consulta o consumo de tecido do produto
        Dm1.ConsE075DerConsTec.Close;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaNUSU_CODPRO.Value;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.Cons1001_1ECargaNUSU_CODDER.Value;
        Dm1.ConsE075DerConsTec.Open;
          if Dm1.Cons1001_1ECargaNUSU_TIPCMB.Value = 1 then
             begin//16
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaNUSU_COR001.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//17
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//17
                else
                   begin//18
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaNUSU_COR001.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//18
             end//16
          else if Dm1.Cons1001_1ECargaNUSU_TIPCMB.Value = 2 then
             begin//19
                //atualiza com a cor 01
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaNUSU_COR001.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//20
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//20
                else
                   begin//21
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaNUSU_COR001.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//21
                //atualiza com a cor 02
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaNUSU_COR002.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//22
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//22
                else
                   begin//23
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaNUSU_COR002.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//23
             end//19
          else if Dm1.Cons1001_1ECargaNUSU_TIPCMB.Value = 3 then
                  begin//24
                      //atualiza com a cor 01
                      Dm1.CadUsu_Temp1001_1.Close;
                      Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaNUSU_COR001.Value;
                      Dm1.CadUsu_Temp1001_1.Open;
                      if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                         begin//25
                            Dm1.CadUsu_Temp1001_1.Edit;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value);
                            Dm1.CadUsu_Temp1001_1.Post;
                         end//25
                      else
                         begin//26
                            Dm1.CadUsu_Temp1001_1.Insert;
                            Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaNUSU_COR001.Value;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value;
                            Dm1.CadUsu_Temp1001_1.Post;
                         end;//26
                      //atualiza com a cor 02
                      Dm1.CadUsu_Temp1001_1.Close;
                      Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaNUSU_COR002.Value;
                      Dm1.CadUsu_Temp1001_1.Open;
                      if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                         begin//27
                            Dm1.CadUsu_Temp1001_1.Edit;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value);
                            Dm1.CadUsu_Temp1001_1.Post;
                         end//27
                      else
                         begin//28
                            Dm1.CadUsu_Temp1001_1.Insert;
                            Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaNUSU_COR002.Value;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.Cons1001_1ECargaNUSU_QTDABE.Value;
                            Dm1.CadUsu_Temp1001_1.Post;
                         end;//28
                  end;//24

           Dm1.Cons1001_1ECargaN.Next;
         end;//15
         BarraProgresso.Position := 80;
      {**********************************************************************
      ***Consulta todos que estao em pre-carga e que ja foram importados*****
      ***para produ�ao, a tabela � a usu_tcorcar                        *****
      ***********************************************************************}
      Dm1.Cons1001_1ECargaT.Close;
      Dm1.Cons1001_1ECargaT.Open;
      Dm1.Cons1001_1ECargaT.First;
    while not Dm1.Cons1001_1ECargaT.Eof do
      begin//29
         //consulta o consumo de tecido do produto
        Dm1.ConsE075DerConsTec.Close;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaTUSU_CODPRO.Value;
        Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.Cons1001_1ECargaTUSU_CODDER.Value;
        Dm1.ConsE075DerConsTec.Open;
          if Dm1.Cons1001_1ECargaTUSU_TIPCOM.Value = 1 then
             begin//30
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaTUSU_CODCOR1.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//31
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//31
                else
                   begin//32
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaTUSU_CODCOR1.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//32
             end//30
          else if Dm1.Cons1001_1ECargaTUSU_TIPCOM.Value = 2 then
             begin//33
                //atualiza com a cor 01
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaTUSU_CODCOR1.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//34
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//34
                else
                   begin//35
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaTUSU_CODCOR1.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//35
                //atualiza com a cor 02
                Dm1.CadUsu_Temp1001_1.Close;
                Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaTUSU_CODCOR2.Value;
                Dm1.CadUsu_Temp1001_1.Open;
                if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                   begin//36
                      Dm1.CadUsu_Temp1001_1.Edit;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value);
                      Dm1.CadUsu_Temp1001_1.Post;
                   end//36
                else
                   begin//37
                      Dm1.CadUsu_Temp1001_1.Insert;
                      Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaTUSU_CODCOR2.Value;
                      Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value;
                      Dm1.CadUsu_Temp1001_1.Post;
                   end;//37
             end//33
          else if Dm1.Cons1001_1ECargaTUSU_TIPCOM.Value = 3 then
                  begin//38
                      //atualiza com a cor 01
                      Dm1.CadUsu_Temp1001_1.Close;
                      Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaTUSU_CODCOR1.Value;
                      Dm1.CadUsu_Temp1001_1.Open;
                      if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                         begin//25
                            Dm1.CadUsu_Temp1001_1.Edit;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value);
                            Dm1.CadUsu_Temp1001_1.Post;
                         end//25
                      else
                         begin//26
                            Dm1.CadUsu_Temp1001_1.Insert;
                            Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaTUSU_CODCOR1.Value;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value;
                            Dm1.CadUsu_Temp1001_1.Post;
                         end;//26
                      //atualiza com a cor 02
                      Dm1.CadUsu_Temp1001_1.Close;
                      Dm1.CadUsu_Temp1001_1.Parameters.ParamByName('codpro').Value := Dm1.Cons1001_1ECargaTUSU_CODCOR2.Value;
                      Dm1.CadUsu_Temp1001_1.Open;
                      if not Dm1.CadUsu_Temp1001_1.IsEmpty then
                         begin//27
                            Dm1.CadUsu_Temp1001_1.Edit;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.CadUsu_Temp1001_1USU_QTDEST.Value + (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value);
                            Dm1.CadUsu_Temp1001_1.Post;
                         end//27
                      else
                         begin//28
                            Dm1.CadUsu_Temp1001_1.Insert;
                            Dm1.CadUsu_Temp1001_1USU_CODPRO.Value := Dm1.Cons1001_1ECargaTUSU_CODCOR2.Value;
                            Dm1.CadUsu_Temp1001_1USU_QTDEST.Value := Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.Cons1001_1ECargaTUSU_QTDABE.Value;
                            Dm1.CadUsu_Temp1001_1.Post;
                         end;//28
                  end;//38

         Dm1.Cons1001_1ECargaT.Next;
      end;//29



      BarraProgresso.Position := 100;
      dm1.ConsUsu_Temp1001_1.Close;
      dm1.ConsUsu_Temp1001_1.Open;
      BarraProgresso.Visible := false;
end;

procedure TFSaldoCor1001_1.BAtualizarClick(Sender: TObject);
begin
  Dm1.ConsUsu_Temp1001_1.Close;
  Dm1.ConsUsu_Temp1001_1.Open;
  while not Dm1.ConsUsu_Temp1001_1.Eof do
      begin
         Dm1.ConsUsu_Temp1001_1.Delete;
      end;
  BMostrar.Click;    
end;

procedure TFSaldoCor1001_1.BImprimirClick(Sender: TObject);
begin

    DmRave.RvSaldo1001_1.Execute;
end;

procedure TFSaldoCor1001_1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FPrincipal.ApagaTela(FSaldoCor1001_1.Name,FPrincipal.vnCodCon);
end;

end.
