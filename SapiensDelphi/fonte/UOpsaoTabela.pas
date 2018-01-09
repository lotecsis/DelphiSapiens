unit UOpsaoTabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, RbRadioButton, RbDrawCore, RbButton, DB, StdCtrls,
  ExtCtrls;

type
  TFOpsaoTabela = class(TForm)
    BImprimir: TRbButton;
    CBGrupo: TComboBox;
    RadioGroup1: TRadioGroup;
    RbGrupo: TRbRadioButton;
    RbGeral: TRbRadioButton;
    procedure FormShow(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tabela : Integer;
  end;

var
  FOpsaoTabela: TFOpsaoTabela;

implementation

uses UQrTabelaPreco, UDataModule5, UDataModule3;

{$R *.dfm}

procedure TFOpsaoTabela.FormShow(Sender: TObject);
begin
  tabela := DataModule3.IBQConsTabPrecoCD_TABELA.AsInteger;
  
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
procedure TFOpsaoTabela.BImprimirClick(Sender: TObject);
begin
  DataModule5.IBQConsProdTabela.Close;
  DataModule5.IBQConsGrupoProd.Close;
  DataModule5.IBQConsGrupoProd.SQL.Clear;
  DataModule5.IBQConsGrupoProd.SQL.Add('select * from GRUPO_PRODUTO');
  if RbGrupo.Checked then
    begin
      DataModule5.IBQConsGrupoProd.SQL.Add('where ds_grupo = :pgrupo');
      DataModule5.IBQConsGrupoProd.ParamByName('pgrupo').AsString := CBGrupo.Text;
    end;
  DataModule5.IBQConsGrupoProd.SQL.Add('order by cd_grupo');
  DataModule5.IBQConsProdTabela.ParamByName('ptabela').AsInteger := tabela;
  DataModule5.IBQConsGrupoProd.Open;
  DataModule5.IBQConsProdTabela.Open;

  QrTabelaPreco.Preview;
  Close;
end;

end.
