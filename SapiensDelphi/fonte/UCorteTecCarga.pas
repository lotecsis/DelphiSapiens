unit UCorteTecCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, rxDbPrgrss, Menus,
  ImgList;

type
  TFCorteTecCarga = class(TForm)
    PaginaControle: TPageControl;
    TbCargas: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DsConsUsu_TPreCarLib: TDataSource;
    Label1: TLabel;
    DsConsUsu_TCarPro: TDataSource;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    BarraProgresso: TProgressBar;
    DsConsUsu_TProCar: TDataSource;
    EdPesquisa: TEdit;
    DsConsUsu_TCorCar1: TDataSource;
    TbCargasHistorico: TTabSheet;
    TbSaldoGeral: TTabSheet;
    DBGrid5: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid6: TDBGrid;
    Label3: TLabel;
    DsConsUsu_TProCar1: TDataSource;
    EdPesquisa1: TEdit;
    DsConUsu_TCorCar2: TDataSource;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    DsConsUsu_TSalPro: TDataSource;
    EdPesquisa2: TEdit;
    DsConsUsu_TCorSal: TDataSource;
    BBaixa: TBitBtn;
    BMovimentos: TBitBtn;
    PopCargaEmProd: TPopupMenu;
    Movimentos1: TMenuItem;
    PopProdEmProd: TPopupMenu;
    Movimentos2: TMenuItem;
    PopProdJaProd: TPopupMenu;
    Movimentos3: TMenuItem;
    BAlteraProdutos: TBitBtn;
    BDiferencaTecido: TBitBtn;
    BAltResolucao: TSpeedButton;
    PopCoresEmProd: TPopupMenu;
    PopAdicionar: TMenuItem;
    PopExcluir: TMenuItem;
    PopAdicionaProd: TMenuItem;
    PopExcluiProd: TMenuItem;
    ImageList1: TImageList;
    procedure TbCargasShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdPesquisa1Change(Sender: TObject);
    procedure TbSaldoGeralShow(Sender: TObject);
    procedure EdPesquisa2Change(Sender: TObject);
    procedure BBaixaClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BMovimentosClick(Sender: TObject);
    procedure Movimentos1Click(Sender: TObject);
    procedure Movimentos2Click(Sender: TObject);
    procedure Movimentos3Click(Sender: TObject);
    procedure BAlteraProdutosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BDiferencaTecidoClick(Sender: TObject);
    procedure BAltResolucaoClick(Sender: TObject);
    procedure PopAdicionarClick(Sender: TObject);
    procedure PopExcluirClick(Sender: TObject);
    procedure PopAdicionaProdClick(Sender: TObject);
    procedure PopExcluiProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCorteTecCarga: TFCorteTecCarga;

  OldWidth : Integer = 0;  // Variáveis que armazena a resolucao da tela para uma posterior volta
  OldHeight : Integer;
implementation

uses UDm1, UBaixaCorteInd, UMovBaixaCorte, UAlteraProdCarCorte, UPrincipal,
  UDiferencaCorteTecido;

{$R *.dfm}

procedure PTela( Sender: Tobject );
  procedure PAlterar( Width, Height : Integer);
  var sDispMode: DevMode;
  begin
    EnumDisplaySettings(Nil,0,sDispMode);

    sDispMode.dmPelsWidth := Width;
    sDispMode.dmPelsHeight := Height;
    sDispMode.dmFields := DM_PELSWIDTH+DM_PELSHEIGHT;
    try
      ChangeDisplaySettings(sDispMode,0);
    except
      ShowMessage('Não é possivel alterar configurações de vídeo.')
    end;
  end;

