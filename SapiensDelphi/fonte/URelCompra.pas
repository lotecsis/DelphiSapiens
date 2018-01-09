unit URelCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, RXDBCtrl, RbButton, StdCtrls, Mask,
  rxToolEdit, RbDrawCore, RbRadioButton, DB;

type
  TFRelCompra = class(TForm)
    GroupBox1: TGroupBox;
    RbEstoqueMinimo: TRbRadioButton;
    GroupBox2: TGroupBox;
    RbGeral: TRbRadioButton;
    RbClasse: TRbRadioButton;
    RbMateriaPrima: TRbRadioButton;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdPesquisa: TEdit;
    BPesquisa: TRbButton;
    BProcura: TSpeedButton;
    DsGrid: TDataSource;
    procedure BPesquisaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mm(Sender: TObject);
    procedure BProcuraClick(Sender: TObject);
    procedure EdPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RbGeralClick(Sender: TObject);
    procedure RbMateriaPrimaClick(Sender: TObject);
    procedure RbClasseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function SomaData(d1 : TDate ; d2 : TDate) : Integer;
  end;

var
  FRelCompra: TFRelCompra;

implementation

uses UDataModule5, UConsSimpMtPrima, UDataModule1, UConsSimpClasse,
  UQrRelacaoCompra;

{$R *.dfm}

Function TFRelCompra.SomaData(d1 : TDate ; d2 : TDate) : Integer;
var
dias : integer;
begin
   //
   if d2 > d1 then
   begin
   dias := 0;
   While d1 <> d2 do
     begin
     Inc(dias);
     d1 := d1 + 1;
     end;

   end
   
   else
   
   begin
   dias := 0;
   While d1 <> d2 do
     begin
     Inc(dias);
     d2 := d2 + 1;
     end;
   end;
   
   Result := dias;
   //
end;

procedure TFRelCompra.BPesquisaClick(Sender: TObject);
var qtde_dias : Integer;
begin
  if Data1.Date = 0 then
    begin
      MessageDlg('Data Inicial Obrigatório.',mtWarning,[mbok],0);
      Data1.SetFocus;
    end
  else
  if Data2.Date = 0 then
    begin
      MessageDlg('Data Final Obrigatório.',mtWarning,[mbok],0);
      Data2.SetFocus;
    end
  else
  begin//1
      //pega a quantidade de dias
      //qtde_dias := SomaData(Data1.Date,Data2.Date);

      DataModule5.IBQRelCompraConsumo.Close;
      DataModule5.IBQRelCompraConsumo.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQRelCompraConsumo.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQRelCompraQtdePedido.Close;

      DataModule5.IBQRelCompra.Close;
      DataModule5.IBQRelCompra.SQL.Clear;
      DataModule5.IBQRelCompra.SQL.Add('select mt.cd_mat_prima, mt.ds_mat_prima, mt.qtde_estoque,');
      DataModule5.IBQRelCompra.SQL.Add('un.sigla_unidade');
      DataModule5.IBQRelCompra.SQL.Add('from');
      DataModule5.IBQRelCompra.SQL.Add('MATERIA_PRIMA mt');
      DataModule5.IBQRelCompra.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQRelCompra.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQRelCompra.SQL.Add('where');

   if (RbGeral.Checked = true) and (RbEstoqueMinimo.Checked = true) then
    begin//2
      DataModule5.IBQRelCompra.SQL.Add('mt.qtde_estoque < mt.estoque_minimo');
    end;//2

  if (RbMateriaPrima.Checked = true) and (RbEstoqueMinimo.Checked = true)then
    begin//3
    if EdPesquisa.Text = '' then
      begin
        MessageDlg('Matéria Prima Obrigatório.',mtWarning,[mbok],0);
        EdPesquisa.SetFocus;
        Abort;
      end
    else
    begin//4
      DataModule5.IBQRelCompra.SQL.Add('mt.ds_mat_prima LIKE' +QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQRelCompra.SQL.Add('and mt.qtde_estoque < mt.estoque_minimo');
    end;//4
    end;//3

    if (RbClasse.Checked = true) and (RbEstoqueMinimo.Checked = true)then
    begin//5
    if EdPesquisa.Text = '' then
      begin
        MessageDlg('Classe Obrigatório.',mtWarning,[mbok],0);
        EdPesquisa.SetFocus;
         Abort;
      end
    else
    begin//6
      DataModule5.IBQRelCompra.SQL.Add('classe.ds_classe LIKE' +QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQRelCompra.SQL.Add('and mt.qtde_estoque < mt.estoque_minimo');
    end;//6
    end;//5

   DataModule5.IBQRelCompra.SQL.Add(' order by mt.ds_mat_prima');
   DataModule5.IBQRelCompra.Open;
   DataModule5.IBQRelCompraConsumo.Open;
   DataModule5.IBQRelCompraQtdePedido.Open;


    QrRelacaoCompra.LData1.Caption := DateToStr(Data1.Date);
    QrRelacaoCompra.LData2.Caption := DateToStr(Data2.Date);
    QrRelacaoCompra.Preview;
  end;//1
end;

procedure TFRelCompra.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFRelCompra.mm(Sender: TObject);
begin
  EdPesquisa.Clear;
  Data1.Clear;
  Data2.Clear;
  DataModule5.IBQRelCompra.Close;
  RbGeral.Checked := true;
  RbEstoqueMinimo.Checked := true;

end;

procedure TFRelCompra.BProcuraClick(Sender: TObject);
begin
if RbMateriaPrima.Checked = true then
  begin
    Application.CreateForm(TFConsSimpMtPrima, FConsSimpMtPrima);
      if FConsSimpMtPrima.ShowModal = mrOk then
        begin
          EdPesquisa.Text := DataModule1.IBQConsMatPrimaDS_MAT_PRIMA.AsString;
        end;
  end
else
if RbClasse.Checked = true then
begin
  Application.CreateForm(TFConsSimpClasse, FConsSimpClasse);
  if FConsSimpClasse.ShowModal = mrOk then
    begin
      EdPesquisa.Text := DataModule1.IBQConsClasseDS_CLASSE.AsString;
    end;
  end;
end;
procedure TFRelCompra.EdPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_F5 then
      BProcuraClick(Sender);
end;

procedure TFRelCompra.BImprimirClick(Sender: TObject);
begin
if not DataModule5.IBQRelCompra.IsEmpty then
  begin
    //QrRelacaoCompra :=TQrRelacaoCompra.Create(Self);
    
  end;


end;

procedure TFRelCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFRelCompra.RbGeralClick(Sender: TObject);
begin
  EdPesquisa.Clear;
end;

procedure TFRelCompra.RbMateriaPrimaClick(Sender: TObject);
begin
EdPesquisa.Clear;
end;

procedure TFRelCompra.RbClasseClick(Sender: TObject);
begin
EdPesquisa.Clear;
end;

end.
