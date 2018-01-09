unit UConsClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TFConsClientes = class(TForm)
    ConsE085Cli: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    ConsE085CliCODCLI: TIntegerField;
    ConsE085CliNOMCLI: TStringField;
    ConsE085CliAPECLI: TStringField;
    ConsE085CliINSEST: TStringField;
    ConsE085CliCGCCPF: TBCDField;
    ConsE085CliENDCLI: TStringField;
    ConsE085CliNENCLI: TStringField;
    ConsE085CliCPLEND: TStringField;
    ConsE085CliCEPCLI: TIntegerField;
    ConsE085CliBAICLI: TStringField;
    ConsE085CliCIDCLI: TStringField;
    ConsE085CliSIGUFS: TStringField;
    ConsE085CliSITCLI: TStringField;
    ConsE085CliCODREP: TIntegerField;
    ConsE085CliNOMREP: TStringField;
    ConsE085CliAPEREP: TStringField;
    DBGrid1: TDBGrid;
    DsConsE085Cli: TDataSource;
    EdCodCli: TEdit;
    EdNomCli: TEdit;
    EdCgcCpf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdEndCli: TEdit;
    Label5: TLabel;
    EdCidCli: TEdit;
    Label6: TLabel;
    EdSigUfs: TEdit;
    Label7: TLabel;
    EdCodRep: TEdit;
    Label8: TLabel;
    EdApeRep: TEdit;
    Label9: TLabel;
    EdNomRep: TEdit;
    BMostrar: TBitBtn;
    procedure BMostrarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    vaTelaOrigem : string;
  end;

var
  FConsClientes: TFConsClientes;

implementation

uses UDmOra, UAssistencia;

{$R *.dfm}

procedure TFConsClientes.BMostrarClick(Sender: TObject);
begin
    ConsE085Cli.Close;
    ConsE085Cli.SQL.Clear;
    ConsE085Cli.SQL.Add(' select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.insest,');
    ConsE085Cli.SQL.Add(' e085cli.cgccpf,e085cli.endcli,e085cli.nencli,');
    ConsE085Cli.SQL.Add(' e085cli.cplend,e085cli.cepcli,e085cli.baicli,e085cli.cidcli,');
    ConsE085Cli.SQL.Add(' e085cli.sigufs,e085cli.sitcli,e085hcl.codrep,e090rep.nomrep,');
    ConsE085Cli.SQL.Add(' e090rep.aperep');
    ConsE085Cli.SQL.Add(' from e085cli');
    ConsE085Cli.SQL.Add(' inner join e085hcl on e085hcl.codcli = e085cli.codcli');
    ConsE085Cli.SQL.Add(' inner join e090rep on e090rep.codrep = e085hcl.codrep');
    ConsE085Cli.SQL.Add(' where e085hcl.codemp = 1 and');
    ConsE085Cli.SQL.Add(' e085hcl.codfil = 1');

    if Trim(EdCodCli.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e085cli.codcli = :codcli');
         ConsE085Cli.Parameters.ParamByName('codcli').Value := StrToInt(trim(EdCodCli.Text));
       end;

    if Trim(EdNomCli.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e085cli.nomcli like '+QuotedStr('%'+EdNomCli.Text+'%'));
       end;

    if Trim(EdCgcCpf.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e085cli.cgccpf = :cgccpf');
         ConsE085Cli.Parameters.ParamByName('cgccpf').Value := StrToFloat(trim(EdCgcCpf.Text));
       end;

    if Trim(EdEndCli.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e085cli.endcli like '+QuotedStr('%'+EdEndCli.Text+'%'));
       end;

    if Trim(EdCidCli.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e085cli.cidcli like '+QuotedStr('%'+EdCidCli.Text+'%'));
       end;

    if Trim(EdSigUfs.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e085cli.sigufs like '+QuotedStr('%'+EdSigUfs.Text+'%'));
       end;

    if Trim(EdCodRep.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e085hcl.codrep = :codrep');
         ConsE085Cli.Parameters.ParamByName('codrep').Value := StrToInt(trim(EdCodRep.Text));
       end;

    if Trim(EdNomRep.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e090rep.nomrep like '+QuotedStr('%'+EdNomRep.Text+'%'));
       end;

    if Trim(EdApeRep.Text) <> '' then
       begin
         ConsE085Cli.SQL.Add(' and e090rep.aperep like '+QuotedStr('%'+EdApeRep.Text+'%'));
       end;

    ConsE085Cli.SQL.Add('order by e085cli.nomcli');
    ConsE085Cli.Open;


end;

procedure TFConsClientes.DBGrid1DblClick(Sender: TObject);
begin
 if not ConsE085Cli.IsEmpty then
    begin
      if vaTelaOrigem = 'FAssistencia' then
         begin
           FAssistencia.EdCodCli.Text := IntToStr(ConsE085CliCODCLI.AsInteger);
           Close;
         end;
    end;
end;

procedure TFConsClientes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    //GRID ZEBRADA
    if odd(ConsE085Cli.RecNo) then
    DBGrid1.Canvas.Brush.Color:= clmenubar
    else
    DBGrid1.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFConsClientes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       DBGrid1DblClick(Sender);
     end;
end;

end.