begin

  if (Screen.Width <> OldWidth ) and (Oldwidth <> 0) then
    Palterar(OldWidth, OldHeight);

  // Aqui testo se a resolução é 800 porque quero utilizar pro meu software resolução 800 X 600.
  If (Screen.Width <> 1024 ) then
  if (messageDlg('Para uma boa utilização recomenda-se resolção de video de 1024 X 768. ' +
    #13#13 + ' Deseja Alterar suas confirações de vídeo agora ?',
    mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
  // Vairavel que pega o valor original de inicialização ex: 1024 X 768... etc...
    OldWidth := GetSystemMetrics(SM_CXSCREEN);
    OldHeight := GetSystemMetrics(SM_CYSCREEN);
  // Resolução para qual quero utilizar enquanto o programa estiver aberto…
    PAlterar(1024, 768); // 800 X 600
  end;

end;//fim da procedure que altera resoluçao do monitor



procedure TFCorteTecCarga.TbCargasShow(Sender: TObject);
begin
    //atualiza a consulta das cargas liberadas para producao
    Dm1.ConsUsu_TPreCarLib.Close;
    Dm1.ConsUsu_TPreCarLib.Open;

    //atualiza a consulta das cargas em produao
    Dm1.ConsUsu_TCarPro.Close;
    Dm1.ConsUsu_TCarPro.Open;
    //limpa a grid de produtos se nao tiver + cargas na produção
    if Dm1.ConsUsu_TCarPro.IsEmpty then
        begin
            dm1.ConsUsu_TProCar.Close;
            dm1.ConsUsu_TProCar.SQL.Clear;
            dm1.ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
            dm1.ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
            dm1.ConsUsu_TProCar.SQL.Add('where');
            dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane and');
            dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
            dm1.ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
            dm1.ConsUsu_TProCar.Parameters.ParamByName('numane').Value := 999999;
            dm1.ConsUsu_TProCar.Open;
        end;

end;

procedure TFCorteTecCarga.SpeedButton1Click(Sender: TObject);
var NumAne : string;
    vnNumAne,vnQtdPed : Integer;
begin
if not Dm1.ConsUsu_TPreCarLib.IsEmpty then
  begin//1
    NumAne := IntToStr(Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value);
    vnNumAne := Dm1.ConsUsu_TPreCarLibUSU_PRECAR.Value;
    if Application.MessageBox(PChar('Importar a Carga '+NumAne+' P/Produção?'), 'Movimento', MB_ICONQUESTION+MB_YESNO) = idyes then
        begin//2

            Dm1.ConsBarraPrograsso.Close;
            Dm1.ConsBarraPrograsso.Open;
            BarraProgresso.Max := Dm1.ConsBarraPrograssoQTDLINHAS.AsInteger;
            BarraProgresso.Visible := true;
            BarraProgresso.Position := 0;
            //valida se a carga é só de colchoes ou nao tem nenhum produto, se for nao tranferi
            Dm1.ValidaColchoesCarga.Close;
            Dm1.ValidaColchoesCarga.Parameters.ParamByName('precar').Value := vnNumAne;
            Dm1.ValidaColchoesCarga.Open;
            if Dm1.ValidaColchoesCarga.IsEmpty then
               begin//a
                 Application.MessageBox('Não existe produtos "Estofados" nesta carga!', 'Aviso', MB_ICONWARNING+MB_OK);
               end//a
            else
               begin//a1
                  //inseri a carga na tabela usu_tcarpro
                  Dm1.CadUsu_TCarPro.Open;
                  Dm1.CadUsu_TCarPro.Insert;
                  Dm1.CadUsu_TCarProUSU_NUMANE.Value := vnNumAne;
                  Dm1.CadUsu_TCarProUSU_DATIMP.AsDateTime := Date;
                  Dm1.CadUsu_TCarProUSU_USUIMP.Value := FPrincipal.cd_usuario;
                  Dm1.CadUsu_TCarProUSU_CARPRO.Value := 'N';
                  Dm1.CadUsu_TCarPro.Post;
               end;//a1
            //assinala que a pre carga ja esta importada
            Dm1.CadUsu_TPreCarLib.Close;
            Dm1.CadUsu_TPreCarLib.Parameters.ParamByName('precar').Value := vnNumAne;
            Dm1.CadUsu_TPreCarLib.Open;
            Dm1.CadUsu_TPreCarLib.Edit;
            Dm1.CadUsu_TPreCarLibUSU_CARIMP.Value := 'S';
            Dm1.CadUsu_TPreCarLib.Post;
            //consulta todos os produtos e derivacoes(estofados) da tabela e075der
            //para poder percorrer a tabela usu_t120ipd buscando o tatal da carga
            //que esta sendo importada
            Dm1.ConsE075Der.Close;
            Dm1.ConsE075Der.Open;
            Dm1.ConsE075Der.First;
            while not Dm1.ConsE075Der.Eof do
              begin//3
                 Dm1.ConsUsu_T120Ipd.Close;
                 Dm1.ConsUsu_T120Ipd.Parameters.ParamByName('codpro').Value := Dm1.ConsE075DerCODPRO.Value;
                 Dm1.ConsUsu_T120Ipd.Parameters.ParamByName('codder').Value := Dm1.ConsE075DerCODDER.Value;
                 Dm1.ConsUsu_T120Ipd.Parameters.ParamByName('precar').Value := vnNumAne;
                 Dm1.ConsUsu_T120Ipd.Open;
                 //calcula a quantidade de produtos em aberto
                 if not Dm1.ConsUsu_T120Ipd.IsEmpty then
                    begin//4
                       vnQtdPed := 0;
                       Dm1.ConsUsu_T120Ipd.First;
                       while not Dm1.ConsUsu_T120Ipd.Eof do
                         begin//5
                           vnQtdPed := vnQtdPed + Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                           Dm1.ConsUsu_T120Ipd.Next;
                          end;//5
                         //** se a quantidade em aberto for 0 nao inseri o produto **
                         if vnQtdPed > 0 then
                           begin//40
                              //inseri o produto na tabela de produtos da carga usu_tprocar
                              Dm1.CadUsu_TProCar.Open;
                              Dm1.CadUsu_TProCar.Insert;
                              Dm1.CadUsu_TProCarUSU_NUMANE.Value := vnNumAne;
                              Dm1.CadUsu_TProCarUSU_CODPRO.Value := Dm1.ConsE075DerCODPRO.Value;
                              Dm1.CadUsu_TProCarUSU_CODDER.Value := Dm1.ConsE075DerCODDER.Value;
                              Dm1.CadUsu_TProCarUSU_QTDPED.Value := vnQtdPed;
                              Dm1.CadUsu_TProCarUSU_QTDABE.Value := vnQtdPed;
                              Dm1.CadUsu_TProCarUSU_QTDPRO.Value := 0;
                              Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N';
                              Dm1.CadUsu_TProCar.Post;
                              //verifica se ja existe o produto na tabela usu_tsalpro, se nao existir
                              //inseri e se ja existir atualiza o saldo geral em aberto do produto/derivaçao
                              dm1.SeExisteUsu_TSalPro.Close;
                              dm1.SeExisteUsu_TSalPro.Parameters.ParamByName('codpro').Value := Dm1.ConsE075DerCODPRO.Value;
                              dm1.SeExisteUsu_TSalPro.Parameters.ParamByName('codder').Value := Dm1.ConsE075DerCODDER.Value;
                              dm1.SeExisteUsu_TSalPro.Open;
                              if dm1.SeExisteUsu_TSalPro.IsEmpty then
                                begin//12
                                  Dm1.CadUsu_TSalPro.Open;
                                  Dm1.CadUsu_TSalPro.Insert;
                                  Dm1.CadUsu_TSalProUSU_CODPRO.Value := Dm1.ConsE075DerCODPRO.Value;
                                  Dm1.CadUsu_TSalProUSU_CODDER.Value := Dm1.ConsE075DerCODDER.Value;
                                  Dm1.CadUsu_TSalProUSU_QTDABE.Value := vnQtdPed;
                                  Dm1.CadUsu_TSalPro.Post;
                                end//12
                              else
                                begin//13
                                  Dm1.CadUsu_TSalPro.Close;
                                  Dm1.CadUsu_TSalPro.Parameters.ParamByName('codpro').Value := Dm1.ConsE075DerCODPRO.Value;
                                  Dm1.CadUsu_TSalPro.Parameters.ParamByName('codder').Value := Dm1.ConsE075DerCODDER.Value;
                                  Dm1.CadUsu_TSalPro.Open;
                                  Dm1.CadUsu_TSalPro.Edit;
                                  Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value + vnQtdPed;
                                  Dm1.CadUsu_TSalPro.Post;
                                end;//13
                              //verifica se ja existe a combinaçao de cores, se nao existir inseri um
                              //novo registro se nao atualiza a quantidade na tabela usu_tcorcar e **tambem
                              //verifica se ja existe na tabela usu_tcorsal, se existir atualiza o saldo total se
                              //insere um novo registro
                              Dm1.ConsUsu_T120Ipd.First;
                              while not Dm1.ConsUsu_T120Ipd.Eof do
                               begin//6
                                  dm1.ConsUsu_TCorCar.Close;
                                  dm1.ConsUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ConsE075DerCODPRO.Value;
                                  dm1.ConsUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ConsE075DerCODDER.Value;
                                  dm1.ConsUsu_TCorCar.Parameters.ParamByName('numane').Value := vnNumAne;
                                  dm1.ConsUsu_TCorCar.Parameters.ParamByName('cor001').Value := Dm1.ConsUsu_T120IpdUSU_COR001.Value;
                                  dm1.ConsUsu_TCorCar.Parameters.ParamByName('cor002').Value := Dm1.ConsUsu_T120IpdUSU_COR002.Value;
                                  dm1.ConsUsu_TCorCar.Open;
                                  if dm1.ConsUsu_TCorCar.IsEmpty then
                                    begin//7
                                      Dm1.CadUsu_TCorCar.Open;
                                      Dm1.CadUsu_TCorCar.Insert;
                                      Dm1.CadUsu_TCorCarUSU_NUMANE.Value := vnNumAne;
                                      Dm1.CadUsu_TCorCarUSU_CODPRO.Value := Dm1.ConsE075DerCODPRO.Value;
                                      Dm1.CadUsu_TCorCarUSU_CODDER.Value := Dm1.ConsE075DerCODDER.Value;
                                      Dm1.CadUsu_TCorCarUSU_CODCOR1.Value := Dm1.ConsUsu_T120IpdUSU_COR001.Value;
                                      if Dm1.ConsUsu_T120IpdUSU_COR002.Value = '' then
                                        Dm1.CadUsu_TCorCarUSU_CODCOR2.Value := ' '
                                      else
                                      Dm1.CadUsu_TCorCarUSU_CODCOR2.Value := Dm1.ConsUsu_T120IpdUSU_COR002.Value;

                                      Dm1.CadUsu_TCorCarUSU_QTDPED.Value :=  Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                      Dm1.CadUsu_TCorCarUSU_QTDPRO.Value := 0;
                                      Dm1.CadUsu_TCorCarUSU_QTDABE.Value :=  Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                      Dm1.CadUsu_TCorCarUSU_TIPCOM.Value :=  Dm1.ConsUsu_T120IpdUSU_TIPCMB.Value;
                                      Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N';
                                      //calcula o saldo do tecido em metros
                                      if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                         begin//9
                                           Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerUSU_CORUNI.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                           Dm1.CadUsu_TCorCarUSU_SALABE2.Value := 0;
                                         end//9
                                      else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                              begin//10
                                                Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerUSU_CMP1BB.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                                Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.ConsE075DerUSU_CMP1AE.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                              end//10
                                           else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                   begin//11
                                                      Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.ConsE075DerUSU_CMP2BB.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                                      Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.ConsE075DerUSU_CMP2EN.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                                   end;//11
                                      Dm1.CadUsu_TCorCar.Post;
                                    end//7
                                  else
                                    begin//8
                                      Dm1.CadUsu_TCorCar.Close;
                                      Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := vnNumAne;
                                      Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ConsE075DerCODPRO.Value;
                                      Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ConsE075DerCODDER.Value;
                                      Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdUSU_COR001.Value;
                                      Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := Dm1.ConsUsu_T120IpdUSU_COR002.Value;
                                      Dm1.CadUsu_TCorCar.Open;
                                      Dm1.CadUsu_TCorCar.Edit;
                                      Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value + Dm1.ConsUsu_t120ipdUSU_QTDABE.Value;
                                      Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value + Dm1.ConsUsu_t120ipdUSU_QTDABE.Value;
                                      if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                         begin//16
                                           Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerUSU_CORUNI.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value);
                                           Dm1.CadUsu_TCorCarUSU_SALABE2.Value := 0;
                                         end//16
                                      else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                              begin//17
                                                Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerUSU_CMP1BB.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value);
                                                Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value + (Dm1.ConsE075DerUSU_CMP1AE.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value);
                                              end//17
                                           else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                   begin//18
                                                      Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value + (Dm1.ConsE075DerUSU_CMP2BB.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value);
                                                      Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value + (Dm1.ConsE075DerUSU_CMP2EN.Value * Dm1.ConsUsu_T120IpdUSU_QTDABE.Value);
                                                   end;//18
                                      Dm1.CadUsu_TCorCar.Post;
                                    end;//8
                                  //atualiza o saldo total das cores dos produtos em produçao
                                  Dm1.SeExisteUsu_TCorSal.Close;
                                  Dm1.SeExisteUsu_TCorSal.Parameters.ParamByName('codpro').Value := Dm1.ConsE075DerCODPRO.Value;
                                  Dm1.SeExisteUsu_TCorSal.Parameters.ParamByName('codder').Value := Dm1.ConsE075DerCODDER.Value;
                                  Dm1.SeExisteUsu_TCorSal.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdUSU_COR001.Value;
                                  Dm1.SeExisteUsu_TCorSal.Parameters.ParamByName('codcor2').Value := Dm1.ConsUsu_T120IpdUSU_COR002.Value;
                                  Dm1.SeExisteUsu_TCorSal.Open;
                                  if Dm1.SeExisteUsu_TCorSal.IsEmpty then
                                    begin//14
                                       Dm1.CadUsu_TCorSal.Open;
                                       Dm1.CadUsu_TCorSal.Insert;
                                       Dm1.CadUsu_TCorSalUSU_CODPRO.Value := Dm1.ConsE075DerCODPRO.Value;
                                       Dm1.CadUsu_TCorSalUSU_CODDER.Value := Dm1.ConsE075DerCODDER.Value;
                                       Dm1.CadUsu_TCorSalUSU_CODCOR1.Value := Dm1.ConsUsu_T120IpdUSU_COR001.Value;
                                       if Dm1.ConsUsu_T120IpdUSU_COR002.Value = '' then
                                         Dm1.CadUsu_TCorSalUSU_CODCOR2.Value := ' '
                                       else
                                       Dm1.CadUsu_TCorSalUSU_CODCOR2.Value := Dm1.ConsUsu_T120IpdUSU_COR002.Value;

                                       Dm1.CadUsu_TCorSalUSU_TIPCOM.Value := Dm1.ConsUsu_T120IpdUSU_TIPCMB.Value;
                                       Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                       Dm1.CadUsu_TCorSal.Post;
                                    end//14
                                   else
                                    begin//15
                                       Dm1.CadUsu_TCorSal.Close;
                                       Dm1.CadUsu_TCorSal.Parameters.ParamByName('codpro').Value := Dm1.ConsE075DerCODPRO.Value;
                                       Dm1.CadUsu_TCorSal.Parameters.ParamByName('codder').Value := Dm1.ConsE075DerCODDER.Value;
                                       Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdUSU_COR001.Value;
                                       Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor2').Value := Dm1.ConsUsu_T120IpdUSU_COR002.Value;
                                       Dm1.CadUsu_TCorSal.Open;
                                       Dm1.CadUsu_TCorSal.Edit;
                                       Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.CadUsu_TCorSalUSU_QTDABE.Value + Dm1.ConsUsu_T120IpdUSU_QTDABE.Value;
                                       Dm1.CadUsu_TCorSal.Post;
                                    end;//15
                                 Dm1.ConsUsu_T120Ipd.Next;
                                end;//6


                           end;//40
                     end;//4


                 BarraProgresso.Position := BarraProgresso.Position + 1;
                 Dm1.ConsE075Der.Next;
              end;//3
             //atualiza a consulta das cargas liberadas para producao
            Dm1.ConsUsu_TPreCarLib.Close;
            Dm1.ConsUsu_TPreCarLib.Open;
            //atualiza a consulta das cargas em produao
            Dm1.ConsUsu_TCarPro.Close;
            Dm1.ConsUsu_TCarPro.Open;
            BarraProgresso.Visible := false;
        end;//2
  end;//1
