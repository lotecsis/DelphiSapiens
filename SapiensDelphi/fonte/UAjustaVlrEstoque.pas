unit UAjustaVlrEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, ComCtrls;

type
  TFAjustaVlrEstoque = class(TForm)
    edtCodPro: TEdit;
    Label1: TLabel;
    edtData: TDateEdit;
    Label2: TLabel;
    btnProcessar: TBitBtn;
    pbProgresso: TProgressBar;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAjustaVlrEstoque: TFAjustaVlrEstoque;

implementation

uses UDm3;

{$R *.dfm}

procedure TFAjustaVlrEstoque.btnProcessarClick(Sender: TObject);
var vnVlrAnt, vnVlrMov, vnVlrEst, vnPreMed : Double;
    vnQtdReg : Integer;
begin
  Dm3.AjustaVlrEstoque.Close;
  Dm3.AjustaVlrEstoque.Parameters.ParamByName('codpro').Value := edtCodPro.Text;
  Dm3.AjustaVlrEstoque.Parameters.ParamByName('data').Value := edtData.Date;
  Dm3.AjustaVlrEstoque.Open;
  Dm3.AjustaVlrEstoque.Last;
  Dm3.AjustaVlrEstoque.First;

  vnQtdReg := Dm3.AjustaVlrEstoque.RecordCount;
  pbProgresso.Max := vnQtdReg - 1;

  vnVlrEst := Dm3.AjustaVlrEstoqueVLREST.Value;
  vnPreMed := (Dm3.AjustaVlrEstoqueVLREST.AsFloat / Dm3.AjustaVlrEstoqueQTDEST.AsFloat);
  Dm3.AjustaVlrEstoque.Next;
  while not Dm3.AjustaVlrEstoque.Eof do
     begin
       Dm3.CadE210Mvp.Close;
       Dm3.CadE210Mvp.Parameters.ParamByName('CODEMP').Value := Dm3.AjustaVlrEstoqueCODEMP.Value;
       Dm3.CadE210Mvp.Parameters.ParamByName('CODPRO').Value := Dm3.AjustaVlrEstoqueCODPRO.Value;
       Dm3.CadE210Mvp.Parameters.ParamByName('CODDER').Value := Dm3.AjustaVlrEstoqueCODDER.Value;
       Dm3.CadE210Mvp.Parameters.ParamByName('CODDEP').Value := Dm3.AjustaVlrEstoqueCODDEP.Value;
       Dm3.CadE210Mvp.Parameters.ParamByName('DATMOV').Value := Dm3.AjustaVlrEstoqueDATMOV.Value;
       Dm3.CadE210Mvp.Parameters.ParamByName('SEQMOV').Value := Dm3.AjustaVlrEstoqueSEQMOV.Value;
       Dm3.CadE210Mvp.Open;
       if not Dm3.CadE210Mvp.IsEmpty then
         begin
           Dm3.CadE210Mvp.Edit;
           Dm3.CadE210MvpVLRANT.Value := vnVlrEst;
           if Dm3.CadE210MvpESTEOS.Value = 'S' then
              begin
                 Dm3.CadE210MvpVLRMOV.AsFloat := Dm3.CadE210MvpQTDMOV.AsFloat * vnPreMed;
                 Dm3.CadE210MvpVLREST.Value := Dm3.CadE210MvpVLRANT.Value - Dm3.CadE210MvpVLRMOV.Value;
                 Dm3.CadE210MvpPRMEST.AsFloat := vnPreMed;
              end
           else
           if Dm3.CadE210MvpESTEOS.Value = 'E' then
              begin
                  Dm3.CadE210MvpVLREST.Value := Dm3.CadE210MvpVLRANT.Value + Dm3.CadE210MvpVLRMOV.Value;
                  vnPreMed := Dm3.AjustaVlrEstoqueVLREST.AsFloat / Dm3.AjustaVlrEstoqueQTDEST.AsFloat;
                  Dm3.CadE210MvpPRMEST.AsFloat := vnPreMed;
              end;

           vnVlrEst := Dm3.CadE210MvpVLREST.Value;
           Dm3.CadE210Mvp.Post;
         end;

       pbProgresso.Position := pbProgresso.Position + 1;
       Dm3.AjustaVlrEstoque.Next;
     end;

end;

end.
