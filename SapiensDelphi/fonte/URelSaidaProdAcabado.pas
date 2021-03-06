unit URelSaidaProdAcabado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RbButton, Mask, rxToolEdit, Buttons, RbDrawCore,
  RbRadioButton, AppEvnts;

type
  TFRelSaidaProdAcabado = class(TForm)
    GroupBox1: TGroupBox;
    BProduto: TSpeedButton;
    CBGrupo: TComboBox;
    RbProduto: TRbRadioButton;
    RbGrupo: TRbRadioButton;
    RbGeral: TRbRadioButton;
    EdProduto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    BImprimir: TRbButton;
    procedure FormShow(Sender: TObject);
    procedure BProdutoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ActionExecute(Action: TBasicAction;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelSaidaProdAcabado: TFRelSaidaProdAcabado;

implementation

uses UDataModule5, UConsSimpProduto, UDataModule3, DB, UQrSaidaProdAcabado;

{$R *.dfm}

procedure TFRelSaidaProdAcabado.FormShow(Sender: TObject);
begin
  DataModule5.IBQGrupoProdCombo.Close;
   DataModule5.IBQGrupoProdCombo.Open;
   DataModule5.IBQGrupoProdCombo.First;
   while not DataModule5.IBQGrupoProdCombo.Eof do
    begin
      CBGrupo.Items.Add(DataModule5.IBQGrupoProdCombo.Fields[1].AsString);
      DataModule5.IBQGrupoProdCombo.Next;
    end;
     CBGrupo.ItemIndex := 0;
end;

procedure TFRelSaidaProdAcabado.BProdutoClick(Sender: TObject);
begin
if RbProduto.Checked then
begin
  FConsSimpProduto := TFConsSimpProduto.Create(Self);
  if FConsSimpProduto.ShowModal = mrOk then
    begin
      EdProduto.Text :=
      DataModule3.IBQConsProdutoDS_PRODUTO.AsString;
    end;
  FreeAndNil(FConsSimpProduto);
end;
end;

procedure TFRelSaidaProdAcabado.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then
    begin
       Close;
    end;
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFRelSaidaProdAcabado.EdProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if key = VK_F5 then
    begin
      BProdutoClick(Sender);
    end;
end;

procedure TFRelSaidaProdAcabado.BImprimirClick(Sender: TObject);
begin
  if Data1.Date = 0 then
    begin
      MessageDlg('Informe a data inicial.',mtWarning,[mbok],0);
      Data1.SetFocus;
    end
  else
  if Data2.Date = 0 then
    begin
       MessageDlg('Informe a data final.',mtWarning,[mbok],0);
      Data2.SetFocus;
    end
    else
   if (RbGrupo.Checked = true) and (CBGrupo.Text = '') then
    begin
      Application.MessageBox('Informe o Grupo', 'Campo em Branco', MB_ICONWARNING+MB_OK);
      CBGrupo.SetFocus;
    end
   else
  if (RbProduto.Checked = true) and (EdProduto.Text = '') then
    begin
      Application.MessageBox('Informe o Produto', 'Campo em Branco', MB_ICONWARNING+MB_OK);
      EdProduto.SetFocus;
    end
  else
    begin

    DataModule5.IBQSaidaProduto.Close;
    DataModule5.IBQSaidaProdData.Close;
    DataModule5.IBQSaidaProdData.SQL.Clear;
    DataModule5.IBQSaidaProdData.SQL.Add('select distinct(sp.dt_saida),');
    DataModule5.IBQSaidaProdData.SQL.Add('count(sp.cd_saida) as qtde_saida');
    DataModule5.IBQSaidaProdData.SQL.Add('from saida_prod_acabado sp');
    DataModule5.IBQSaidaProdData.SQL.Add('inner join PRODUTO prod on prod.cd_produto = sp.cd_produto');
    DataModule5.IBQSaidaProdData.SQL.Add('inner join GRUPO_PRODUTO gp_prod on gp_prod.cd_grupo = prod.cd_grupo_prod');
    DataModule5.IBQSaidaProdData.SQL.Add('where');
    DataModule5.IBQSaidaProdData.SQL.Add('sp.dt_saida between :pdata1 and :pdata2');
    if RbGrupo.Checked then
      begin
      DataModule5.IBQSaidaProdData.SQL.Add('and gp_prod.ds_grupo LIKE'+ QuotedStr('%'+CBGrupo.Text+'%'));
      end;
    if RbProduto.Checked then
      begin
      DataModule5.IBQSaidaProdData.SQL.Add('and prod.ds_produto LIKE'+QuotedStr('%'+EdProduto.Text+'%'));
      end;
    DataModule5.IBQSaidaProdData.SQL.Add('group by sp.dt_saida');
    DataModule5.IBQSaidaProdData.SQL.Add('order by sp.dt_saida asc');
    DataModule5.IBQSaidaProdData.ParamByName('pdata1').AsDate := Data1.Date;
    DataModule5.IBQSaidaProdData.ParamByName('pdata2').AsDate := Data2.Date;


    DataModule5.IBQSaidaProduto.SQL.Clear;
    DataModule5.IBQSaidaProduto.SQL.Add('select sp.*, prod.ds_produto');
    DataModule5.IBQSaidaProduto.SQL.Add('from SAIDA_PROD_ACABADO sp');
    DataModule5.IBQSaidaProduto.SQL.Add('inner join PRODUTO prod on prod.cd_produto = sp.cd_produto');
    DataModule5.IBQSaidaProduto.SQL.Add('inner join GRUPO_PRODUTO gp_prod on gp_prod.cd_grupo = prod.cd_grupo_prod');
    DataModule5.IBQSaidaProduto.SQL.Add('where');
    DataModule5.IBQSaidaProduto.SQL.Add('sp.dt_saida = :dt_saida');


    if RbGrupo.Checked then
      begin
        DataModule5.IBQSaidaProduto.SQL.Add('and gp_prod.ds_grupo LIKE'+ QuotedStr('%'+CBGrupo.Text+'%'));
      end;
    if RbProduto.Checked then
      begin
        DataModule5.IBQSaidaProduto.SQL.Add('and prod.ds_produto LIKE'+QuotedStr('%'+EdProduto.Text+'%'));
      end;
    DataModule5.IBQSaidaProduto.SQL.Add('order by sp.dt_saida asc, sp.hr_saida asc');

    DataModule5.IBQSaidaProdData.Open;
    DataModule5.IBQSaidaProduto.Open;

    QrSaidaProdAcabado.LData1.Caption := DateToStr(Data1.Date);
    QrSaidaProdAcabado.LData2.Caption := DateToStr(Data2.Date);

    QrSaidaProdAcabado.Preview;



   end;
end;

procedure TFRelSaidaProdAcabado.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFRelSaidaProdAcabado.ApplicationEvents1ActionExecute(
  Action: TBasicAction; var Handled: Boolean);
begin
  if RbGrupo.Checked then
  begin
    CBGrupo.Enabled := true;
  end
  else
    CBGrupo.Enabled := false;
end;

end.
