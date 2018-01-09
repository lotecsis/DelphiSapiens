unit UAtuzlia_E075Pro_ServerRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, IBCustomDataSet;

type
  TFAtuzlia_E075Pro_ServerRep = class(TForm)
    BAtualiza: TBitBtn;
    ConsE075Pro: TADOQuery;
    ConsE075ProCODEMP: TIntegerField;
    ConsE075ProCODPRO: TStringField;
    ConsE075ProDESPRO: TStringField;
    E075pro: TIBDataSet;
    E075proCODEMP: TIntegerField;
    E075proCODPRO: TIBStringField;
    E075proDESPRO: TIBStringField;
    BAtualizaCidades: TBitBtn;
    ConsE008Cep: TADOQuery;
    ConsE008CepNOMCID: TStringField;
    ConsE008CepSIGUFS: TStringField;
    CadUsu_TCidades: TADOQuery;
    CadUsu_TCidadesUSU_CODCID: TIntegerField;
    CadUsu_TCidadesUSU_NOMCID: TStringField;
    CadUsu_TCidadesUSU_SIGUFS: TStringField;
    CadUsu_TCidadesUSU_TOTPOP: TBCDField;
    procedure BAtualizaClick(Sender: TObject);
    procedure BAtualizaCidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtuzlia_E075Pro_ServerRep: TFAtuzlia_E075Pro_ServerRep;

implementation

uses UDmOra, UDmFire;

{$R *.dfm}

procedure TFAtuzlia_E075Pro_ServerRep.BAtualizaCidadesClick(Sender: TObject);
begin
  { ConsE008Cep.Close;
   ConsE008Cep.Open;
   while not ConsE008Cep.Eof do
      begin
       CadUsu_TCidades.Open;
       CadUsu_TCidades.Insert;

        DmOra.ConsSql.Close;
        DmOra.ConsSql.SQL.Clear;
        DmOra.ConsSql.SQL.Add('select usu_codcid from usu_tCidades order by usu_codcid desc');
        DmOra.ConsSql.Open;
        if DmOra.ConsSql.IsEmpty then
             CadUsu_TCidadesUSU_CODCID.Value := 1
        else
             CadUsu_TCidadesUSU_CODCID.Value := DmOra.ConsSql.FieldByName('usu_codcid').Value + 1;

        CadUsu_TCidadesUSU_NOMCID.Value := ConsE008CepNOMCID.Value;
        CadUsu_TCidadesUSU_SIGUFS.Value := ConsE008CepSIGUFS.Value;
        CadUsu_TCidades.Post;

        ConsE008Cep.Next;
      end; }

end;

procedure TFAtuzlia_E075Pro_ServerRep.BAtualizaClick(Sender: TObject);
begin
    ConsE075Pro.Close;
    ConsE075Pro.Open;
    ConsE075Pro.First;
    while not ConsE075Pro.Eof do
       begin
         E075pro.Close;
         E075pro.ParamByName('codemp').Value := ConsE075ProCODEMP.Value;
         E075pro.ParamByName('codpro').Value := ConsE075ProCODPRO.Value;
         E075pro.Open;
         if E075pro.IsEmpty then
            begin
              E075pro.Insert;
              E075proCODEMP.Value := ConsE075ProCODEMP.Value;
              E075proCODPRO.Value := ConsE075ProCODPRO.Value;
              E075proDESPRO.Value := ConsE075ProDESPRO.Value;
              E075pro.Post;
              DmFire.IBTransacao.CommitRetaining;
            end;


         ConsE075Pro.Next;
       end;

end;

end.
