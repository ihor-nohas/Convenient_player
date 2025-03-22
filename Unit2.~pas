unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, sTrackBar, StdCtrls, sLabel, Buttons, sBitBtn,
  ExtCtrls, sPanel, convenient_player, Bass, acPNG, acImage;

type
  TForm2 = class(TForm)
    sPanel1: TsPanel;
    sTrackBar1: TsTrackBar;
    sLabel1: TsLabel;
    sTrackBar2: TsTrackBar;
    sLabel2: TsLabel;
    sTrackBar3: TsTrackBar;
    sLabel3: TsLabel;
    sTrackBar4: TsTrackBar;
    sLabel4: TsLabel;
    sTrackBar5: TsTrackBar;
    sLabel5: TsLabel;
    sTrackBar6: TsTrackBar;
    sLabel6: TsLabel;
    sTrackBar7: TsTrackBar;
    sLabel7: TsLabel;
    sTrackBar8: TsTrackBar;
    sLabel8: TsLabel;
    sTrackBar9: TsTrackBar;
    sLabel9: TsLabel;
    sTrackBar10: TsTrackBar;
    sLabel10: TsLabel;
    sTrackBar12: TsTrackBar;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    sTrackBar11: TsTrackBar;
    sImage1: TsImage;
    procedure sTrackBar12Change(Sender: TObject);
    procedure sTrackBar11Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sTrackBar4Change(Sender: TObject);
    procedure sTrackBar5Change(Sender: TObject);
    procedure sTrackBar6Change(Sender: TObject);
    procedure sTrackBar7Change(Sender: TObject);
    procedure sTrackBar8Change(Sender: TObject);
    procedure sTrackBar9Change(Sender: TObject);
    procedure sTrackBar10Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

//uses convenient_player;

{$R *.dfm}


procedure TForm2.sTrackBar12Change(Sender: TObject);
begin
sTrackBar1.Position:=strackbar12.Position;
sTrackBar2.Position:=strackbar12.Position;
sTrackBar3.Position:=strackbar12.Position;
sTrackBar4.Position:=strackbar12.Position;
sTrackBar5.Position:=strackbar12.Position;
sTrackBar6.Position:=strackbar12.Position;
sTrackBar7.Position:=strackbar12.Position;
sTrackBar8.Position:=strackbar12.Position;
sTrackBar9.Position:=strackbar12.Position;
sTrackBar10.Position:=strackbar12.Position;
end;

procedure TForm2.sTrackBar11Change(Sender: TObject);
begin
//регулювання балансу
BASS_ChannelSetAttribute(Channel,BASS_ATTRIB_PAN, sTrackbar11.Position/5);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
strackbar11.Min:=-5;
strackbar11.Max:=5;
strackbar11.Position:=0;
//налаштування еквалайзера
  strackbar1.position:=IniFile.ReadInteger('EQLayzer','strackbar1.position',15);
  strackbar2.position:=IniFile.ReadInteger('EQLayzer','strackbar2.position',15);
  strackbar3.position:=IniFile.ReadInteger('EQLayzer','strackbar3.position',15);
  strackbar4.position:=IniFile.ReadInteger('EQLayzer','strackbar4.position',15);
  strackbar5.position:=IniFile.ReadInteger('EQLayzer','strackbar5.position',15);
  strackbar6.position:=IniFile.ReadInteger('EQLayzer','strackbar6.position',15);
  strackbar7.position:=IniFile.ReadInteger('EQLayzer','strackbar7.position',15);
  strackbar8.position:=IniFile.ReadInteger('EQLayzer','strackbar8.position',15);
  strackbar9.position:=IniFile.ReadInteger('EQLayzer','strackbar9.position',15);
  strackbar10.position:=IniFile.ReadInteger('EQLayzer','strackbar10.position',15)
end;

procedure TForm2.sTrackBar1Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[1], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar1.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[1], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar2Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[2], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar2.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[2], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar3Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[3], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar3.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[3], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar4Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[4], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar4.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[4], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar5Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[5], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar5.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[5], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar6Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[6], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar6.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[6], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar7Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[7], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar7.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[7], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar8Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[8], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar8.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[8], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar9Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[9], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar9.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[9], @p);//встановлюєм змінені параметри
end;

procedure TForm2.sTrackBar10Change(Sender: TObject);
begin
BASS_FXGetParameters(fx[10], @p);//зчитуєм параметри каналу
p.fgain := 15-sTrackBar10.position;//задаєм посилення в залежності від позиції TrackBar
BASS_FXSetParameters(fx[10], @p);//встановлюєм змінені параметри
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.AutoSize:=false;
//еквалайзер
  IniFile.WriteInteger('EQLayzer','strackbar1.position',strackbar1.position);
  IniFile.WriteInteger('EQLayzer','strackbar2.position',strackbar2.position);
  IniFile.WriteInteger('EQLayzer','strackbar3.position',strackbar3.position);
  IniFile.WriteInteger('EQLayzer','strackbar4.position',strackbar4.position);
  IniFile.WriteInteger('EQLayzer','strackbar5.position',strackbar5.position);
  IniFile.WriteInteger('EQLayzer','strackbar6.position',strackbar6.position);
  IniFile.WriteInteger('EQLayzer','strackbar7.position',strackbar7.position);
  IniFile.WriteInteger('EQLayzer','strackbar8.position',strackbar8.position);
  IniFile.WriteInteger('EQLayzer','strackbar9.position',strackbar9.position);
  IniFile.WriteInteger('EQLayzer','strackbar10.position',strackbar10.position);
end;

procedure TForm2.FormShow(Sender: TObject);
begin
Form2.AutoSize:=true;
end;

end.
