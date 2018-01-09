unit UAvaliaSerasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons, ShellAPI, ImgList;

type
  TFAvaliaSerasa = class(TForm)
    dbg1: TDBGrid;
    dsCliAvaliarSerasa: TDataSource;
    btnConsultar: TBitBtn;
    ImageList1: TImageList;
    Label1: TLabel;
    btnProcessarArquivos: TBitBtn;
    procedure btnConsultarClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcessarArquivosClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FAvaliaSerasa: TFAvaliaSerasa;

implementation

uses UDmOra, UAlteraSitSerasa;

{$R *.dfm}

//FUNÇÃO PARA PEGAR A DATA DE CRIAÇÃO/MODIFICAÇÃO DO ARQUIVO
function FileTimeToDTime(FTime: TFileTime): TDateTime;
var
  LocalFTime: TFileTime;
  STime: TSystemTime;
begin
  FileTimeToLocalFileTime(FTime, LocalFTime);
  FileTimeToSystemTime(LocalFTime, STime);
  Result := SystemTimeToDateTime(STime);
end;

//PROCEDIMENTO PARA PROCURAR UM ARQUIVO PELO NOME
//essa procedura usava(original) como retorno uma lista do tipo Tlistbox
//procedure procurar(diretorio, pesquisa: string; Retorno: TListBox);
procedure procurar(diretorio, pesquisa: string; Retorno: TStringList);
var
f: TSearchRec;
r: integer;
begin
  if diretorio[length(diretorio)]<>'\' then
     diretorio := diretorio+'\';

  if not DirectoryExists(diretorio) then
     exit;

  r := FindFirst(diretorio+pesquisa,faAnyFile,f);
  while (r=0) do
    begin
      r := FindNext(f);

      if (f.Name = '.') or (f.Name='..') then
         Continue;

      if f.Attr = fadirectory then
         procurar(diretorio+f.Name,pesquisa,Retorno)
      else
      begin
        Retorno.Add(diretorio+f.Name);
      end;
    end;

end;

procedure TFAvaliaSerasa.btnProcessarArquivosClick(Sender: TObject);
var vaArquivo : TStringList;
    vaNomeArq : string;
    I : Integer;
    SR: TSearchRec;
    CreateDT, AccessDT, ModifyDT: TDate;
begin

    //consulta todos que estao sendo monitorados
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add(' SELECT USU_TE085MONI.*, E085CLI.CGCCPF');
    DmOra.ConsSql.SQL.Add('  FROM USU_TE085MONI');
    DmOra.ConsSql.SQL.Add('  INNER JOIN E085CLI ON E085CLI.CODCLI = USU_TE085MONI.USU_CODCLI');
    DmOra.ConsSql.SQL.Add('  WHERE');
    DmOra.ConsSql.SQL.Add('    USU_TE085MONI.USU_MOTFIM = '' '' AND');
    DmOra.ConsSql.SQL.Add('    USU_TE085MONI.USU_SITSER <> ''INDEFINIDO''');
    DmOra.ConsSql.Open;
    DmOra.ConsSql.First;
    while not DmOra.ConsSql.Eof do
      begin
        vaNomeArq := DmOra.ConsSql.FieldByName('CGCCPF').AsString+'.pdf';
        vaArquivo := TStringList.Create;
        procurar('\\SENIOR\Senior\Serasa', vaNomeArq, vaArquivo);
        if vaArquivo.Count <> 0 then
           begin
              //PEGA A DATA DE MODIFICAÇÃO DO ARQUIVO
              if FindFirst(vaArquivo[0], faAnyFile, SR) = 0 then begin
                 CreateDT := FileTimeToDTime(SR.FindData.ftCreationTime);
                 AccessDT := FileTimeToDTime(SR.FindData.ftLastAccessTime);
                 ModifyDT := FileTimeToDTime(SR.FindData.ftLastWriteTime);
                 {ShowMessage('Created: ' + DateToStr(CreateDT) +
                         ' Accessed: ' + DateToStr(AccessDT) +
                         ' Modified: ' + DatEToStr(ModifyDT));}

                  if ((ModifyDT > DmOra.ConsSql.FieldByName('USU_DATSER').AsDateTime) or (CreateDT > DmOra.ConsSql.FieldByName('USU_DATSER').AsDateTime)) then
                     begin
                       DmOra.CadUsu_TE085Moni.Close;
                       DmOra.CadUsu_TE085Moni.Parameters.ParamByName('USU_IDMON').Value := DmOra.ConsSql.FieldByName('USU_IDMON').AsInteger;
                       DmOra.CadUsu_TE085Moni.Open;
                       if not DmOra.CadUsu_TE085Moni.IsEmpty then
                          begin
                            DmOra.CadUsu_TE085Moni.Edit;
                            DmOra.CadUsu_TE085MoniUSU_SITSER.Value := 'INDEFINIDO';
                            DmOra.CadUsu_TE085Moni.Post;
                          end;
                     end;
              end;
              FindClose(SR);
           end;
          vaArquivo.Free;
          vaArquivo := nil;

        DmOra.ConsSql.Next;
      end;


