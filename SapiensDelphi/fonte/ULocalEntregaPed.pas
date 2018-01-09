unit ULocalEntregaPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RbDrawCore, RbButton, ExtCtrls, StdCtrls, DBCtrls, DB,
  Mask, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons;

type
  TFLocalEntregaPed = class(TForm)
    Panel1: TPanel;
    BInserir: TRbButton;
    BCancelar: TRbButton;
    BConfirmar: TRbButton;
    BAlterar: TRbButton;
    BExcluir: TRbButton;
    BSair: TRbButton;
    Label1: TLabel;
    DBECidade: TDBEdit;
    DSLocalEntrega: TDataSource;
    Label2: TLabel;
    DBERua: TDBEdit;
    Label3: TLabel;
    DBECep: TDBEdit;
    Label4: TLabel;
    DBEBairro: TDBEdit;
    BPesqCidade: TSpeedButton;
    EdDsCidade: TEdit;
    EdUf: TEdit;
    procedure BSairClick(Sender: TObject);
    procedure DsFormulariosStateChange(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BAlterarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure DBEGrigGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BPesqCidadeClick(Sender: TObject);
    procedure DBECidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BConfirmarClick(Sender: TObject);
    procedure DSLocalEntregaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocalEntregaPed: TFLocalEntregaPed;

implementation

uses UDataModule1, UDataModule3, UConsSimpCidade;

{$R *.dfm}

procedure TFLocalEntregaPed.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFLocalEntregaPed.DsFormulariosStateChange(Sender: TObject);
begin
if DataModule1.IBDFormularios.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;
      //BProcuraFornecedor.Enabled := true;

    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;
      //BProcuraFornecedor.Enabled := false;

    end;
end;

procedure TFLocalEntregaPed.BInserirClick(Sender: TObject);
begin
DataModule3.IBDLocalEntrega.Open;
DataModule3.IBDLocalEntrega.Insert;
DataModule3.IBDLocalEntregaCD_PEDIDO.AsInteger :=
DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
DBECidade.SetFocus;


end;

procedure TFLocalEntregaPed.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
 Begin
  DataModule3.IBDLocalEntrega.Cancel;
 end;
end;

procedure TFLocalEntregaPed.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if DataModule1.IBDFormularios.State in [dsedit,dsinsert] then
  begin
   if Application.MessageBox('Deseja Sair do Cadastro ?', 'Cancela Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
     DataModule1.IBDFormularios.Cancel;
     canclose :=true;
    end;
  end
 else
   canclose := true;
end;

procedure TFLocalEntregaPed.BAlterarClick(Sender: TObject);
begin
if DataModule3.IBDLocalEntrega.IsEmpty then
 begin
  Showmessage ('Local de entrega não pode ser editado vazio');
 end
  else
    begin
      DataModule3.IBDLocalEntrega.Edit;

    end;
end;

procedure TFLocalEntregaPed.BExcluirClick(Sender: TObject);
begin
if not DataModule3.IBDLocalEntrega.IsEmpty then
  Begin
   if Application.MessageBox('Deseja Excluir o Registro?', 'Excluir Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DataModule3.IBDLocalEntrega.Delete;
     DataModule1.IBTTransacao.CommitRetaining;
     BInserir.Enabled := true;
     EdDsCidade.Clear;
     EdUf.Clear;
    
    end;
  end
 else
  Begin
   Showmessage('Não existe Registros a serem excluidos ou não foi feita a seleção do registro !');

  end;
end;

procedure TFLocalEntregaPed.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFLocalEntregaPed.DBEGrigEnter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFLocalEntregaPed.DBEGrigExit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFLocalEntregaPed.DBEGrigGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
if not Highlight then
  begin
    Background := clWindow;
  end
  else
   begin
    Background := clMenuHighlight;
   end;
end;

procedure TFLocalEntregaPed.BPesqCidadeClick(Sender: TObject);
begin
Application.CreateForm(TFConsSimpCidade, FConsSimpCidade);
  if FConsSimpCidade.ShowModal = mrOk then
    begin
      DataModule3.IBDLocalEntregaCD_CIDADE.AsInteger := DataModule1.IBQConsultaCidadeCD_CIDADE.AsInteger;
      EdDsCidade.Text := DataModule1.IBQConsultaCidadeNM_CIDADE.AsString;
      EdUf.Text := DataModule1.IBQConsultaCidadeSIGLA_UF.AsString;
    end;
end;

procedure TFLocalEntregaPed.DBECidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_F5 then
BPesqCidade.Click;
end;

procedure TFLocalEntregaPed.BConfirmarClick(Sender: TObject);
begin
if DBECidade.Text = '' then
        begin
          MessageDlg('Campo Cidade é obrigatório.',mtWarning,[mbok],0);
          DBECidade.SetFocus;
        end
      else
        if DBERua.Text = '' then
          begin
          MessageDlg('Campo Rua é obrigatório.',mtWarning,[mbok],0);
          DBERua.SetFocus;
          end
        else
        if DBEBairro.Text = '' then
          begin
          MessageDlg('Campo Bairro é obrigatório.',mtWarning,[mbok],0);
          DBEBairro.SetFocus;
          end
        else
        if DBECep.Text = '' then
          begin
          MessageDlg('Campo Cep é obrigatório.',mtWarning,[mbok],0);
          DBECep.SetFocus;
          end
        else
          begin
            DataModule3.IBDLocalEntrega.Post;
            DataModule1.IBTTransacao.CommitRetaining;


            DataModule3.IBDLocalEntrega.Close;
            DataModule3.IBDLocalEntrega.ParamByName('ppedido').AsInteger :=
            DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
            DataModule3.IBDLocalEntrega.Open;
            if not(DataModule3.IBDLocalEntrega.IsEmpty) then
              begin
                BInserir.Enabled := false;
              end;
            end;
end;

procedure TFLocalEntregaPed.DSLocalEntregaStateChange(Sender: TObject);
begin
if DataModule3.IBDLocalEntrega.State in [dsinsert,dsedit]then
    begin
      BInserir.Enabled := false;
      BAlterar.Enabled := false;
      BExcluir.Enabled := false;
      BCancelar.Enabled := true;
      BConfirmar.Enabled := true;


    end
  else
    begin
      BInserir.Enabled := true;
      BAlterar.Enabled := true;
      BExcluir.Enabled := true;
      BCancelar.Enabled := false;
      BConfirmar.Enabled := false;


    end;
end;

procedure TFLocalEntregaPed.FormShow(Sender: TObject);
begin
  DataModule3.IBDLocalEntrega.Close;
  DataModule3.IBDLocalEntrega.ParamByName('ppedido').AsInteger :=
  DataModule3.IBDPedidoCD_PEDIDO.AsInteger;
  DataModule3.IBDLocalEntrega.Open;
  if not(DataModule3.IBDLocalEntrega.IsEmpty) then
    begin
       BInserir.Enabled := false;
    end;

  DataModule1.IBQConsultaCidade.Close;
  DataModule1.IBQConsultaCidade.SQL.Clear;
  DataModule1.IBQConsultaCidade.SQL.Add('select * from CIDADE');
  DataModule1.IBQConsultaCidade.SQL.Add('where cd_CIDADE = :pcidade');
  DataModule1.IBQConsultaCidade.ParamByName('pcidade').AsInteger :=
  DataModule3.IBDLocalEntregaCD_CIDADE.AsInteger;
  DataModule1.IBQConsultaCidade.Open;

  EdDsCidade.Text := DataModule1.IBQConsultaCidadeNM_CIDADE.AsString;
  EdUf.Text := DataModule1.IBQConsultaCidadeSIGLA_UF.AsString;

end;

procedure TFLocalEntregaPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
