unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, sLabel, ComCtrls, sTrackBar, acPNG, acImage,
  sPanel, convenient_player, Unit2, bass, Menus;

type
  TForm3 = class(TForm)
    sPanel2: TsPanel;
    sImage1: TsImage;
    sImage2: TsImage;
    sImage3: TsImage;
    sImage4: TsImage;
    sImage5: TsImage;
    sImage6: TsImage;
    sTrackBar1: TsTrackBar;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure sImage6Click(Sender: TObject);
    procedure sPanel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sPanel2MouseEnter(Sender: TObject);
    procedure sPanel2MouseLeave(Sender: TObject);
    procedure sImage1Click(Sender: TObject);
    procedure sImage2Click(Sender: TObject);
    procedure sImage3Click(Sender: TObject);
    procedure sImage4Click(Sender: TObject);
    procedure sImage5Click(Sender: TObject);
    procedure sPanel1DblClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox2Paint(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  left3, Top3: integer;

implementation


{$R *.dfm}


procedure TForm3.sImage6Click(Sender: TObject);
begin
Form3.Visible:=false;
Form1.Timer3.Enabled:=false;
Form1.Caption:='Convenient player';
Form1.Left:=Lefts;
Form1.Top:=Tops;
Form1.sScrollBar1.Visible:=false;
Form1.sDragBar1.Visible:=true;
Form1.sPanel3.Visible:=true;
Form1.sScrollBar1.Top:=216;
Form1.sScrollBar1.Visible:=true;
Form1.AlphaBlend:=true;
if Form2.AutoSize=true then
Form2.Show;
Form1.sPanel2.Visible:=true;
Form1.Visible:=true;
end;

procedure TForm3.sPanel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Form1.Visible:=false;
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TForm3.sPanel2MouseEnter(Sender: TObject);
begin
Form1.Left:=Form3.Left;
Form1.Top:=Form3.Top-55;
Form1.AlphaBlend:=true;
Form1.Visible:=true;
end;

procedure TForm3.sPanel2MouseLeave(Sender: TObject);
begin
if Form3.Visible=false or Form3.Active=true then exit;
Form1.Visible:=false;
end;

procedure TForm3.sImage1Click(Sender: TObject);
begin
Form1.sImage6Click(Form1);
end;

procedure TForm3.sImage2Click(Sender: TObject);
begin
Form1.sImage7Click(Form1);
end;

procedure TForm3.sImage3Click(Sender: TObject);
begin
Form1.sImage8Click(Form1);
end;

procedure TForm3.sImage4Click(Sender: TObject);
begin
Form1.sImage9Click(Form1);
end;

procedure TForm3.sImage5Click(Sender: TObject);
begin
Form1.sImage10Click(Form1);
end;

procedure TForm3.sPanel1DblClick(Sender: TObject);
begin
sImage6Click(Form3);
end;

procedure TForm3.PaintBox1Paint(Sender: TObject);
begin
PaintBox1.Canvas.Brush.Color:=clInactiveCaptionText;
PaintBox1.Canvas.FillRect(PaintBox1.Canvas.ClipRect);
end;

procedure TForm3.PaintBox2Paint(Sender: TObject);
begin
PaintBox2.Canvas.Brush.Color:=clInactiveCaptionText;
PaintBox2.Canvas.FillRect(PaintBox2.Canvas.ClipRect);
end;

procedure TForm3.sTrackBar1Change(Sender: TObject);
begin
Form1.Timer3.Enabled:=false;
Form1.sTrackBar2.Position:=Form3.sTrackBar1.Position;
with Form1.sTrackBar2 do
    begin
    BASS_ChannelSetAttribute(Channel, BASS_ATTRIB_VOL, Form1.sTrackBar2.Position/10);
    if Form3.Visible=false then exit;
    Form1.Caption:='                                             '+volumstr+IntToStr(Position*10)+' %';
    end;
end;

procedure TForm3.sTrackBar1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if FileName<>'' then
begin
Form1.Caption:='          '+'---__'+ExtractFileName(FileName)+'__---'+'          ';
Form1.Timer3.Enabled:=true;
end
else
begin
Form1.Caption:='';
end;
end;

procedure TForm3.sImage1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Play ZG1.png');
end;

procedure TForm3.sImage1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Play ZG.png');
end;

procedure TForm3.sImage2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage2.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Paused ZG1.png');
end;

procedure TForm3.sImage2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage2.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Paused ZG.png');
end;

procedure TForm3.sImage3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage3.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Stop ZG1.png');
end;

procedure TForm3.sImage3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage3.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Stop ZG.png');
end;

procedure TForm3.sImage4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage4.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Poperedna ZG1.png');
end;

procedure TForm3.sImage4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage4.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Poperedna ZG.png');
end;

procedure TForm3.sImage5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage5.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Next ZG1.png');
end;

procedure TForm3.sImage5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage5.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Next ZG.png');
end;

procedure TForm3.sImage6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage6.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Головне вікно ZG1.png');
end;

procedure TForm3.sImage6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage6.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Головне вікно ZG.png');
end;

procedure TForm3.N1Click(Sender: TObject);
begin
Form1.Close;
end;

end.
