unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sLabel, sEdit, ExtCtrls, sPanel, convenient_player;

type
  TForm4 = class(TForm)
    sButton1: TsButton;
    sButton2: TsButton;
    sLabel1: TsLabel;
    sEdit1: TsEdit;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.sButton1Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.sButton2Click(Sender: TObject);
begin
if Form4.sEdit1.Text<>'' then
begin
if Form1.sListBox3.Items.Count<0 then
begin
numbers:=1;
end
else
begin
numbers:=Form1.sListBox3.Items.Count+1;
end;

Form1.sListBox5.Items.Add(Form4.sEdit1.Text);
Form1.sListBox3.Items.Add(IntToStr(numbers)+'.'+' '+Form4.sEdit1.Text);
Form1.sListBox3.ItemIndex:=Form1.sListBox3.Items.Count-1;
end;
Form4.Close;
end;

end.