end;

procedure TFCorteTecCarga.EdPesquisaChange(Sender: TObject);
begin
    dm1.ConsUsu_TProCar.Close;
    dm1.ConsUsu_TProCar.SQL.Clear;
    dm1.ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
    dm1.ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
    dm1.ConsUsu_TProCar.SQL.Add('where');
    dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'') and');
    dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane and');
    dm1.ConsUsu_TProCar.SQL.Add('e075pro.despro LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
    dm1.ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
    dm1.ConsUsu_TProCar.Parameters.ParamByName('numane').Value := dm1.ConsUsu_TCarProUSU_NUMANE.Value;
    dm1.ConsUsu_TProCar.Open;
end;

procedure TFCorteTecCarga.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FCorteTecCarga.Name,FPrincipal.vnCodCon);

  PaginaControle.ActivePageIndex := 0;

  if (FPrincipal.cd_usuario <> 3) and (FPrincipal.cd_usuario <> 4) then
     begin
       BAltResolucao.Visible := false;
     end;

end;

procedure TFCorteTecCarga.EdPesquisa1Change(Sender: TObject);
begin
    dm1.ConsUsu_TProCar1.Close;
    dm1.ConsUsu_TProCar1.SQL.Clear;
    dm1.ConsUsu_TProCar1.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
    dm1.ConsUsu_TProCar1.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
    dm1.ConsUsu_TProCar1.SQL.Add('where');
    dm1.ConsUsu_TProCar1.SQL.Add('usu_tprocar.usu_procor in (''S'',''P'') and');
    dm1.ConsUsu_TProCar1.SQL.Add('usu_tprocar.usu_numane = :numane and');
    dm1.ConsUsu_TProCar1.SQL.Add('e075pro.despro LIKE'+QuotedStr('%'+EdPesquisa1.Text+'%'));
    dm1.ConsUsu_TProCar1.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
    dm1.ConsUsu_TProCar1.Parameters.ParamByName('numane').Value := dm1.ConsUsu_TCarProUSU_NUMANE.Value;
    dm1.ConsUsu_TProCar1.Open;
