unit UControleConexaoTelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, rxToolEdit, rxCurrEdit, DB, ADODB,
  Provider, DBClient, Buttons, AppEvnts;

type
  TFControleConexaoTelas = class(TForm)
    dbg1: TDBGrid;
    dbg2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    edtLimite: TCurrencyEdit;
    Label3: TLabel;
    Logados: TADOQuery;
    Espera: TADOQuery;
    CadR911Mod: TADOQuery;
    ClientLogados: TClientDataSet;
    ProviderLogados: TDataSetProvider;
    dsClientLogados: TDataSource;
    LogadosNUMSEC: TBCDField;
    LogadosDATTIM: TFMTBCDField;
    LogadosCOMNAM: TStringField;
    LogadosUSRNAM: TStringField;
    LogadosAPPNAM: TStringField;
    LogadosAPPUSR: TStringField;
    LogadosIDINST: TIntegerField;
    LogadosNUMSEC_1: TBCDField;
    LogadosMODNAM: TStringField;
    ClientLogadosNUMSEC: TBCDField;
    ClientLogadosDATTIM: TFMTBCDField;
    ClientLogadosCOMNAM: TStringField;
    ClientLogadosUSRNAM: TStringField;
    ClientLogadosAPPNAM: TStringField;
    ClientLogadosAPPUSR: TStringField;
    ClientLogadosIDINST: TIntegerField;
    ClientLogadosNUMSEC_1: TBCDField;
    ClientLogadosMODNAM: TStringField;
    btnAtualizar: TBitBtn;
    edtQtdLogado: TCurrencyEdit;
    Label4: TLabel;
    dsEspera: TDataSource;
    btnLiberar: TBitBtn;
    EsperaNUMSEC: TBCDField;
    EsperaDATTIM: TFMTBCDField;
    EsperaCOMNAM: TStringField;
    EsperaUSRNAM: TStringField;
    EsperaAPPNAM: TStringField;
    EsperaAPPUSR: TStringField;
    EsperaIDINST: TIntegerField;
    EsperaNUMSEC_1: TBCDField;
    EsperaMODNAM: TStringField;
    CadR911ModNUMSEC: TBCDField;
    CadR911ModMODNAM: TStringField;
    btnBloquear: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure btnBloquearClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FControleConexaoTelas: TFControleConexaoTelas;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFControleConexaoTelas.btnAtualizarClick(Sender: TObject);
begin
    ClientLogados.Close;
    Logados.Close;
    Logados.Open;
    ClientLogados.Open;
    ClientLogados.Last;
    ClientLogados.First;
    edtQtdLogado.AsInteger := ClientLogados.RecordCount;

    Espera.Close;
    Espera.Open;
end;

procedure TFControleConexaoTelas.btnBloquearClick(Sender: TObject);
begin
  Espera.First;
  while not Espera.Eof do
     begin
        CadR911Mod.Close;
        CadR911Mod.Parameters.ParamByName('NUMSEC').Value := EsperaNUMSEC.AsInteger;
        CadR911Mod.Open;
        if not CadR911Mod.IsEmpty then
           begin
             CadR911Mod.Edit;
             CadR911ModMODNAM.Value := 'All';
             CadR911Mod.Post;
           end;

       Espera.Next;
     end;
  btnAtualizar.Click;
  btnLiberar.Enabled := True;
  btnBloquear.Enabled := False;
end;

procedure TFControleConexaoTelas.btnLiberarClick(Sender: TObject);
var vnQtdEsp, I : Integer;
begin
   ClientLogados.First;
   vnQtdEsp := edtQtdLogado.AsInteger - edtLimite.AsInteger;
   if vnQtdEsp >= 0 then
      begin
        vnQtdEsp := vnQtdEsp + 1;
        I := 1;
        while I <= vnQtdEsp do
          begin
            CadR911Mod.Close;
            CadR911Mod.Parameters.ParamByName('NUMSEC').Value := ClientLogadosNUMSEC.AsInteger;
            CadR911Mod.Open;
            if not CadR911Mod.IsEmpty then
               begin
                 CadR911Mod.Edit;
                 CadR911ModMODNAM.Value := 'A';
                 CadR911Mod.Post;
               end;

            ClientLogados.Next;
            Inc(I,1);
          end;

          btnAtualizar.Click;
          btnBloquear.Enabled := True;
          btnLiberar.Enabled := False;
      end;

end;

procedure TFControleConexaoTelas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    canClose := False;
with application do
 if not Espera.IsEmpty then
  begin
   MessageDlg('Clique em Bloquear para pode sair',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFControleConexaoTelas.FormShow(Sender: TObject);
begin
  btnAtualizar.Click;
  edtLimite.AsInteger := 10;
  btnBloquear.Enabled :=  not Espera.IsEmpty;
end;

end.
