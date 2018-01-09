unit UControleConexcoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ExtCtrls, StdCtrls, Buttons;

type
  TFControleConexca = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ConsUsu_T100CCU: TADOQuery;
    ConsUsu_T100CCUUSU_CODCON: TIntegerField;
    ConsUsu_T100CCUUSU_CODUSU: TBCDField;
    ConsUsu_T100CCUUSU_DATCON: TDateTimeField;
    ConsUsu_T100CCUUSU_HORCON: TIntegerField;
    ConsUsu_T100CCUUSU_NOMMAQ: TStringField;
    ConsUsu_T100CCUUSU_IPMAQ: TStringField;
    ConsUsu_T100CCUUSU_NOMUSU: TStringField;
    Timer1: TTimer;
    DsConsUsu_T100CCU: TDataSource;
    ConsUsu_T100CTA: TADOQuery;
    ConsUsu_T100CTAUSU_CODCON: TIntegerField;
    ConsUsu_T100CTAUSU_NOMTLA: TStringField;
    ConsUsu_T100CTAUSU_HORABE: TIntegerField;
    DsLigUsu_T100CCu: TDataSource;
    DsConsUsu_T100CTA: TDataSource;
    BDesconecta: TBitBtn;
    BAtualiza: TBitBtn;
    CadUsu_T100CTA: TADOQuery;
    CadUsu_T100CTAUSU_CODCON: TIntegerField;
    CadUsu_T100CTAUSU_NOMTLA: TStringField;
    CadUsu_T100CTAUSU_HORABE: TIntegerField;
    CadUsu_T100CCU: TADOQuery;
    CadUsu_T100CCUUSU_CODCON: TIntegerField;
    CadUsu_T100CCUUSU_CODUSU: TBCDField;
    CadUsu_T100CCUUSU_DATCON: TDateTimeField;
    CadUsu_T100CCUUSU_HORCON: TIntegerField;
    CadUsu_T100CCUUSU_NOMMAQ: TStringField;
    CadUsu_T100CCUUSU_IPMAQ: TStringField;
    procedure Timer1Timer(Sender: TObject);
    procedure ConsUsu_T100CCUAfterScroll(DataSet: TDataSet);
    procedure BAtualizaClick(Sender: TObject);
    procedure BDesconectaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FControleConexca: TFControleConexca;

implementation

uses UDm;

{$R *.dfm}

procedure TFControleConexca.Timer1Timer(Sender: TObject);
begin
  ConsUsu_T100CCU.Close;
  ConsUsu_T100CCU.Open;
end;

procedure TFControleConexca.ConsUsu_T100CCUAfterScroll(DataSet: TDataSet);
begin
    ConsUsu_T100CTA.Close;
    ConsUsu_T100CTA.Open;
end;

procedure TFControleConexca.BAtualizaClick(Sender: TObject);
begin
  ConsUsu_T100CCU.Close;
  ConsUsu_T100CCU.Open;
end;

procedure TFControleConexca.BDesconectaClick(Sender: TObject);
begin
//apaga as conexçoes das telas abertas
    while not ConsUsu_T100CTA.Eof do
      begin
        CadUsu_T100CTA.Close;
        CadUsu_T100CTA.Parameters.ParamByName('codcon').Value := ConsUsu_T100CTAUSU_CODCON.Value;
        CadUsu_T100CTA.Parameters.ParamByName('nomtla').Value := ConsUsu_T100CTAUSU_NOMTLA.Value;
        CadUsu_T100CTA.Open;
        if not CadUsu_T100CTA.IsEmpty then
           CadUsu_T100CTA.Delete;
           
        ConsUsu_T100CTA.Next;
      end;

    CadUsu_T100CCU.Close;
    CadUsu_T100CCU.Parameters.ParamByName('codcon').Value := ConsUsu_T100CCUUSU_CODCON.Value;
    CadUsu_T100CCU.Open;
    if not CadUsu_T100CCU.IsEmpty then
      CadUsu_T100CCU.Delete;

    ConsUsu_T100CCU.Close;
    ConsUsu_T100CCU.Open;  
end;

end.