end;

procedure TFCorteTecCarga.TbSaldoGeralShow(Sender: TObject);
begin
    Dm1.ConsUsu_TSalPro.Close;
    Dm1.ConsUsu_TSalPro.SQL.Clear;
    Dm1.ConsUsu_TSalPro.SQL.Add('select usu_tsalpro.*,e075pro.despro');
    Dm1.ConsUsu_TSalPro.SQL.Add('from usu_tsalpro');
    Dm1.ConsUsu_TSalPro.SQL.Add('inner join e075pro on e075pro.codpro = usu_tsalpro.usu_codpro');
    Dm1.ConsUsu_TSalPro.SQL.Add('order by e075pro.despro,usu_tsalpro.usu_codder');
    Dm1.ConsUsu_TSalPro.Open;
    EdPesquisa2.Clear;
end;

procedure TFCorteTecCarga.EdPesquisa2Change(Sender: TObject);
begin
    Dm1.ConsUsu_TSalPro.Close;
    Dm1.ConsUsu_TSalPro.SQL.Clear;
    Dm1.ConsUsu_TSalPro.SQL.Add('select usu_tsalpro.*,e075pro.despro');
    Dm1.ConsUsu_TSalPro.SQL.Add('from usu_tsalpro');
    Dm1.ConsUsu_TSalPro.SQL.Add('inner join e075pro on e075pro.codpro = usu_tsalpro.usu_codpro');
    Dm1.ConsUsu_TSalPro.SQL.Add('where e075pro.despro LIKE'+QuotedStr('%'+EdPesquisa2.Text+'%'));
    Dm1.ConsUsu_TSalPro.SQL.Add('order by e075pro.despro,usu_tsalpro.usu_codder');
    Dm1.ConsUsu_TSalPro.Open;
