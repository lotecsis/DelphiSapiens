unit UValidaDescPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Math, DB, DBCtrls, Gauges;

type
  TFValidaDescPed = class(TForm)
    dbg1: TDBGrid;
    Label1: TLabel;
    edtPreCar: TEdit;
    btnValidar: TBitBtn;
    dsClientConsUSU_TDescRepH: TDataSource;
    btnLiberar: TBitBtn;
    dbmmoUSU_JUSOBS: TDBMemo;
    dsCadUsu_TDescRepH: TDataSource;
    posicao: TGauge;
    procedure edtPreCarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnValidarClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure edtPreCarExit(Sender: TObject);
    procedure dbmmoUSU_JUSOBSExit(Sender: TObject);
    procedure dbmmoUSU_JUSOBSKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FValidaDescPed: TFValidaDescPed;

implementation

uses UDm;

{$R *.dfm}

procedure TFValidaDescPed.btnLiberarClick(Sender: TObject);
begin
  if Trim(edtPreCar.Text) <> '' then
     begin
        if Application.MessageBox('Deseja realmente liberar o pedido?','Aviso',MB_ICONWARNING+MB_YESNO+MB_DEFBUTTON2) =  mrYes then
           begin
               Dm.ConsSql.Close;
               Dm.ConsSql.SQL.Clear;
               Dm.ConsSql.SQL.Add('UPDATE E120PED SET USU_PEDVALID = ''S''');
               Dm.ConsSql.SQL.Add('               WHERE');
               Dm.ConsSql.SQL.Add('               USU_PRECAR = :PRECAR');
               Dm.ConsSql.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
               Dm.ConsSql.ExecSQL;

               Dm.ConsSql.Close;
               Dm.ConsSql.SQL.Clear;
               Dm.ConsSql.SQL.Add('update e120ipd set USU_GerNpd = ''S''');
               Dm.ConsSql.SQL.Add(' where numped in (select e120ped.numped');
               Dm.ConsSql.SQL.Add('                    from e120ped');
               Dm.ConsSql.SQL.Add('                  where');
               Dm.ConsSql.SQL.Add('                    e120ped.usu_precar = :precar)');
               Dm.ConsSql.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
               Dm.ConsSql.ExecSQL;

               Dm.ConsSql.Close;
               Dm.ConsSql.SQL.Clear;
               Dm.ConsSql.SQL.Add('update usu_tprecar');
               Dm.ConsSql.SQL.Add(' set usu_carlib = ''F''');
               Dm.ConsSql.SQL.Add(' where');
               Dm.ConsSql.SQL.Add(' usu_precar = :precar');
               Dm.ConsSql.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
               Dm.ConsSql.ExecSQL;

               btnLiberar.Enabled := false;
           end;
     end;
end;

procedure TFValidaDescPed.btnValidarClick(Sender: TObject);
var vnDescEstof, vnDescColch, vnPerDesc, vnDescLib : Double;
    vaMsg, vaRegApl : string;
    vnSeqVal : Integer;
