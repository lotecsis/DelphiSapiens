unit UFechamentoConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, DateUtils;

type
  TFFechamentoConvenio = class(TForm)
    Label1: TLabel;
    BProcessar: TBitBtn;
    ConsFuncionariosAtivos: TADOQuery;
    ConsFuncionariosAtivosUSU_NUMCAD: TIntegerField;
    ConsFuncionariosAtivosUSU_NOMFUN: TStringField;
    ConsFuncionariosAtivosUSU_APEFUN: TStringField;
    ConsFuncionariosAtivosUSU_DATADM: TDateTimeField;
    ConsFuncionariosAtivosUSU_NUMCPF: TBCDField;
    ConsFuncionariosAtivosUSU_TIPCOL: TStringField;
    ConsFuncionariosAtivosUSU_CODDEP: TIntegerField;
    ConsFuncionariosAtivosUSU_SITAFA: TIntegerField;
    ConsFuncionariosAtivosUSU_DESSIT: TStringField;
    ConsFuncionariosAtivosUSU_SITDEP: TStringField;
    ConsFuncionariosAtivosUSU_GRAPAR: TIntegerField;
    ConsFuncionariosAtivosUSU_DESPAR: TStringField;
    CbMes: TComboBox;
    EdAno: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ConsSerMov: TADOQuery;
    ConsSerMovUSU_SEQSER: TIntegerField;
    ConsSerMovUSU_CODSER: TStringField;
    ConsSerMovUSU_NUMCAD: TIntegerField;
    ConsSerMovUSU_CODDEP: TIntegerField;
    ConsSerMovUSU_QTDSER: TIntegerField;
    ConsSerMovUSU_PREUNI: TBCDField;
    ConsSerMovUSU_DATSER: TDateTimeField;
    ConsSerMovUSU_MESSER: TIntegerField;
    ConsSerMovUSU_ANOSER: TIntegerField;
    ConsSerMovUSU_NOMFUN: TStringField;
    ConsSerMovUSU_OBSSER: TStringField;
    ConsSerMovUSU_INADT: TStringField;
    ConsSerMovUSU_VLRCOB: TBCDField;
    LStatus: TLabel;
    procedure BProcessarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFechamentoConvenio: TFFechamentoConvenio;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFFechamentoConvenio.BProcessarClick(Sender: TObject);
var vnSeqSer : integer;
    vaPrimeiroDiaInternamento : string;