end;

procedure TFCorteTecCarga.BAltResolucaoClick(Sender: TObject);
begin
 PTela(Sender);
end;

procedure TFCorteTecCarga.BBaixaClick(Sender: TObject);
begin
if not Dm1.ConsUsu_TCarPro.IsEmpty then
   begin
     FBaixaCorteInd := TFBaixaCorteInd.Create(Self);
     FBaixaCorteInd.LNumAne.Caption := IntToStr(Dm1.ConsUsu_TProCarUSU_NUMANE.Value);
     FBaixaCorteInd.LCodPro.Caption := Dm1.ConsUsu_TProCarUSU_CODPRO.AsString;
     FBaixaCorteInd.LCodDer.Caption := Dm1.ConsUsu_TProCarUSU_CODDER.AsString;
     FBaixaCorteInd.LDesPro.Caption := Dm1.ConsUsu_TProCarDESPRO.AsString;
     FBaixaCorteInd.LQtdAbe.Caption := IntToStr(Dm1.ConsUsu_TProCarUSU_QTDABE.Value);
     FBaixaCorteInd.LQtdPedida.Caption := IntToStr(Dm1.ConsUsu_TProCarUSU_QTDPED.Value);
     FBaixaCorteInd.ShowModal;
     FreeAndNil(FBaixaCorteInd);
  end;