begin

  if Trim(edtPreCar.Text) <> '' then
     begin
        //busca a sequencia de validação
        Dm.ConsSql.Close;
        Dm.ConsSql.SQL.Clear;
        Dm.ConsSql.SQL.Add('SELECT USU_TDESCREPH.USU_SEQVAL AS SEQVAL');
        Dm.ConsSql.SQL.Add(' FROM USU_TDESCREPH');
        Dm.ConsSql.SQL.Add(' WHERE');
        Dm.ConsSql.SQL.Add('  USU_TDESCREPH.USU_PRECAR = :PRECAR');
        Dm.ConsSql.SQL.Add('  ORDER BY USU_TDESCREPH.USU_SEQVAL DESC');
        Dm.ConsSql.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
        Dm.ConsSql.Open;
        if Dm.ConsSql.IsEmpty then
           vnSeqVal := 1
        else
           vnSeqVal := Dm.ConsSql.FieldByName('SEQVAL').AsInteger + 1;

        //consulta os itens de pedido e percorre comparando os descontos
        Dm.ValidaDescRep.Close;
        Dm.ValidaDescRep.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
        Dm.ValidaDescRep.Open;
        posicao.MinValue := 0;
        posicao.MaxValue := Dm.ValidaDescRep.RecordCount;
        posicao.Progress := 0;
        posicao.Visible := True;
        if NOT Dm.ValidaDescRep.IsEmpty then
           begin
             Dm.ValidaDescRep.First;
             while not Dm.ValidaDescRep.Eof do
                begin
                  vnDescEstof := 0;
                  vnDescColch := 0;
                  vnPerDesc := 0;
                  vnDescLib := 0;
                  vaRegApl := '';

                  //primeiro busca um desconto com a combinação representante/cliente/cond pagamento
                  Dm.ConsSql.Close;
                  Dm.ConsSql.SQL.Clear;
                  Dm.ConsSql.SQL.Add(' select usu_tdescrep.*');
                  Dm.ConsSql.SQL.Add('      from usu_tdescrep');
                  Dm.ConsSql.SQL.Add('      where');
                  Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codrep = :codrep and');
                  Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcli = :codcli and');
                  Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcpg = :codcpg and');
                  Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_datval >= :data  and');
                  Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codpro = '' ''');
                  Dm.ConsSql.Parameters.ParamByName('codrep').Value := Dm.ValidaDescRepCODREP.AsInteger;
                  Dm.ConsSql.Parameters.ParamByName('codcli').Value := Dm.ValidaDescRepCODCLI.AsInteger;
                  Dm.ConsSql.Parameters.ParamByName('codcpg').Value := Dm.ValidaDescRepCODCPG.AsString;
                  Dm.ConsSql.Parameters.ParamByName('data').Value := Date;
                  Dm.ConsSql.Open;
                  if not Dm.ConsSql.IsEmpty then
                     begin
                       vnDescEstof := RoundTo(Dm.ConsSql.FieldByName('USU_ESTOF').AsFloat,-2);
                       vnDescColch := RoundTo(Dm.ConsSql.FieldByName('USU_COLCH').AsFloat,-2);
                       vaRegApl := 'REPRESENTANTE/CLIENTE/COND. PAGAMENTO';
                     end
                  else
                    begin
                      //agora busca a combinação representante/cond pagamento
                      Dm.ConsSql.Close;
                      Dm.ConsSql.SQL.Clear;
                      Dm.ConsSql.SQL.Add(' select usu_tdescrep.*');
                      Dm.ConsSql.SQL.Add('      from usu_tdescrep');
                      Dm.ConsSql.SQL.Add('      where');
                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codrep = :codrep and');
                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcpg = :codcpg and');
                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_datval >= :data  and');
                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codpro = '' ''   and');
                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcli = 0');
                      Dm.ConsSql.Parameters.ParamByName('codrep').Value := Dm.ValidaDescRepCODREP.AsInteger;
                      Dm.ConsSql.Parameters.ParamByName('codcpg').Value := Dm.ValidaDescRepCODCPG.AsString;
                      Dm.ConsSql.Parameters.ParamByName('data').Value := Date;
                      Dm.ConsSql.Open;
                          if not Dm.ConsSql.IsEmpty then
                             begin
                               vnDescEstof := RoundTo(Dm.ConsSql.FieldByName('USU_ESTOF').AsFloat,-2);
                               vnDescColch := RoundTo(Dm.ConsSql.FieldByName('USU_COLCH').AsFloat,-2);
                               vaRegApl := 'REPRESENTANTE/COND. PAGAMENTO';
                             end
                          else
                             begin
                                // busca um desconto com a combinação representante/cliente/produto
                                Dm.ConsSql.Close;
                                Dm.ConsSql.SQL.Clear;
                                Dm.ConsSql.SQL.Add(' select usu_tdescrep.*');
                                Dm.ConsSql.SQL.Add('      from usu_tdescrep');
                                Dm.ConsSql.SQL.Add('      where');
                                Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codrep = :codrep and');
                                Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcli = :codcli and');
                                Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codpro = :codpro and');
                                Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_datval >= :data  and');
                                Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcpg = '' ''');
                                Dm.ConsSql.Parameters.ParamByName('codrep').Value := Dm.ValidaDescRepCODREP.AsInteger;
                                Dm.ConsSql.Parameters.ParamByName('codcli').Value := Dm.ValidaDescRepCODCLI.AsInteger;
                                Dm.ConsSql.Parameters.ParamByName('codpro').Value := Dm.ValidaDescRepCODPRO.AsString;
                                Dm.ConsSql.Parameters.ParamByName('data').Value := Date;
                                Dm.ConsSql.Open;
                                if not Dm.ConsSql.IsEmpty then
                                   begin
                                     vnDescEstof := RoundTo(Dm.ConsSql.FieldByName('USU_ESTOF').AsFloat,-2);
                                     vnDescColch := RoundTo(Dm.ConsSql.FieldByName('USU_COLCH').AsFloat,-2);
                                     vaRegApl := 'REPRESENTANTE/CLIENTE/PRODUTO';
                                   end
                                else
                                   begin
                                      //se nao encontrar, agora busca a combinação representante/cliente
                                      Dm.ConsSql.Close;
                                      Dm.ConsSql.SQL.Clear;
                                      Dm.ConsSql.SQL.Add(' select usu_tdescrep.*');
                                      Dm.ConsSql.SQL.Add('      from usu_tdescrep');
                                      Dm.ConsSql.SQL.Add('      where');
                                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codrep = :codrep and');
                                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcli = :codcli and');
                                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_datval >= :data  and');
                                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codpro = '' ''   and');
                                      Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcpg = '' ''');
                                      Dm.ConsSql.Parameters.ParamByName('codrep').Value := Dm.ValidaDescRepCODREP.AsInteger;
                                      Dm.ConsSql.Parameters.ParamByName('codcli').Value := Dm.ValidaDescRepCODCLI.AsInteger;
                                      Dm.ConsSql.Parameters.ParamByName('data').Value := Date;
                                      Dm.ConsSql.Open;
                                      if not Dm.ConsSql.IsEmpty then
                                         begin
                                           vnDescEstof := RoundTo(Dm.ConsSql.FieldByName('USU_ESTOF').AsFloat,-2);
                                           vnDescColch := RoundTo(Dm.ConsSql.FieldByName('USU_COLCH').AsFloat,-2);
                                           vaRegApl := 'REPRESENTANTE/CLIENTE';
                                         end
                                      else
                                         begin
                                            //se nao encontrar, agora busca a combinação representante/produto
                                            Dm.ConsSql.Close;
                                            Dm.ConsSql.SQL.Clear;
                                            Dm.ConsSql.SQL.Add(' select usu_tdescrep.*');
                                            Dm.ConsSql.SQL.Add('      from usu_tdescrep');
                                            Dm.ConsSql.SQL.Add('      where');
                                            Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codrep = :codrep and');
                                            Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codpro = :codpro and');
                                            Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_datval >= :data  and');
                                            Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcpg = '' ''   and');
                                            Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codcli = 0');
                                            Dm.ConsSql.Parameters.ParamByName('codrep').Value := Dm.ValidaDescRepCODREP.AsInteger;
                                            Dm.ConsSql.Parameters.ParamByName('codpro').Value := Dm.ValidaDescRepCODPRO.AsString;
                                            Dm.ConsSql.Parameters.ParamByName('data').Value := Date;
                                            Dm.ConsSql.Open;
                                            if not Dm.ConsSql.IsEmpty then
                                               begin
                                                 vnDescEstof := RoundTo(Dm.ConsSql.FieldByName('USU_ESTOF').AsFloat,-2);
                                                 vnDescColch := RoundTo(Dm.ConsSql.FieldByName('USU_COLCH').AsFloat,-2);
                                                 vaRegApl := 'REPRESENTANTE/PRODUTO';
                                               end
                                            else
                                              begin
                                                //se nao encontrar, agora busca apenas para o representante
                                                Dm.ConsSql.Close;
                                                Dm.ConsSql.SQL.Clear;
                                                Dm.ConsSql.SQL.Add(' select usu_tdescrep.*');
                                                Dm.ConsSql.SQL.Add('      from usu_tdescrep');
                                                Dm.ConsSql.SQL.Add('      where');
                                                Dm.ConsSql.SQL.Add('       usu_tdescrep.usu_codrep = :codrep');
                                                Dm.ConsSql.SQL.Add('       and usu_tdescrep.usu_codpro = '' ''');
                                                Dm.ConsSql.SQL.Add('       and usu_tdescrep.usu_codcli = 0');
                                                Dm.ConsSql.SQL.Add('       and usu_tdescrep.usu_datval >= :data');
                                                Dm.ConsSql.SQL.Add('       and usu_tdescrep.usu_codcpg = '' ''');
                                                Dm.ConsSql.Parameters.ParamByName('codrep').Value := Dm.ValidaDescRepCODREP.AsInteger;
                                                Dm.ConsSql.Parameters.ParamByName('data').Value := Date;
                                                Dm.ConsSql.Open;
                                                if not Dm.ConsSql.IsEmpty then
                                                   begin
                                                     vnDescEstof := RoundTo(Dm.ConsSql.FieldByName('USU_ESTOF').AsFloat,-2);
                                                     vnDescColch := RoundTo(Dm.ConsSql.FieldByName('USU_COLCH').AsFloat,-2);
                                                     vaRegApl := 'REPRESENTANTE';
                                                   end
                                                else
                                                   begin
                                                     vnDescEstof := 0;
                                                     vnDescColch := 0;
                                                     vaRegApl := 'REGRA NÃO ENCONTRADA';
                                                   end;
                                              end;
                                         end;

                                   end;

                             end;
                    end;


                     //faz o calculo para ver qual o valor do desconto aplicado no item do pedido
                     vaMsg := '';
                     if Dm.ValidaDescRepPRETAB.AsFloat > 0 then
                        begin
                          vnPerDesc := RoundTo((Dm.ValidaDescRepPREUNI.AsFloat * 100) / Dm.ValidaDescRepPRETAB.AsFloat,-2);
                          vnPerDesc := RoundTo(100 - vnPerDesc,-2);
                        end
                     else
                        begin
                          vnPerDesc := 0;
                        end;

                     if vnPerDesc = 0 then
                        begin
                          vaMsg := 'PRODUTO SEM DESCONTO';

                          if Dm.ValidaDescRepCODAGP.AsString = 'ESTOF' then
                              begin
                                vnDescLib := vnDescEstof;
                              end
                          else
                           if Dm.ValidaDescRepCODAGP.AsString = 'COLCH' then
                              begin
                                vnDescLib := vnDescColch;
                              end;
                        end
                     else
                     if vnPerDesc < 0 then
                        begin
                          vaMsg := 'PRODUTO COM AUMENTO DE '+FloatToStr(vnPerDesc * -1)+'%';

                          if Dm.ValidaDescRepCODAGP.AsString = 'ESTOF' then
                              begin
                                vnDescLib := vnDescEstof;
                              end
                          else
                           if Dm.ValidaDescRepCODAGP.AsString = 'COLCH' then
                              begin
                                vnDescLib := vnDescColch;
                              end;
                        end
                     else
                        begin
                           if Dm.ValidaDescRepCODAGP.AsString = 'ESTOF' then
                              begin
                                if vnDescEstof <> vnPerDesc then
                                   begin
                                     if vnPerDesc > vnDescEstof then
                                        vaMsg := 'DESCONTO APLICADO -> '+FloatToStr(vnPerDesc)+'% MAIOR QUE O PERMITIDO -> '+FloatToStr(vnDescEstof) +'%'
                                     else
                                       if vnPerDesc < vnDescEstof then
                                          vaMsg := 'DESCONTO APLICADO -> '+FloatToStr(vnPerDesc)+'% menor QUE O PERMITIDO -> '+FloatToStr(vnDescEstof)+'%';
                                   end;
                                vnDescLib := vnDescEstof;
                              end
                           else
                           if Dm.ValidaDescRepCODAGP.AsString = 'COLCH' then
                              begin
                                if vnDescColch <> vnPerDesc then
                                   begin
                                     if vnPerDesc > vnDescColch then
                                        vaMsg := 'DESCONTO APLICADO -> '+FloatToStr(vnPerDesc)+'% MAIOR QUE O PERMITIDO -> '+FloatToStr(vnDescColch)+'%'
                                     else
                                       if vnPerDesc < vnDescColch then
                                          vaMsg := 'DESCONTO APLICADO -> '+FloatToStr(vnPerDesc)+'% menor QUE O PERMITIDO -> '+FloatToStr(vnDescColch)+'%';
                                   end;
                                vnDescLib := vnDescColch;
                              end;
                        end;

                       //se tiver encontrado alguma diferença grava no banco o historico da validação
                      if vaMsg <> '' then
                         begin
                           Dm.CadUsu_TDescRepH.Open;
                           Dm.CadUsu_TDescRepH.Insert;
                           Dm.CadUsu_TDescRepHUSU_CODEMP.Value := Dm.ValidaDescRepCODEMP.Value;
                           Dm.CadUsu_TDescRepHUSU_CODFIL.Value := Dm.ValidaDescRepCODFIL.Value;
                           Dm.CadUsu_TDescRepHUSU_NUMPED.Value := Dm.ValidaDescRepNUMPED.Value;
                           Dm.CadUsu_TDescRepHUSU_PRECAR.Value := StrToInt(edtPreCar.Text);
                           Dm.CadUsu_TDescRepHUSU_CODCLI.Value := Dm.ValidaDescRepCODCLI.Value;
                           Dm.CadUsu_TDescRepHUSU_CODREP.Value := Dm.ValidaDescRepCODREP.Value;
                           Dm.CadUsu_TDescRepHUSU_CODPRO.Value := Dm.ValidaDescRepCODPRO.Value;
                           Dm.CadUsu_TDescRepHUSU_CODDER.Value := Dm.ValidaDescRepCODDER.Value;
                           Dm.CadUsu_TDescRepHUSU_QTDPED.Value := Dm.ValidaDescRepQTDPED.Value;
                           Dm.CadUsu_TDescRepHUSU_QTDFAT.Value := Dm.ValidaDescRepQTDFAT.Value;
                           Dm.CadUsu_TDescRepHUSU_QTDCAN.Value := Dm.ValidaDescRepQTDCAN.Value;
                           Dm.CadUsu_TDescRepHUSU_QTDABE.Value := Dm.ValidaDescRepQTDABE.Value;
                           Dm.CadUsu_TDescRepHUSU_CODTPR.Value := Dm.ValidaDescRepCODTPR.Value;
                           Dm.CadUsu_TDescRepHUSU_PREUNI.AsFloat := Dm.ValidaDescRepPREUNI.AsFloat;
                           Dm.CadUsu_TDescRepHUSU_PRETAB.AsFloat := Dm.ValidaDescRepPRETAB.AsFloat;
                           Dm.CadUsu_TDescRepHUSU_CODCPG.Value := Dm.ValidaDescRepCODCPG.Value;

                           Dm.CadUsu_TDescRepHUSU_REGAPL.Value := vaRegApl;
                           Dm.CadUsu_TDescRepHUSU_DESLIB.Value := vnDescLib;
                           Dm.CadUsu_TDescRepHUSU_DESAPL.Value := vnPerDesc;
                           Dm.CadUsu_TDescRepHUSU_OBSDES.Value := vaMsg;

                           Dm.CadUsu_TDescRepHUSU_SEQVAL.AsInteger := vnSeqVal;

                            //busca a sequencia de movimento(item)
                            Dm.ConsSql.Close;
                            Dm.ConsSql.SQL.Clear;
                            Dm.ConsSql.SQL.Add('SELECT MAX(USU_TDESCREPH.USU_SEQMOV) AS SEQMOV');
                            Dm.ConsSql.SQL.Add(' FROM USU_TDESCREPH');
                            Dm.ConsSql.SQL.Add(' WHERE');
                            Dm.ConsSql.SQL.Add('  USU_TDESCREPH.USU_PRECAR = :PRECAR AND');
                            Dm.ConsSql.SQL.Add('  USU_TDESCREPH.USU_SEQVAL = :SEQVAL');
                            Dm.ConsSql.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
                            Dm.ConsSql.Parameters.ParamByName('SEQVAL').Value := vnSeqVal;
                            Dm.ConsSql.Open;
                            if Dm.ConsSql.IsEmpty then
                               Dm.CadUsu_TDescRepHUSU_SEQMOV.AsInteger := 1
                            else
                               Dm.CadUsu_TDescRepHUSU_SEQMOV.AsInteger := Dm.ConsSql.FieldByName('SEQMOV').AsInteger + 1;

                            Dm.CadUsu_TDescRepHUSU_DATVAL.Value := Date;

                            Dm.CadUsu_TDescRepH.Post;

                         end;

                  posicao.Progress := posicao.Progress + 1;
                  Dm.ValidaDescRep.Next;
                end;
           end;

           Dm.ClientConsUSU_TDescRepH.Close;
           Dm.ConsUSU_TDescRepH.Close;
           Dm.ConsUSU_TDescRepH.SQL.Clear;
           Dm.ConsUSU_TDescRepH.SQL.Add('select USU_TDESCREPH.*,');
           Dm.ConsUSU_TDescRepH.SQL.Add('       E085CLI.NOMCLI,E085CLI.CIDCLI,E085CLI.SIGUFS,');
           Dm.ConsUSU_TDescRepH.SQL.Add('       E090REP.NOMREP,E090REP.APEREP,');
           Dm.ConsUSU_TDescRepH.SQL.Add('       E075PRO.DESPRO,');
           Dm.ConsUSU_TDescRepH.SQL.Add('       E028CPG.DESCPG');
           Dm.ConsUSU_TDescRepH.SQL.Add('  from USU_TDESCREPH');
           Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E085CLI ON E085CLI.CODCLI = USU_TDESCREPH.USU_CODCLI');
           Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E090REP ON E090REP.CODREP = USU_TDESCREPH.USU_CODREP');
           Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E075PRO ON E075PRO.CODEMP = USU_TDESCREPH.USU_CODEMP AND');
           Dm.ConsUSU_TDescRepH.SQL.Add('                        E075PRO.CODPRO = USU_TDESCREPH.USU_CODPRO');
           Dm.ConsUSU_TDescRepH.SQL.Add('  INNER JOIN E028CPG ON E028CPG.CODEMP = USU_TDESCREPH.USU_CODEMP AND');
           Dm.ConsUSU_TDescRepH.SQL.Add('                        E028CPG.CODCPG = USU_TDESCREPH.USU_CODCPG');
           Dm.ConsUSU_TDescRepH.SQL.Add('       WHERE');
           Dm.ConsUSU_TDescRepH.SQL.Add('         USU_TDESCREPH.USU_PRECAR = :PRECAR AND');
           Dm.ConsUSU_TDescRepH.SQL.Add('         USU_TDESCREPH.USU_SEQVAL = :SEQVAL');
           Dm.ConsUSU_TDescRepH.SQL.Add('         ORDER BY USU_TDESCREPH.USU_NUMPED,USU_TDESCREPH.USU_CODFIL');
           Dm.ConsUSU_TDescRepH.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
           Dm.ConsUSU_TDescRepH.Parameters.ParamByName('SEQVAL').Value := vnSeqVal;
           Dm.ConsUSU_TDescRepH.Open;
           Dm.ClientConsUSU_TDescRepH.Open;

           btnLiberar.Enabled := True;
           posicao.Visible := false;
     end;
