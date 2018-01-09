unit UFiltroPedRecSysRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, Provider, DBClient,
  ADODB;

type
  TFFiltroPedRecSysRep = class(TForm)
    DBGrid1: TDBGrid;
    ConsE120Ipd_TotRep: TIBQuery;
    ConsE120Ipd_TotRepVLRTOT: TFloatField;
    ConsE120Ipd_TotRepQTDPED: TIntegerField;
    ConsE120Ipd_TotRepCODREP: TIntegerField;
    ConsE090Rep: TADOQuery;
    ConsE090RepCODREP: TIntegerField;
    ConsE090RepAPEREP: TStringField;
    DsClientE120Resumo: TDataSource;
    ConsE090RepNOMREP: TStringField;
    ClientE120Resumo: TClientDataSet;
    ClientE120ResumoCODREP: TIntegerField;
    ClientE120ResumoNOMREP: TStringField;
    ClientE120ResumoAPEREP: TStringField;
    ClientE120ResumoQTDPED: TIntegerField;
    ClientE120ResumoVLRTOT: TFloatField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltroPedRecSysRep: TFFiltroPedRecSysRep;

implementation

uses UDmFire, UDmOra;

{$R *.dfm}

procedure TFFiltroPedRecSysRep.FormShow(Sender: TObject);
begin
    ConsE120Ipd_TotRep.Close;
    ConsE120Ipd_TotRep.Open;
    ConsE120Ipd_TotRep.First;
    while not ConsE120Ipd_TotRep.Eof do
       begin
         ClientE120Resumo.Open;
         ClientE120Resumo.Insert;
         ClientE120ResumoCODREP.Value := ConsE120Ipd_TotRepCODREP.Value;
         ClientE120ResumoQTDPED.Value := ConsE120Ipd_TotRepQTDPED.Value;
         ClientE120ResumoVLRTOT.Value := ConsE120Ipd_TotRepVLRTOT.Value;
         ClientE120Resumo.Post;

         ConsE120Ipd_TotRep.Next;
       end;

    ClientE120Resumo.First;
    while not ClientE120Resumo.Eof do
       begin
         ConsE090Rep.Close;
         ConsE090Rep.Parameters.ParamByName('codrep').Value := ClientE120ResumoCODREP.Value;
         ConsE090Rep.Open;

         ClientE120Resumo.Edit;
         ClientE120ResumoNOMREP.Value := ConsE090RepNOMREP.Value;
         ClientE120ResumoAPEREP.Value := ConsE090RepAPEREP.Value;
         ClientE120Resumo.Post;

         ClientE120Resumo.Next;
       end;
    ClientE120Resumo.First;
end;

end.