end;

procedure TFCorteTecCarga.BDiferencaTecidoClick(Sender: TObject);
begin
    FDiferencaCorteTecido := TFDiferencaCorteTecido.Create(Self);
    FDiferencaCorteTecido.ShowModal;
    FreeAndNil(FDiferencaCorteTecido);
end;

procedure TFCorteTecCarga.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       BBaixa.Click;
    end;
end;

procedure TFCorteTecCarga.DBGrid3DblClick(Sender: TObject);
begin
  BBaixa.Click;
end;

procedure TFCorteTecCarga.BMovimentosClick(Sender: TObject);
begin
    FMovBaixaCorte := TFMovBaixaCorte.Create(Self);
    FMovBaixaCorte.EdData1.Date := Date;
    FMovBaixaCorte.EdData2.Date := Date;
    FMovBaixaCorte.ShowModal;
    FreeAndNil(FMovBaixaCorte);
end;

procedure TFCorteTecCarga.Movimentos1Click(Sender: TObject);
begin
    FMovBaixaCorte := TFMovBaixaCorte.Create(Self);
    FMovBaixaCorte.EdCarga.Text := IntToStr(Dm1.ConsUsu_TCarProUSU_NUMANE.Value);
    FMovBaixaCorte.EdData1.Date := StrToDate('31/12/1990');
    FMovBaixaCorte.EdData2.Date := Date;
    FMovBaixaCorte.ShowModal;
    FreeAndNil(FMovBaixaCorte);