end;

procedure TFValidaDescPed.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    //GRID ZEBRADA
    if odd(Dm.ClientConsUSU_TDescRepH.RecNo) then
    dbg1.Canvas.Brush.Color:= clmenubar
    else
    dbg1.Canvas.Brush.Color:= clCream;

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

procedure TFValidaDescPed.dbmmoUSU_JUSOBSExit(Sender: TObject);
begin
  if Dm.CadUsu_TDescRepH.State in [dsEdit] then
     begin
       Dm.CadUsu_TDescRepH.Post;

     end;
end;

procedure TFValidaDescPed.dbmmoUSU_JUSOBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFValidaDescPed.edtPreCarExit(Sender: TObject);
begin
    btnLiberar.Enabled := false;

 if Trim(edtPreCar.Text) <> '' then
     begin
        Dm.ConsSql.Close;
        Dm.ConsSql.SQL.Clear;
        Dm.ConsSql.SQL.Add('SELECT USU_TPRECAR.*');
        Dm.ConsSql.SQL.Add(' FROM USU_TPRECAR');
        Dm.ConsSql.SQL.Add(' WHERE');
        Dm.ConsSql.SQL.Add(' USU_TPRECAR.USU_PRECAR = :PRECAR');
        Dm.ConsSql.Parameters.ParamByName('PRECAR').Value := StrToInt(edtPreCar.Text);
        Dm.ConsSql.Open;
        if Dm.ConsSql.IsEmpty then
           begin
             Application.MessageBox('Pré-Carga não encontrada','Aviso',MB_ICONWARNING+MB_OK);
             Abort;
           end
        else
           begin
             if Dm.ConsSql.FieldByName('usu_inpeddiv').Value <> 'S' then
                begin
                  Application.MessageBox('Não foi confirmado divisão de pedidos para esta pré-carga','Aviso',MB_ICONWARNING+MB_OK);
                  Abort;
                end;
           end;
     end;
end;

procedure TFValidaDescPed.edtPreCarKeyPress(Sender: TObject; var Key: Char);
begin
IF not (Key in ['0'..'9',#8,',']) THEN
     begin
       Key := #0;
     end;
end;

procedure TFValidaDescPed.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFValidaDescPed.FormShow(Sender: TObject);
begin
  Dm.ClientConsUSU_TDescRepH.Close;
  btnLiberar.Enabled := false;
  posicao.Visible := false;
end;

end.
