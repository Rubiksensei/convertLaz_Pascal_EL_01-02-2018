unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnReset: TButton;
    cmTOinch: TButton;
    cm: TFloatSpinEdit;
    inch: TFloatSpinEdit;
    inchTOcm: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnResetClick(Sender: TObject);
    procedure cmTOinchClick(Sender: TObject);
    procedure inchTOcmClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.cmTOinchClick(Sender: TObject);
begin
     inch.value:=cm.value*0.393701;
end;

procedure TForm1.inchTOcmClick(Sender: TObject);
begin
     cm.value:=inch.value*2.54;
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
     cm.value:=0;
     inch.value:=0;
end;

end.

