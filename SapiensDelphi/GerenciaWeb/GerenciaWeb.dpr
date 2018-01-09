program GerenciaWeb;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDmFire in 'UDmFire.pas' {DmFire: TDataModule},
  UProcessaPedidos in 'UProcessaPedidos.pas' {FProcessaPedidos},
  UCadUsuSysRepWeb in 'UCadUsuSysRepWeb.pas' {FCadUsuSysRepWeb},
  UFormAlerta in 'UFormAlerta.pas' {FormAlerta},
  UDmFireRep in 'UDmFireRep.pas' {DmFireRep: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDmFire, DmFire);
  Application.CreateForm(TFCadUsuSysRepWeb, FCadUsuSysRepWeb);
  Application.CreateForm(TFormAlerta, FormAlerta);
  Application.CreateForm(TDmFireRep, DmFireRep);
  Application.Run;
end.