end;

procedure TFAvaliaSerasa.btn1Click(Sender: TObject);
var MENSAGEM : string;
begin
 
end;

procedure TFAvaliaSerasa.btnConsultarClick(Sender: TObject);
begin
  DmOra.CliAvaliarSerasa.Close;
  DmOra.CliAvaliarSerasa.Open;
end;

procedure TFAvaliaSerasa.dbg1DblClick(Sender: TObject);
var vaArquivo : TStringList;
    vaNomeArq : string;
begin
if (dbg1.SelectedField.FieldName = 'img') and  not(DmOra.CliAvaliarSerasa.IsEmpty) then
   begin
      vaNomeArq := DmOra.CliAvaliarSerasaCGCCPF.AsString+'.pdf';

      vaArquivo := TStringList.Create;
      //procurar('C:\winnt', '*.rtf', ListBox1);
      procurar('\\SENIOR\Senior\Serasa', vaNomeArq, vaArquivo);
      if vaArquivo.Count <> 0 then
         begin
            if vaArquivo[0] <> '' then
               begin
                  ShellExecute(Handle, nil,PWideChar(vaArquivo[0]) , nil, nil, SW_SHOWNORMAL);
               end;
         end
      else
         begin
           Application.MessageBox('Não foi encontrado arquivo no servidor','Aviso',MB_ICONWARNING+MB_OK);
         end;
        vaArquivo.Free;
        vaArquivo := nil;
   end
else
   begin
     if (dbg1.SelectedField.FieldName = 'imgAlt') and  not(DmOra.CliAvaliarSerasa.IsEmpty) then
        begin
          FAlteraSitSerasa := TFAlteraSitSerasa.Create(Self);
          FAlteraSitSerasa.edtNomCli.Text := DmOra.CliAvaliarSerasaNOMCLI.Value;
          FAlteraSitSerasa.ShowModal;
          FreeAndNil(FAlteraSitSerasa);
          btnConsultar.Click;
        end;
   end;

end;

procedure TFAvaliaSerasa.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.FieldName = 'img' then
      begin
          dbg1.Canvas.FillRect(Rect);
          ImageList1.Draw(dbg1.Canvas,Rect.Left+7,Rect.Top+1,7);
      end;
  if Column.FieldName = 'imgAlt' then
      begin
          dbg1.Canvas.FillRect(Rect);
          ImageList1.Draw(dbg1.Canvas,Rect.Left+7,Rect.Top+1,8);
      end;
end;

procedure TFAvaliaSerasa.FormShow(Sender: TObject);
begin
  btnProcessarArquivos.Click;
  btnConsultar.Click;
end;

end.
