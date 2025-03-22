unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sButton, ExtCtrls, sPanel, acPNG, acImage, shellapi;

type
  TForm6 = class(TForm)
    sImage1: TsImage;
    sPanel1: TsPanel;
    sButton1: TsButton;
    sButton2: TsButton;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.sButton1Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.sButton2Click(Sender: TObject);
begin
ShellExecute(0, 'Open',pchar( ExtractFilePath(application.exename )+'History.txt'),nil,nil,1);
end;

end.
