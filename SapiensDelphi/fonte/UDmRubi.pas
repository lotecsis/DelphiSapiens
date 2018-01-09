unit UDmRubi;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmRubi = class(TDataModule)
    ADOBanco: TADOConnection;
    ConsR002Fem: TADOQuery;
    ConsR002FemCODFER: TIntegerField;
    ConsR002FemDATFER: TDateTimeField;
    ConsR002FemDESFER: TStringField;
    ConsR002FemDISVTR: TStringField;
    ConsR002FemUTISRV: TIntegerField;
    ConsR054Ctd: TADOQuery;
    ConsR054CtdNUMEMP: TIntegerField;
    ConsR054CtdTIPCOL: TIntegerField;
    ConsR054CtdNUMCAD: TIntegerField;
    ConsR054CtdCMPCTD: TDateTimeField;
    ConsR054CtdMOTREA: TIntegerField;
    ConsR054CtdREAREM: TBCDField;
    ConsR054CtdFAICON: TBCDField;
    ConsR054CtdDATREC: TDateTimeField;
    ConsR054CtdDAT13S: TDateTimeField;
    ConsR054CtdPAGINS: TStringField;
    ConsR054CtdPAG13S: TStringField;
    ConsR054CtdFATTPO: TBCDField;
    ConsR054CtdREMSAL: TBCDField;
    ConsR054CtdREMCTR: TBCDField;
    ConsR054CtdREMADI: TBCDField;
    ConsR054CtdREMCOM: TBCDField;
    ConsR054CtdREMEXT: TBCDField;
    ConsR054CtdREMFER: TBCDField;
    ConsR054CtdTOTREM: TBCDField;
    ConsR054CtdBINMES: TBCDField;
    ConsR054CtdVINMES: TBCDField;
    ConsR054CtdVIRMES: TBCDField;
    ConsR054CtdVMAMES: TBCDField;
    ConsR054CtdBIN13S: TBCDField;
    ConsR054CtdVIN13S: TBCDField;
    ConsR054CtdVIR13S: TBCDField;
    ConsR054CtdVALSFA: TBCDField;
    ConsR054CtdVMA13S: TBCDField;
    ConsR034FunImp: TADOQuery;
    ConsR034FunImpNUMCAD: TIntegerField;
    ConsR034FunImpNOMFUN: TStringField;
    ConsR034FunImpAPEFUN: TStringField;
    ConsR034FunImpDATADM: TDateTimeField;
    ConsR034FunImpNUMCPF: TBCDField;
    ConsR034FunImpSITAFA: TIntegerField;
    ConsR036DepImp: TADOQuery;
    ConsR036DepImpNUMEMP: TIntegerField;
    ConsR036DepImpNUMCAD: TIntegerField;
    ConsR036DepImpCODDEP: TIntegerField;
    ConsR036DepImpNOMDEP: TStringField;
    ConsR036DepImpDATNAS: TDateTimeField;
    ConsR036DepImpNUMCPF: TBCDField;
    ConsR036DepImpGRAPAR: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmRubi: TDmRubi;

implementation

{$R *.dfm}

end.