end;

procedure TFCorteTecCarga.Movimentos2Click(Sender: TObject);
begin
    FMovBaixaCorte := TFMovBaixaCorte.Create(Self);
    FMovBaixaCorte.EdCarga.Text := IntToStr(Dm1.ConsUsu_TProCarUSU_NUMANE.Value);
    FMovBaixaCorte.EdProduto.Text := Dm1.ConsUsu_TProCarUSU_CODPRO.AsString;
    FMovBaixaCorte.EdDerivacao.Text := Dm1.ConsUsu_TProCarUSU_CODDER.AsString;
    FMovBaixaCorte.EdData1.Date := StrToDate('31/12/1990');
    FMovBaixaCorte.EdData2.Date := Date;
    FMovBaixaCorte.ShowModal;
    FreeAndNil(FMovBaixaCorte);
end;

procedure TFCorteTecCarga.Movimentos3Click(Sender: TObject);
begin
    FMovBaixaCorte := TFMovBaixaCorte.Create(Self);
    FMovBaixaCorte.EdCarga.Text := IntToStr(Dm1.ConsUsu_TProCar1USU_NUMANE.Value);
    FMovBaixaCorte.EdProduto.Text := Dm1.ConsUsu_TProCar1USU_CODPRO.AsString;
    FMovBaixaCorte.EdDerivacao.Text := Dm1.ConsUsu_TProCar1USU_CODDER.AsString;
    FMovBaixaCorte.EdData1.Date := StrToDate('31/12/1990');
    FMovBaixaCorte.EdData2.Date := Date;
    FMovBaixaCorte.ShowModal;
    FreeAndNil(FMovBaixaCorte);
end;

procedure TFCorteTecCarga.PopAdicionaProdClick(Sender: TObject);
begin
    FAlteraProdCarCorte := TFAlteraProdCarCorte.Create(Self);
    FAlteraProdCarCorte.EdCarga.Text := IntToStr(dm1.ConsUsu_tCorCar1USU_NUMANE.Value);
    FAlteraProdCarCorte.EdProduto.Text := dm1.ConsUsu_tCorCar1USU_CODPRO.Value;
    FAlteraProdCarCorte.EdDerivacao.Text := dm1.ConsUsu_tCorCar1USU_CODDER.Value;


    FAlteraProdCarCorte.RInserir.Checked := true;
    FAlteraProdCarCorte.ShowModal;
    FreeAndNil(FAlteraProdCarCorte);
end;