begin
    LStatus.Caption := 'Processando..';
    Refresh;

    //percorre os funcionarios ativo
    ConsFuncionariosAtivos.Close;
    ConsFuncionariosAtivos.Open;
    while not ConsFuncionariosAtivos.Eof do
       begin//1
         {***************************************************************************
          FAZ A ATUALIZAÇAO DAS    CONSULTAS    A PRIMEIRA PAGA TAXA DE 20,00 DEPOIS
          A SEGUNDA É METADE DO VALOR E DA TERCEIRA EM DIANTE É COBRADO TUDO
         ****************************************************************************}
         ConsSerMov.Close;
         ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
         ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
         ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
         ConsSerMov.Parameters.ParamByName('CODSER').Value := 'CONSULTA';
         ConsSerMov.Open;
         ConsSerMov.First;
         DmOra.CadUsu_TRhSerMov.Close;
         DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
         DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
         DmOra.CadUsu_TRhSerMov.Open;
         if not DmOra.CadUsu_TRhSerMov.IsEmpty then
            begin
               if DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value = 1 then
                  begin
                     DmOra.CadUsu_TRhSerMov.Edit;
                     DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := 20;
                     DmOra.CadUsu_TRhSerMov.Post;
                  end
               else
               if DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value > 1 then
                  begin
                     DmOra.CadUsu_TRhSerMov.Edit;
                     DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := ((DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value - 1) * (DmOra.CadUsu_TRhSerMovUSU_PREUNI.Value) / 2) + 15;
                     DmOra.CadUsu_TRhSerMov.Post;
                  end;
            end;
         ConsSerMov.Next;
         if ConsSerMov.RecordCount > 1 then
            begin
               DmOra.CadUsu_TRhSerMov.Close;
               DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
               DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
               DmOra.CadUsu_TRhSerMov.Open;
               if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                  begin
                     DmOra.CadUsu_TRhSerMov.Edit;
                     DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value :=(ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value) / 2;
                     DmOra.CadUsu_TRhSerMov.Post;
                  end;
                ConsSerMov.Next;

                while not ConsSerMov.Eof do
                    begin
                      DmOra.CadUsu_TRhSerMov.Close;
                      DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                      DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                      DmOra.CadUsu_TRhSerMov.Open;
                      if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                         begin
                            DmOra.CadUsu_TRhSerMov.Edit;
                            DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value;
                            DmOra.CadUsu_TRhSerMov.Post;
                         end;

                      ConsSerMov.Next;
                    end;
            end;

            //--------------------------------------------------------------

            {**************************************************************************
             FAZ O TRATAMENTO DOS INTERNAMENTOS,  O FUNCIONARIO NAO PAGA NENHUM
             DIA, O DEPENDENTE NAO PAGA O PRIMEIRO DEPOIS OS OUTROS SERÁ PAGO A METADE
            ***************************************************************************}
            ConsSerMov.Close;
            ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
            ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
            ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
            ConsSerMov.Parameters.ParamByName('CODSER').Value := 'INTERNAMENTO';
            ConsSerMov.Open;
            ConsSerMov.First;
            vaPrimeiroDiaInternamento := 'S';
            while not ConsSerMov.Eof do
              begin//2
                DmOra.CadUsu_TRhSerMov.Close;
                DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                DmOra.CadUsu_TRhSerMov.Open;
                if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                   begin//3
                     if DmOra.CadUsu_TRhSerMovUSU_NUMCAD.Value = DmOra.CadUsu_TRhSerMovUSU_CODDEP.Value then
                        begin//4
                          DmOra.CadUsu_TRhSerMov.Edit;
                          DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := 0;
                          DmOra.CadUsu_TRhSerMov.Post;
                        end//4
                     else
                        begin//5
                           if (DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value = 1) and (vaPrimeiroDiaInternamento = 'S') then
                              begin
                                DmOra.CadUsu_TRhSerMov.Edit;
                                DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := 0;
                                DmOra.CadUsu_TRhSerMov.Post;
                                vaPrimeiroDiaInternamento := 'N';
                              end
                           else
                           if (DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value > 1) and (vaPrimeiroDiaInternamento = 'S') then
                              begin
                                DmOra.CadUsu_TRhSerMov.Edit;
                                DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := (DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value - 1) * (DmOra.CadUsu_TRhSerMovUSU_PREUNI.Value / 2);
                                DmOra.CadUsu_TRhSerMov.Post;
                                vaPrimeiroDiaInternamento := 'N';
                              end
                           else
                           if vaPrimeiroDiaInternamento = 'N' then
                              begin
                                DmOra.CadUsu_TRhSerMov.Edit;
                                DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value  * (DmOra.CadUsu_TRhSerMovUSU_PREUNI.Value / 2);
                                DmOra.CadUsu_TRhSerMov.Post;
                              end;


                        end;//5

                   end;//3

                ConsSerMov.Next;
              end;//2
              //---------------------------------------------------------------------------------------

              {**************************************************************************************
                FAZ O TRATAMENTO DOS EXAMES DIVERSOS, (EX: RAIO-X, ULTRASSONOGRAFIA)
                O 1 EXAME INDEPENDNETE SE É TITULAR OU DEPENDENTE
                NAO É COBRADO, DO 2 EM DIANTE É COBRADO A METADE DO VALOR
              ***************************************************************************************}
              ConsSerMov.Close;
              ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
              ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
              ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
              ConsSerMov.Parameters.ParamByName('CODSER').Value := 'EXAMES_DIVERSOS';
              ConsSerMov.Open;
              ConsSerMov.First;
              DmOra.CadUsu_TRhSerMov.Close;
              DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
              DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
              DmOra.CadUsu_TRhSerMov.Open;
              if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                 begin
                    if DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value = 1 then
                       begin
                          DmOra.CadUsu_TRhSerMov.Edit;
                          DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := 0;
                          DmOra.CadUsu_TRhSerMov.Post;
                       end
                    else
                    if DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value > 1 then
                       begin
                          DmOra.CadUsu_TRhSerMov.Edit;
                          DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := (DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value - 1) * (DmOra.CadUsu_TRhSerMovUSU_PREUNI.Value / 2);
                          DmOra.CadUsu_TRhSerMov.Post;
                       end;
                 end;
              ConsSerMov.Next;
             while not ConsSerMov.Eof do
             begin
                DmOra.CadUsu_TRhSerMov.Close;
                DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                DmOra.CadUsu_TRhSerMov.Open;
                if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                   begin
                      DmOra.CadUsu_TRhSerMov.Edit;
                      DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value :=(ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value) / 2;
                      DmOra.CadUsu_TRhSerMov.Post;
                   end;

                ConsSerMov.Next;
             end;
           //-------------------------------------------------------------------------------------

           {****************************************************************************************
             FAZ O TRATAMENTO DOS EXAMES FEITOS NO LABORATORIO (EUDES)  O CONVENIO PAGA ATÉ 35
             O QUE PASSAR É DESCONTADO DO FUNCIONARIO
           *****************************************************************************************}
           ConsSerMov.Close;
           ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
           ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
           ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
           ConsSerMov.Parameters.ParamByName('CODSER').Value := 'EXAMES_LABORATORIAIS';
           ConsSerMov.Open;
           while not ConsSerMov.Eof do
                 begin
                   DmOra.CadUsu_TRhSerMov.Close;
                   DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                   DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                   DmOra.CadUsu_TRhSerMov.Open;
                   if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                      begin
                         if (DmOra.CadUsu_TRhSerMovUSU_QTDSER.Value * DmOra.CadUsu_TRhSerMovUSU_PREUNI.Value) <= 35 then
                            begin
                               DmOra.CadUsu_TRhSerMov.Edit;
                               DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := 0;
                               DmOra.CadUsu_TRhSerMov.Post;
                            end
                         else
                            begin
                               DmOra.CadUsu_TRhSerMov.Edit;
                               DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value :=(ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value) - 35;
                               DmOra.CadUsu_TRhSerMov.Post;
                            end;
                      end;
                 ConsSerMov.Next;
                 end;
            //------------------------------------------------------------------------------------------------

            {**************************************************************************************
             CIRURGIAS O CONVENIO PAGA METADE DO VALOR INDEPENDENTE SE É FUNCIONARIO OU DEPENDENTE
            ***************************************************************************************}
            ConsSerMov.Close;
            ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
            ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
            ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
            ConsSerMov.Parameters.ParamByName('CODSER').Value := 'CIRURGIA';
            ConsSerMov.Open;
            while not ConsSerMov.Eof do
                  begin
                    DmOra.CadUsu_TRhSerMov.Close;
                    DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                    DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                    DmOra.CadUsu_TRhSerMov.Open;
                    if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                       begin
                          DmOra.CadUsu_TRhSerMov.Edit;
                          DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value :=(ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value) / 2;
                          DmOra.CadUsu_TRhSerMov.Post;

                       end;
                     ConsSerMov.Next;
                  end;

            //---------------------------------------------------------------------------------------

            {*****************************************************************************************
             CESARIANA O CONVENIO PAGA 60% DO VALOR INDEPENDENTE SE É FUNCIONARIO OU DEPENDENTE
            ******************************************************************************************}
            ConsSerMov.Close;
            ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
            ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
            ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
            ConsSerMov.Parameters.ParamByName('CODSER').Value := 'CESARIANA';
            ConsSerMov.Open;
            while not ConsSerMov.Eof do
                  begin
                    DmOra.CadUsu_TRhSerMov.Close;
                    DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                    DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                    DmOra.CadUsu_TRhSerMov.Open;
                    if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                       begin
                          DmOra.CadUsu_TRhSerMov.Edit;
                          //DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value :=(ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value) / 2;
                          DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := ConsSerMovUSU_PREUNI.Value * 0.4;
                          DmOra.CadUsu_TRhSerMov.Post;

                       end;
                     ConsSerMov.Next;
                  end;
            //-------------------------------------------------------------------------------------------

            {**********************************************************************************************
             AMBULATORIO  PARA O FUNCIONARIO NAO SERA COBRADO NADA, PARA O DEPENDENTE A METADE DO VALOR
            ***********************************************************************************************}
            ConsSerMov.Close;
            ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
            ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
            ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
            ConsSerMov.Parameters.ParamByName('CODSER').Value := 'AMBULATORIO';
            ConsSerMov.Open;
            while not ConsSerMov.Eof do
                  begin
                    DmOra.CadUsu_TRhSerMov.Close;
                    DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                    DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                    DmOra.CadUsu_TRhSerMov.Open;
                    if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                       begin
                          if DmOra.CadUsu_TRhSerMovUSU_NUMCAD.Value = DmOra.CadUsu_TRhSerMovUSU_CODDEP.Value then
                             begin
                                DmOra.CadUsu_TRhSerMov.Edit;
                                DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := 0;
                                DmOra.CadUsu_TRhSerMov.Post;
                             end
                          else
                             begin
                                DmOra.CadUsu_TRhSerMov.Edit;
                                DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := (ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value) / 2;
                                DmOra.CadUsu_TRhSerMov.Post;
                             end;

                       end;
                     ConsSerMov.Next;
                  end;

            //--------------------------------------------------------------------------------------------

            {********************************************************************************************
             FISIOTERAPIA,  A PRIMEIRA QUE FOR LANÇADA NAO COBRA NADA, INDEPENDENTE DA QUANTIDADE E VALOR,
             A SEGUNDA SERÁ COBRADO METADE DO VALOR
            *********************************************************************************************}
            ConsSerMov.Close;
            ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
            ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
            ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsFuncionariosAtivosUSU_NUMCAD.Value;
            ConsSerMov.Parameters.ParamByName('CODSER').Value := 'FISIOTERAPIA';
            ConsSerMov.Open;
            ConsSerMov.First;
            DmOra.CadUsu_TRhSerMov.Close;
            DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
            DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
            DmOra.CadUsu_TRhSerMov.Open;
            if not DmOra.CadUsu_TRhSerMov.IsEmpty then
               begin
                 DmOra.CadUsu_TRhSerMov.Edit;
                 DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := 0;
                 DmOra.CadUsu_TRhSerMov.Post;
               end;
            ConsSerMov.Next;
            while not ConsSerMov.Eof do
               begin
                 DmOra.CadUsu_TRhSerMov.Close;
                 DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
                 DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
                 DmOra.CadUsu_TRhSerMov.Open;
                 if not DmOra.CadUsu_TRhSerMov.IsEmpty then
                    begin
                      DmOra.CadUsu_TRhSerMov.Edit;
                      DmOra.CadUsu_TRhSerMovUSU_VLRCOB.Value := (ConsSerMovUSU_PREUNI.Value * ConsSerMovUSU_QTDSER.Value) / 2;
                      DmOra.CadUsu_TRhSerMov.Post;
                    end;

                 ConsSerMov.Next;
               end;

         ConsFuncionariosAtivos.Next;
       end;//1
      LStatus.Caption := '';
      Refresh;
end;

procedure TFFechamentoConvenio.FormShow(Sender: TObject);
var Dia,Mes,Ano : word;
begin
   DecodeDate(date,Ano,Mes,Dia);
   CbMes.ItemIndex := Mes;
   EdAno.Text := IntToStr(Ano);
end;

end.