procedure TFCorteTecCarga.PopAdicionarClick(Sender: TObject);
begin
    FAlteraProdCarCorte := TFAlteraProdCarCorte.Create(Self);
    FAlteraProdCarCorte.EdCarga.Text := IntToStr(dm1.ConsUsu_tCorCar1USU_NUMANE.Value);
    FAlteraProdCarCorte.EdProduto.Text := dm1.ConsUsu_tCorCar1USU_CODPRO.Value;
    FAlteraProdCarCorte.EdDerivacao.Text := dm1.ConsUsu_tCorCar1USU_CODDER.Value;
    if dm1.ConsUsu_tCorCar1USU_TIPCOM.Value = 1 then
       begin
         FAlteraProdCarCorte.EdTipComb.ItemIndex := 0;
         FAlteraProdCarCorte.EdCor01.Text := dm1.ConsUsu_tCorCar1USU_CODCOR1.Value;
       end
    else
    if dm1.ConsUsu_tCorCar1USU_TIPCOM.Value = 2 then
       begin
         FAlteraProdCarCorte.EdTipComb.ItemIndex := 1;
         FAlteraProdCarCorte.EdCor01.Text := dm1.ConsUsu_tCorCar1USU_CODCOR1.Value;
         FAlteraProdCarCorte.EdCor02.Text := dm1.ConsUsu_tCorCar1USU_CODCOR2.Value;
       end
    else
    if dm1.ConsUsu_tCorCar1USU_TIPCOM.Value = 3 then
       begin
         FAlteraProdCarCorte.EdTipComb.ItemIndex := 2;
         FAlteraProdCarCorte.EdCor01.Text := dm1.ConsUsu_tCorCar1USU_CODCOR1.Value;
         FAlteraProdCarCorte.EdCor02.Text := dm1.ConsUsu_tCorCar1USU_CODCOR2.Value;
       end;

    FAlteraProdCarCorte.RInserir.Checked := true;
    FAlteraProdCarCorte.ShowModal;
    FreeAndNil(FAlteraProdCarCorte);

end;

procedure TFCorteTecCarga.PopExcluiProdClick(Sender: TObject);
begin
    FAlteraProdCarCorte := TFAlteraProdCarCorte.Create(Self);
    FAlteraProdCarCorte.EdCarga.Text := IntToStr(dm1.ConsUsu_tCorCar1USU_NUMANE.Value);
    FAlteraProdCarCorte.EdProduto.Text := dm1.ConsUsu_tCorCar1USU_CODPRO.Value;
    FAlteraProdCarCorte.EdDerivacao.Text := dm1.ConsUsu_tCorCar1USU_CODDER.Value;


    FAlteraProdCarCorte.RExcluir.Checked := true;
    FAlteraProdCarCorte.ShowModal;
    FreeAndNil(FAlteraProdCarCorte);
end;

procedure TFCorteTecCarga.PopExcluirClick(Sender: TObject);
begin
FAlteraProdCarCorte := TFAlteraProdCarCorte.Create(Self);
    FAlteraProdCarCorte.EdCarga.Text := IntToStr(dm1.ConsUsu_tCorCar1USU_NUMANE.Value);
    FAlteraProdCarCorte.EdProduto.Text := dm1.ConsUsu_tCorCar1USU_CODPRO.Value;
    FAlteraProdCarCorte.EdDerivacao.Text := dm1.ConsUsu_tCorCar1USU_CODDER.Value;
    if dm1.ConsUsu_tCorCar1USU_TIPCOM.Value = 1 then
       begin
         FAlteraProdCarCorte.EdTipComb.ItemIndex := 0;
         FAlteraProdCarCorte.EdCor01.Text := dm1.ConsUsu_tCorCar1USU_CODCOR1.Value;
       end
    else
    if dm1.ConsUsu_tCorCar1USU_TIPCOM.Value = 2 then
       begin
         FAlteraProdCarCorte.EdTipComb.ItemIndex := 1;
         FAlteraProdCarCorte.EdCor01.Text := dm1.ConsUsu_tCorCar1USU_CODCOR1.Value;
         FAlteraProdCarCorte.EdCor02.Text := dm1.ConsUsu_tCorCar1USU_CODCOR2.Value;
       end
    else
    if dm1.ConsUsu_tCorCar1USU_TIPCOM.Value = 3 then
       begin
         FAlteraProdCarCorte.EdTipComb.ItemIndex := 2;
         FAlteraProdCarCorte.EdCor01.Text := dm1.ConsUsu_tCorCar1USU_CODCOR1.Value;
         FAlteraProdCarCorte.EdCor02.Text := dm1.ConsUsu_tCorCar1USU_CODCOR2.Value;
       end;

    FAlteraProdCarCorte.RExcluir.Checked := true;
    FAlteraProdCarCorte.ShowModal;
    FreeAndNil(FAlteraProdCarCorte);
end;

procedure TFCorteTecCarga.BAlteraProdutosClick(Sender: TObject);
begin
    FAlteraProdCarCorte := TFAlteraProdCarCorte.Create(Self);
    FAlteraProdCarCorte.ShowModal;
    FreeAndNil(FAlteraProdCarCorte);
end;

procedure TFCorteTecCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FPrincipal.ApagaTela(FCorteTecCarga.Name,FPrincipal.vnCodCon);
end;

end.
