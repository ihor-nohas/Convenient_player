unit convenient_player;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, acImage, sSkinManager, sPanel, Buttons,
  sSpeedButton, StdCtrls, sBitBtn, sButton, ComCtrls, sTrackBar, sScrollBar,
  sLabel, sListBox, Menus, Bass, sDialogs, sEdit, acPathDialog, bassenc, spectrum_vis,
  ImgList, acAlphaImageList, sHintManager, CommonTypes, ShellAPI, iniFiles,
  acProgressBar, sComboBox, OleCtrls, ACTIVELISTENPROJECTLib_TLB, GIFImage;

type
  TPlayerMode = (Stop, Play, Paused);
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sPanel2: TsPanel;
    sListBox1: TsListBox;
    sListBox2: TsListBox;
    Timer1: TTimer;
    sPanel3: TsPanel;
    sImage5: TsImage;
    sImage2: TsImage;
    sImage1: TsImage;
    sLabel4: TsLabel;
    sImage3: TsImage;
    sImage4: TsImage;
    sImage6: TsImage;
    sImage7: TsImage;
    sImage8: TsImage;
    sImage9: TsImage;
    sImage10: TsImage;
    sImage11: TsImage;
    sPanel1: TsPanel;
    sTrackBar2: TsTrackBar;
    sDragBar1: TsDragBar;
    Timer2: TTimer;
    sScrollBar1: TsScrollBar;
    sBitBtn1: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn2: TsBitBtn;
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    PaintBox3: TPaintBox;
    PaintBox4: TPaintBox;
    sLabel3: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    pb1: TPaintBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PopupMenu2: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    sLabel7: TsLabel;
    sOpenDialog1: TsOpenDialog;
    PopupMenu3: TPopupMenu;
    sImage12: TsImage;
    sImage13: TsImage;
    L1: TMenuItem;
    N11: TMenuItem;
    PopupMenu4: TPopupMenu;
    N10: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    sEdit1: TsEdit;
    sImage14: TsImage;
    PopupMenu5: TPopupMenu;
    N15: TMenuItem;
    sImage15: TsImage;
    Timer3: TTimer;
    N17: TMenuItem;
    N19: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    D1: TMenuItem;
    N16: TMenuItem;
    N26: TMenuItem;
    sPanel4: TsPanel;
    sPathDialog1: TsPathDialog;
    sListBox3: TsListBox;
    sListBox4: TsListBox;
    sHintManager1: TsHintManager;
    sPanel5: TsPanel;
    PaintBox5: TPaintBox;
    N27: TMenuItem;
    Timer4: TTimer;
    v1: TMenuItem;
    sLabel8: TsLabel;
    sSaveDialog1: TsSaveDialog;
    sOpenDialog2: TsOpenDialog;
    sListBox5: TsListBox;
    PopupMenu6: TPopupMenu;
    N18: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    sImage16: TsImage;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    BlackBox1: TMenuItem;
    Cold1: TMenuItem;
    DarkMetro1: TMenuItem;
    Nautilus1: TMenuItem;
    Vb1: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    sImage17: TsImage;
    sImage18: TsImage;
    sPanel6: TsPanel;
    sImage20: TsImage;
    sImage21: TsImage;
    N20: TMenuItem;
    N35: TMenuItem;
    procedure sImage3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage4Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sImage6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox2Paint(Sender: TObject);
    procedure PaintBox3Paint(Sender: TObject);
    procedure PaintBox4Paint(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure sImage11Click(Sender: TObject);
    procedure sImage6Click(Sender: TObject);
    procedure sImage3Click(Sender: TObject);
    procedure sPanel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage7Click(Sender: TObject);
    procedure sImage8Click(Sender: TObject);
    procedure sImage9Click(Sender: TObject);
    procedure sImage10Click(Sender: TObject);
    procedure sLabel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sLabel6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //---------------------procedure and function------------------------
    procedure Player;//процедура програвання
    function lentime(filename1:string): string;//визначає довжину аудіо-файла по часу
    procedure GetAllFiles(Path: string);// процедура для додавання із папки аудіо файли в плейлист
    procedure AddListFiles; //процедура для додавання в sListBox1 i sListBox4 файли із sListBox2 але з обрізаним шляхом та інше...
    procedure GetNameRadio; //процедура для визначення назви радіо станції яка відтворюється
    //------------------------------------------------------
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure sListBox1DblClick(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure sImage13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sPanel3DblClick(Sender: TObject);
    procedure sImage14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sEdit1Click(Sender: TObject);
    procedure sImage15Click(Sender: TObject);
    procedure sImage11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer3Timer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure sEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sBitBtn4Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure v1Click(Sender: TObject);
    procedure sListBox3DblClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure sTrackBar2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N15Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure sImage16Click(Sender: TObject);
    procedure sImage16MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage16MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N4Click(Sender: TObject);
    procedure BlackBox1Click(Sender: TObject);
    procedure Cold1Click(Sender: TObject);
    procedure DarkMetro1Click(Sender: TObject);
    procedure Nautilus1Click(Sender: TObject);
    procedure Vb1Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure sImage3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage17Click(Sender: TObject);
    procedure sImage18Click(Sender: TObject);
    procedure sImage4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage15MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage15MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N12Click(Sender: TObject);
    procedure sImage6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N16Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure sImage21Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure sLabel7Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N20Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    

    
  private
    { Private declarations }
    //прцедури для преклеювання 2 форми до першої-------*
    procedure WMMove (var Message: TWmMove); message WM_MOVE;
    procedure UpdateChildPos;
    procedure UpdateChildRect (const Rect: TRect);
    //--------------------------------------------------*
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;//отримання повідомлення про перенесення файлу у вікно програми
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  volume_pos: integer;//позиція звуку
  lefts: integer;//Для запам'ятовування
  tops: integer;//розташування форми на екрані
  i:integer;//номер відтворюваної мелодії в плейлисті
  filename: string;//ім'я файлу
  Channel: DWORD;//дескриптор каналу
  Mode: TPlayerMode;//PlayMode
  //Змінні для налаштувань еквалайзера
  p: BASS_DX8_PARAMEQ;
  fx: array[1..10] of integer;
  //змінні візуалізації
  Spectrum:TSpectrum;
  Spectrum1:TSpectrum;
  number: integer=1;  //лічильник для аудіо листа
  numbers: integer=1; //лічильник для радіо листа
  //Змінні для радіо
   url:string;//адреса радіо
   url_radio:HSTREAM;//змінна для запам'ятовування радіо-каналу
   radio_mode:boolean=false;
   records:Integer;//номер запису
   CHANINFO : BASS_CHANNELINFO;
   IniFile: TIniFile; //змінні файла конфігурації
   rd: boolean; //змінна вик. для увімкнення або вимкнення рандомного відтворення
   meta: PAnsiChar;//зберігає назву радіо
   povtorstr1: string='Повтор [Увімкн]';
   povtorstr2: string='Повтор [Вимкн]';
   randstr1: string='Випадковий [Увімкн]';
   randstr2: string='Випадковий [Вимкн]';
   volumstr: string='Гучність: ';
   stopg: Boolean = true; //допоміжна змінна для голосового управління
   vis: integer=2;//допоміжна змінна для зміни візуалізації
   vl: boolean=true;//допоміжна змінна для гучності

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.sImage3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage3.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Power(3).png');
end;

procedure TForm1.sImage4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage4.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Згорнути3.png');
end;

procedure TForm1.sImage4Click(Sender: TObject);
begin
lefts:=Form1.Left;
Tops:=Form1.Top;
Form2.Visible:=false;
Form1.Visible:=false;
Form1.sDragBar1.Visible:=false;
Form1.sPanel3.Visible:=false;
Form1.sPanel2.Visible:=false;
Form3.sTrackBar1.Position:=Form1.sTrackBar2.Position;
if sListBox3.Visible=true then
begin
Form1.Caption:='          '+'---__'+meta+'__---'+'          ';
Timer3.Enabled:=true;
end
else
begin
if sLabel3.Caption<>'                                            ' then begin
Form1.Caption:='          '+'---__'+ExtractFileName(FileName)+'__---'+'          ';
Timer3.Enabled:=true;
end
else Form1.Caption:='';
end;
Form3.Show;
Form3.Visible:=true;
end;


procedure TForm1.sBitBtn3Click(Sender: TObject);
begin
if sPanel2.Visible=true then
begin
sPanel2.Visible:=false;
end
else
sPanel2.Visible:=true;
end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
begin
if Form2.Visible=false then
begin
Form2.Left:=Form1.Left-Form1.Width;
Form2.Top:=Form1.Top+20;
Form2.Show;
Form2.Visible:=true;
end
else
begin
Form2.Visible:=false;
Form2.Close;
end;
end;

procedure TForm1.sImage6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage6.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/play(fotoshop)1.png');
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
PaintBox1.Canvas.Brush.Color:=clInactiveCaptionText;
PaintBox1.Canvas.FillRect(PaintBox1.Canvas.ClipRect);
end;

procedure TForm1.PaintBox2Paint(Sender: TObject);
begin
PaintBox2.Canvas.Brush.Color:=clInactiveCaptionText;
PaintBox2.Canvas.FillRect(PaintBox2.Canvas.ClipRect);
end;

procedure TForm1.PaintBox3Paint(Sender: TObject);
begin
PaintBox3.Canvas.Brush.Color:=clInactiveCaptionText;
PaintBox3.Canvas.FillRect(PaintBox1.Canvas.ClipRect);
end;

procedure TForm1.PaintBox4Paint(Sender: TObject);
begin
PaintBox4.Canvas.Brush.Color:=clInactiveCaptionText;
PaintBox4.Canvas.FillRect(PaintBox1.Canvas.ClipRect);
end;

procedure TForm1.sTrackBar2Change(Sender: TObject);
begin
Timer2.Enabled:=false;
sLabel3.Left:=151;
with sTrackBar2 do
    begin
    BASS_ChannelSetAttribute(Channel, BASS_ATTRIB_VOL, sTrackBar2.Position/10);
    slabel3.Caption:=volumstr+IntToStr(Position*10)+' %';
    end;
if sListBox3.Visible=true then
begin
BASS_SetVolume(sTRackBar2.Position/1000);
end;
if sTrackBar2.Position=0 then
begin
sImage21.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/volume2.png');
end
else
sImage21.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/volume.png');
end;


procedure TForm1.UpdateChildPos;
begin
if Assigned(Form2) then
  if Form2.Visible then
  begin
    Form2.Left := Left-width;
    Form2.Top := Top+20;
  end;
end;

procedure TForm1.UpdateChildRect(const Rect: TRect);
begin
if Assigned(Form2) then
  if Form2.Visible then
  begin
    Form2.Left := Rect.Left-width;
    Form2.Top := Rect.Top+20;
  end;
end;

procedure TForm1.WMMove(var Message: TWmMove);
begin
inherited;
  UpdateChildPos;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var FFTFata : TFFTData;
TrackLen, TrackPos: Double;
ValPos: Double;
ValLen: Double;
left,right,l1,r1,l2,r2:integer;
level:dword;
begin
//перевіряєм режим відтворення, якщо не Play то виходим
if mode<>play then Exit;

//відтворення наступної мелодії
//якщо час відтворення рівний довжині мелодії по часу,
if  BASS_ChannelIsActive(channel)=BASS_ACTIVE_STOPPED   then
   begin
   //якщо планувальник увімкнено то вимкнути пк по завершенню відтворення
   if N33.Checked=true then
   begin
   ShellExecute(handle, nil,'shutdown',' -s -t 00','', SW_SHOWNORMAL);
   end;
//то вибираєм наступну мелодію із плейлиста
 if sBitBtn1.Default=true then begin

    player; end
    else
if rd=true then
begin
//вибір рандомно треку
            i:=random(sListBox2.Items.Count);
            Filename:=sListBox2.Items.Strings[i];
            sListBox1.ItemIndex:=i;
            mode:=stop; 
            player;
end
else
if i<sListBox1.Items.Count-1 then
   begin
    inc(i);
 Filename:=sListBox2.Items.Strings[i];
 sListBox1.ItemIndex:=i;
    mode:=stop;
    player;
   end
   //якщо плейлист закінчився то виходим
   else
   begin
   //якщо планувальник увімкнено то вимкнути пк по завершенню списка відтворення
   if N34.Checked=true then
   begin
   if  BASS_ChannelIsActive(channel)=BASS_ACTIVE_STOPPED   then
   begin
   ShellExecute(handle, nil,'shutdown',' -s -t 00','', SW_SHOWNORMAL);
   end;
   end;
   end;
   exit;
   end;

//виклик візуалізації
try
    BASS_ChannelGetData(Channel,@FFTFata,BASS_DATA_FFT1024);
    Spectrum.Draw(pb1.Canvas.Handle,FFTFata, 1, 1);
   except
    on e:Exception do
   end;
if BASS_ChannelIsActive(Channel)<>BASS_Active_Playing then  exit;//перевіряєм якщо канал не активний, то виходим
level:=BASS_ChannelGetLevel(Channel);//отримуєм рівень сигналу
left:=LoWord(level);// рівнеь лівого каналу(низькі 16 бітів),
right:=HiWord(level);// рівень правого каналу(високі 16 бітів).

//вираховуєм яка частина PaintBox буде зафарбовуватись,
//в залежності від рівня сигналу
l1:=round(left/32768*PaintBox1.Height);
r1:=round(right/32768*PaintBox2.Height);

l1:=round(left/32768*PaintBox3.Height);
r1:=round(right/32768*PaintBox4.Height);

//для згорнутої програми зв'язуємо з гучністю
l2:=round(left/32768/Form3.strackbar1.Max*Form3.PaintBox1.Height*Form3.strackbar1.Position);
r2:=round(right/32768/Form3.strackbar1.Max*Form3.PaintBox2.Height*Form3.strackbar1.Position);

//задаємо синій колір для малювання рівня сигналу
PaintBox1.Canvas.Brush.Color:=clHotLight;
PaintBox2.Canvas.Brush.Color:=clHotLight;
PaintBox3.Canvas.Brush.Color:=clHotLight;
PaintBox4.Canvas.Brush.Color:=clHotLight;

//задаємо синій колір для малювання рівня сигналу для згорнутої програми
Form3.PaintBox1.Canvas.Brush.Color:=clHotLight;
Form3.PaintBox2.Canvas.Brush.Color:=clHotLight;

//малюєм
PaintBox1.Canvas.Rectangle(0,PaintBox1.Height-l1,PaintBox1.Width,PaintBox1.Height);
PaintBox2.Canvas.Rectangle(0,PaintBox2.Height-r1,PaintBox2.Width,PaintBox2.Height);

PaintBox3.Canvas.Rectangle(0,PaintBox1.Height-l1,PaintBox3.Width,PaintBox3.Height);
PaintBox4.Canvas.Rectangle(0,PaintBox2.Height-r1,PaintBox4.Width,PaintBox4.Height);

//малюєм для згорнутої програми
Form3.PaintBox1.Canvas.Rectangle(0,Form3.PaintBox1.Height-l2,Form3.PaintBox1.Width,Form3.PaintBox1.Height);
Form3.PaintBox2.Canvas.Rectangle(0,Form3.PaintBox2.Height-l2,Form3.PaintBox2.Width,Form3.PaintBox2.Height);

//встановлюєм позицію scrollbar в залежності від позиції треку
sscrollbar1.Position:=bass_channelGetPosition(channel,0);

//час програвання треку
//зчитуєм скільки секунд пройшло від початку відтворення
TrackPos:=BASS_ChannelBytes2Seconds(Channel, BASS_ChannelGetPosition(Channel,0));
//зчитуєм всю довжину мелодії в секундах
TrackLen:=BASS_ChannelBytes2Seconds(Channel, BASS_ChannelGetLength(Channel,0));
//переводим секунди в години
ValPos:=TrackPos / (24 * 3600);
ValLen:=TrackLen / (24 * 3600);
//Виводим данні про час на форму в sLabel4, sLabel1 і slabel2
sLabel4.Caption:=FormatDateTime('hh:mm:ss',ValPos);//для головної форми
Form3.sLabel1.Caption:=FormatDateTime('hh:mm:ss',ValPos);//для згорнутої програми
Form3.sLabel2.Caption:=FormatDateTime('hh:mm:ss',ValLen);
//встановлення гучності звуку
BASS_ChannelSetAttribute(Channel,BASS_ATTRIB_VOL, strackBar2.Position/10);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var txt: string;
begin
txt:=sLabel3.Caption;
sLabel3.Caption:=copy(txt,2,length(txt)-1)+copy(txt,1,1);//interval 300
{sLabel3.Left:=sLabel3.Left-1;
if sLabel3.Left=lw then
sLabel3.Left:=300;   //interval 1}
end;

procedure TForm1.sImage11Click(Sender: TObject);
var j: integer;
begin
if sListBox1.ItemIndex<0 then number:=1;
//Перевіряєм якщо плейлист не пустий то запам'ятовуємо номер теперішньої мелодії
//інакше встановлюємо номер мелодії 0(перша позиція в плейлисті)
if slistbox1.Count<>0 then i:=sListBox1.ItemIndex else i:=0;
//Діалог відкриття файлу
if not sOpenDialog1.Execute then exit;
  begin
  for j:=0 to sOpenDialog1.Files.Count-1 do
    begin
     //Заповнюємо плейлист
     sListBox1.Items.Add(IntToStr(number)+'.'+' '+'['+Lentime(sOpenDialog1.Files.Strings[j])+']'+' '+ExtractFileName(sOpenDialog1.Files.Strings[j]));
     sListBox4.Items.Add('['+Lentime(sOpenDialog1.Files.Strings[j])+']'+' '+ExtractFileName(sOpenDialog1.Files.Strings[j]));
     sListBox2.Items.Add(sOpenDialog1.Files.Strings[j]);
     number:=number+1;
     end;
     //Запам'ятовуємо ім'я файлу теперішньої мелодії в плейлисті
     Filename:=sListBox2.Items.Strings[i];
     //Виділяємо цю мелодію в плейлисті
     sListBox1.ItemIndex:=i;
  end;
end;

procedure TForm1.sImage6Click(Sender: TObject);
begin
if sListBox3.Visible=true then
begin
if mode=play then
begin
BASS_ChannelPause(Channel);//призупиняєм відтворення - пауза
 mode:=paused;//встановлюєм playmode -> пауза
 end;
try
    url:=sListBox5.Items[sListBox3.itemindex];
    BASS_StreamFree(url_radio);
    url_radio:=BASS_StreamCreateURL(PAnsichar(url),0,BASS_STREAM_STATUS,nil,0);
    BASS_ChannelPlay(url_radio,False);
    radio_mode:=true;
    Timer4.Enabled:=true;
    Timer2.Enabled:=true;
   except
    on e:Exception do
   end;
GetNameRadio;
end
else
begin
if radio_mode=true then
begin
BASS_ChannelPause(url_radio);//призупиняєм відтворення - пауза
 radio_mode:=false;//встановлюєм radio_mode -> false
 end;
//Перевіряємо якщо відтворення вже іде то виходим
if (mode=play) or (radio_mode=true) then exit;
//Запускам процедуру відтворення
player;
end;
end;

procedure TForm1.sImage3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.sPanel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TForm1.sImage7Click(Sender: TObject);
begin
if sListBox3.Visible=true then
begin
BASS_ChannelPause(url_radio);
radio_mode:=false;
end
else
//Перевіряєм чи йде відтворення
if mode=play then
begin
 BASS_ChannelPause(Channel);//призупиняєм відтворення - пауза
 mode:=paused;//встановлюєм playmode -> пауза
end
else
sImage6Click(Form1);
end;

procedure TForm1.sImage8Click(Sender: TObject);
begin
if sListBox3.Visible=true then
begin
BASS_ChannelStop(url_radio);
radio_mode:=false;
end
else
//Перевіряєм чи іде відтворення
if mode=play then
begin
 BASS_ChannelStop(Channel);//зупиняєм відтворення - стоп
 mode:=Stop;//встановлюєм playmode -> стоп
 sLabel3.Caption:='';
 Timer2.Enabled:=false;
 sLabel3.Left:=98;
end;
end;

procedure TForm1.sImage9Click(Sender: TObject);
begin
if sListBox1.Visible=true then
begin
if i>0 then
   begin
   i:=i-1;
   sLabel3.Left:=98;
 Filename:=sListBox2.Items.Strings[i];
 sListBox1.ItemIndex:=i;
    mode:=stop;
    player;
   end else exit;
end
else
if sListBox3.ItemIndex=0 then exit;
sListBox3.ItemIndex:=sListBox3.ItemIndex-1;
sImage6Click(Form1);
end;

procedure TForm1.sImage10Click(Sender: TObject);
begin
if sListBox1.Visible=true then
begin
if i<sListBox1.Items.Count-1 then
   begin
    inc(i);
    sLabel3.Left:=98;
 Filename:=sListBox2.Items.Strings[i];
 sListBox1.ItemIndex:=i;
    mode:=stop;
    player;
   end else exit;
end
else
if sListBox3.ItemIndex=sListBox3.Items.Count-1 then exit;
sListBox3.ItemIndex:=sListBox3.ItemIndex+1;
sImage6Click(Form1);
end;

procedure TForm1.sLabel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
// Відкривання контекстного меню лівою клавішею миші
PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TForm1.sLabel6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
PopupMenu2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TForm1.Player;
var
bitrate, len: Word;
begin
//перевіряєм, якщо не пауза
if mode<>paused then begin
//то перевіряєм чи існує файл завантажений в PlayList
//якщо файл не існує, то виходим
if not FileExists(FileName) then begin ShowMessage('Файл не існує');exit;end;
//зупиняєм і очищуєм канал відтворення
BASS_ChannelStop(Channel);BASS_StreamFree(Channel);
//намагаємося завантажити файл і отримати дескриптор каналу
Channel := BASS_StreamCreateFile(FALSE, PChar(FileName), 0, 0, 0 {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
//якщо дескриптор каналу=0 (файл по якійсь причині не може бути завантажено),
//показуєм повідомлення про помилку і виходим
if Channel=0 then begin ShowMessage('Помилка завантаження Файлу');exit;end;

//налаштування еквалайзера
    fx[1] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);//перший канал еквалайзера
    fx[2] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);//другий канал
    fx[3] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[4] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[5] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[6] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[7] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[8] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[9] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);
    fx[10] := BASS_ChannelSetFX(channel, BASS_FX_DX8_PARAMEQ, 1);

    //налаштування першого каналу еквалайзера
    p.fGain :=15-Form2.strackbar1.Position; //посилення
    p.fBandwidth := 1; //ширина лінії пропускання
    p.fCenter := 80; //частота регулювання
    BASS_FXSetParameters(fx[1], @p);//присвоєння заданих налаштувань

    //налаштування другого каналу еквалайзера
    p.fGain := 15-Form2.strackbar2.Position;
    p.fBandwidth := 1;
    p.fCenter := 170;
    BASS_FXSetParameters(fx[2], @p);
    //і т.д.

    p.fGain := 15-Form2.strackbar3.Position;
    p.fBandwidth := 1;
    p.fCenter := 310;
    BASS_FXSetParameters(fx[3], @p);

    p.fGain := 15-Form2.strackbar4.Position;
    p.fBandwidth := 1;
    p.fCenter := 600;
    BASS_FXSetParameters(fx[4], @p);

    p.fGain := 15-Form2.strackbar5.Position;
    p.fBandwidth := 1;
    p.fCenter := 1000;
    BASS_FXSetParameters(fx[5], @p);

    p.fGain := 15-Form2.strackbar6.Position;
    p.fBandwidth := 1;
    p.fCenter := 3000;
    BASS_FXSetParameters(fx[6], @p);

    p.fGain := 15-Form2.strackbar7.Position;
    p.fBandwidth := 1;
    p.fCenter := 6000;
    BASS_FXSetParameters(fx[7], @p);

    p.fGain := 15-Form2.strackbar8.Position;
    p.fBandwidth :=1;
    p.fCenter := 10000;
    BASS_FXSetParameters(fx[8], @p);

    p.fGain := 15-Form2.strackbar9.Position;
    p.fBandwidth := 1;
    p.fCenter := 12000;
    BASS_FXSetParameters(fx[9], @p);

    p.fGain := 15-Form2.strackbar10.Position;
    p.fBandwidth := 1;
    p.fCenter := 14000;
    BASS_FXSetParameters(fx[10], @p);
end;
//командою BASS_ChannelPlay(Channel, False) намагаємося відтворити файл,
//якщо це не можливо, то показуєм повідомлення про помилку
if not BASS_ChannelPlay(Channel, False) then
            begin ShowMessage('Помилка відтворення файлу');exit;end;
//полоса відтворення
    sScrollBar1.Min:=0; //мінімальне значення
    sScrollBar1.Max:=bass_ChannelGEtLength(Channel, 0)-1;//максемальне значення
 if sListBox1.Visible=true then
 begin
//присвоюєм sLabel3 ім'я відтворюваного файлу
sLabel3.Caption:=' '+ExtractFileName(FileName)+'                                            ';

len:=BASS_StreamGetFilePosition(Channel, BASS_FILEPOS_END);
bitrate:=round(len/(125*time)+0.5); // bitrate (Kbps)

BASS_ChannelGetInfo(CHANNEL, CHANINFO);
sLabel8.Caption:='Channel: ' + FloatToStr(CHANINFO.chans) + //номер каналу... 1=mono, 2=stereo,...
'; Hz ' + FloatToStr(CHANINFO.freq)+' Bitrate; '+IntToStr(bitrate)+' Kbps'; //Швидкість відтворення в Hz
end;
//а також якщо плеєр згорнутий тоді присвоюєм,
//заголовку головної формі ім'я відтворюваного файлу
if Form3.Visible=true then
begin
Form1.Caption:='          '+'__---'+sLabel3.Caption+'---__'+'          ';
end;
 //Встановлюємо PlayMode - play
 mode:=play;
//знаходимо число із якого текст буде зникати і присвоюємо це число змінній lw
//lw:=98-sLabel3.Width;
//запускаєм рух тексту
//sLabel3.Left:=98;
Timer2.Enabled:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
var  n, count, counts, g: integer;
begin
sLabel3.Left:=98;
sLabel3.Caption:='          ';
FileName:='';
sImage20.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/GifAnimation.gif');

//реєструєм, що вікно ListBox1 буде приймати файли
DragAcceptFiles(Form1.Handle, True);

Spectrum:=TSpectrum.Create(pb1.Width,pb1.Height);
   Spectrum.Mode:=1;
   Spectrum.Pen:=clMenuHighlight;
   Spectrum.BackColor:=clMenuText;

Spectrum1:=TSpectrum.Create(PaintBox5.Width,PaintBox5.Height);
   Spectrum1.Mode:=1;
   Spectrum1.Pen:=clMenuHighlight;
   Spectrum1.BackColor:=clMenuText;
// перевірка корректності завантаженої BASS.DLL
  if (HIWORD(BASS_GetVersion) <> BASSVERSION)  then
    begin
        MessageBox(0,'Не корректна версія BASS.DLL',nil,MB_ICONERROR);
        Halt;
    end;

    // Ініціалізація аудіо - за замовчуванням, 44100hz, stereo, 16 bits
    if not BASS_Init(-1, 44100, 0, Handle, nil) and (BASS_SetConfig(BASS_CONFIG_NET_PLAYLIST, 1)) then
    begin
      MessageBox(0,'Помилка ініціалізації аудіо',nil,MB_ICONERROR);
          Halt;
    end;

//створення inifile  з ім'ям Config.ini
IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
//завантаження налаштувань із inifile
//положення форми і розмір
  Form1.Left:=IniFile.ReadInteger('Form info','Left',285);
  Form1.Top:=IniFile.ReadInteger('Form info','Top',168);
  Form1.Width:=IniFile.ReadInteger('Form info','Width',520);
  Form1.Height:=IniFile.ReadInteger('Form info','Height',501);
//гучність звуку
  strackbar2.position:=IniFile.ReadInteger('Volue','strackbar2.position',5);

  //кількість записів в плейлисті
  Count:=IniFile.ReadInteger('ItemsCount','Count',0);
  //кількість записів в плейлисті для радіо
  Counts:=IniFile.ReadInteger('ItemsCount','Counts',0);
//завантаження плейлиста
  if Count<>0 then
  begin
   for n := 0 to Count - 1 do
   begin
    sListBox2.Items.Add(IniFile.ReadString('PlayList', 'file' + IntToStr(n+1),'Помилка зчитування'));
    sListBox1.Items.Add(IniFile.ReadString('PlayList', 'file' + IntToStr(n+1),'Помилка зчитування'));
    sListBox4.Items.Add(IniFile.ReadString('PlayList', 'file' + IntToStr(n+1),'Помилка зчитування'));
    end;
//встановлення на перший запис плейлиста
    Filename:=sListBox2.Items.Strings[0];
    AddListFiles;
  end;

//завантаження плейлиста
  if Counts<>0 then
  begin
   for n := 0 to Counts - 1 do
   begin
    sListBox3.Items.Add(IniFile.ReadString('PlayList', 'files' + IntToStr(n+1),'Помилка зчитування'));
    sListBox5.Items.Add(IniFile.ReadString('PlayList', 'files' + IntToStr(n+1),'Помилка зчитування'));
    end;

    if sListBox3.ItemIndex<0 then
    begin
    numbers:=1;
    end;
    for n:=0 to sListBox5.Items.Count-1 do
    begin
     sListBox3.Items.Strings[n]:=IntToStr(numbers)+'.'+' '+sListBox5.Items.Strings[n];
     numbers:=numbers+1;
     end;
sListBox3.ItemIndex:=0;
sLabel3.Left:=98;
sLabel3.Caption:='                                            ';
  end;
//якщо користувач клацнув по аудіо-файлу на диску тоді відтворюєм його
if ParamCount>0 then
  begin
  N14.Click;
  sListBox2.Items.Add(ParamStr(1));
  sListBox1.Items.Add(ParamStr(1));
  sListBox4.Items.Add(ParamStr(1));
 //встановлення на перший запис плейлиста
   Filename:=sListBox2.Items.Strings[0];
   AddListFiles;
   N28.Click;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var n: integer;
begin
//зберігаєм налаштування в inifile
//форма
  IniFile.WriteInteger('Form info','Left',Left);
  IniFile.WriteInteger('Form info','Top',Top);
  IniFile.WriteInteger('Form info','Width',Width);
  IniFile.WriteInteger('Form info','Height',Height);
//гучність звуку
  IniFile.WriteInteger('Volue','strackbar2.position',strackbar2.position);

  //кількість файлів в PlayList
  IniFile.WriteInteger('ItemsCount','Count',sListBox2.Items.Count);
  //кількість файлів в PlayList radio
  IniFile.WriteInteger('ItemsCount','Counts',sListBox5.Items.Count);
//очистка секції PlayList
  IniFile.EraseSection('PlayList');
//вивантаження із PlayList
  for n := 0 to sListBox2.Items.Count - 1 do
  begin
  IniFile.WriteString('PlayList', 'file' + IntToStr(n+1), sListBox2.Items.Strings[n]);
  end;
  //вивантаження із PlayList radio
  for n := 0 to sListBox5.Items.Count - 1 do
  begin
  IniFile.WriteString('PlayList', 'files' + IntToStr(n+1), sListBox5.Items.Strings[n]);
  end;
//Час створення PlayList
  IniFile.WriteTime('Time','Write time',Time);
//Звільняєм об'єкти перед закриттям
  IniFile.Free;

  //Очищаєм об'єкти перед закриттям
  Bass_Stop(); //зупиняєм відтворення
  BASS_StreamFree(channel); // очищаєм звуковий канал
  Bass_Free;// Очищаєм рсурси використовувані Bass
end;

procedure TForm1.sScrollBar1Scroll(Sender: TObject;
  ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
//встановлюємо позицію відтворення треку в залежності від положення scrollbar
 bass_ChannelSetPosition(Channel, sscrollbar1.position, 0);
end;

procedure TForm1.sListBox1DblClick(Sender: TObject);
begin
i:=sListBox1.Itemindex;
 Filename:=sListBox2.Items.Strings[i];
 sImage6Click(Form1);
 mode:=stop;
 player;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
if sListBox1.Visible=true then
begin
//очистка плейлиста
sListBox1.Clear;
sListBox2.Clear;
sListBox4.Clear;
end
else
begin
sListBox3.Clear;
sListBox5.Clear;
end;
end;

procedure TForm1.L1Click(Sender: TObject);
begin
sImage11Click(Form1);
end;

procedure TForm1.sImage13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
PopupMenu3.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TForm1.sImage12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
PopupMenu4.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
//sImage12.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/-1.png');
end;

procedure TForm1.sPanel3DblClick(Sender: TObject);
begin
sImage4Click(Form1);
end;

procedure TForm1.sImage14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//sImage14.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/list1.png');
PopupMenu5.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
begin
if sBitBtn1.Default=false then
begin
sBitBtn1.Default:=true;
sBitBtn1.Hint:=povtorstr1;
end
else
begin
sBitBtn1.Default:=false;
sBitBtn1.Hint:=povtorstr2;
end;
end;

procedure TForm1.sEdit1Click(Sender: TObject);
begin
sEdit1.Clear;
sEdit1.ShowHint:=true;
end;

procedure TForm1.sImage15Click(Sender: TObject);
var
  j: integer;
begin
if sListBox1.Visible=true then
begin
    for j := 0 to sListBox1.Items.Count - 1 do
    if Pos(sEdit1.Text, sListBox1.Items.Strings[j]) <> 0 then
       begin
      sListBox1.ItemIndex:=j;
      break;
      end;
end
else
for j := 0 to sListBox3.Items.Count - 1 do
    if Pos(sEdit1.Text, sListBox3.Items.Strings[j]) <> 0 then
       begin
      sListBox3.ItemIndex:=j;
      break;
      end;
sEdit1.ShowHint:=false;
end;

procedure TForm1.sImage11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage11.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/open(fotoshop).png');
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var txt: string;
begin
txt:=Form1.Caption;
Form1.Caption:=copy(txt,2,length(txt)-1)+copy(txt,1,1);//interval 300
end;

procedure TForm1.N5Click(Sender: TObject);
begin
sImage6Click(Form1);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
sImage7Click(Form1);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
sImage8Click(Form1);
end;

procedure TForm1.N8Click(Sender: TObject);
begin
sImage9Click(Form1);
end;

procedure TForm1.N9Click(Sender: TObject);
begin
sImage10Click(Form1);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
sImage11Click(Form1);
end;

procedure TForm1.N26Click(Sender: TObject);
begin
Close;
end;

function TForm1.lentime(filename1: string): string;
 var 
   TrackLen: Double;
   ValLen: Double;
  Channel1    : DWORD;
  begin
  //освобаждаем канал 
  BASS_StreamFree(Channel1);
  //пытаемся загрузить файл и получить дескриптор канала
  Channel1 := BASS_StreamCreateFile(FALSE, PChar(FileName1), 0, 0, 0 {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF}); 
  //получаем время воспроизведения 
  TrackLen:=BASS_ChannelBytes2Seconds(Channel1,BASS_ChannelGetLength(Channel1,BASS_POS_BYTE)); 
  ValLen:=TrackLen / (24 * 3600); 
   Lentime:=FormatDateTime('hh:mm:ss',ValLen);
  //освобаждаем канал 
  BASS_StreamFree(Channel1);

end;

procedure TForm1.N10Click(Sender: TObject);
var k: integer;
begin
if sListBox1.Visible=true then
begin
if sListBox1.ItemIndex=-1 then exit;
i:=sListBox1.ItemIndex;
sListBox1.Items.Delete(i);
sListBox2.Items.Delete(i);
sListBox4.Items.Delete(i);

if i>sListBox1.Items.Count-1 then
i:=sListBox1.Items.Count-1;
sListBox1.ItemIndex:=i;

if sListBox1.Count<>0 then
begin
number:=sListBox1.ItemIndex+1;
for k:=sListBox1.ItemIndex to sListBox1.Count-1 do
begin
sListBox1.Items.Strings[k]:=IntToStr(number)+'.'+' '+sListBox4.Items.Strings[k];
number:=number+1;
end;
end;
end
else
if sListBox3.Visible=true then
begin
if sListBox3.ItemIndex=-1 then exit;
i:=sListBox3.ItemIndex;
sListBox3.Items.Delete(i);
sListBox5.Items.Delete(i);

if i>sListBox3.Items.Count-1 then
i:=sListBox3.Items.Count-1;
sListBox3.ItemIndex:=i;

if sListBox3.Count<>0 then
begin
numbers:=sListBox3.ItemIndex+1;
for k:=sListBox3.ItemIndex to sListBox3.Count-1 do
begin
sListBox3.Items.Strings[k]:=IntToStr(numbers)+'.'+' '+sListBox5.Items.Strings[k];
numbers:=numbers+1;
end;
end;
end;

end;

procedure TForm1.sEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_RETURN) then
begin
sImage15Click(Form1);
end;
end;

procedure TForm1.sBitBtn4Click(Sender: TObject);
begin
if vis=3 then
begin
sPanel6.Visible:=true;
end
else
begin
sPanel6.Visible:=false;
if Spectrum.Mode=0 then
begin
Spectrum.Mode:=1;
end
else
begin
Spectrum.Mode:=0;
end;
//для радіо
if Spectrum1.Mode=0 then
begin
Spectrum1.Mode:=1;
end
else
begin
Spectrum1.Mode:=0;
end;
end;

if vis=3 then
begin
vis:=1;
end
else
begin
vis:=vis+1;
end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
var FFTFata : TFFTData;
begin
//Візуалізація для радіо
try
    BASS_ChannelGetData(url_radio,@FFTFata,BASS_DATA_FFT1024);
    Spectrum1.Draw(PaintBox5.Canvas.Handle,FFTFata, 1, 1);
   except
    on e:Exception do
   end;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
inc(records);
    ExtractFilePath(ParamStr(0));
    url:='lame --alt-preset standard - "record\'+'Запис № '+IntToStr(records)+'.mp3"';
    BASS_Encode_Start(url_radio, pchar(url), BASS_ENCODE_AUTOFREE, nil, 0);
end;

procedure TForm1.D1Click(Sender: TObject);
begin
BASS_Encode_Stop(url_radio);
end;

procedure TForm1.N11Click(Sender: TObject);
begin
if not sPathDialog1.Execute then exit;
  begin
  Timer2.Enabled:=false;
  GetAllFiles(sPathDialog1.Path);
  AddListFiles;
  if (mode=play) or (mode=paused) then
  Timer2.Enabled:=true;
end;

end;

procedure TForm1.v1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.sListBox3DblClick(Sender: TObject);
begin
sImage6Click(Form1);
end;

procedure TForm1.WMDropFiles(var Msg: TWMDropFiles);
var
  i: integer;//лічильник файлів
  CountFile: integer;//Кількість файлів
  size: integer;//довжина рядка, який містить шлях до файлу
  Filename: PChar; //покажчик на ім'я файлу
  index: integer; //лічильник файлів
  u: boolean;
begin
if sListBox1.ItemIndex<0 then begin number:=1; end;
try
  //Функція DragQueryFile зчитує імена перетягуваних мишею файлів
  //отримуєм кількість перетягнутих файлів
  CountFile := DragQueryFile(Msg.Drop, $FFFFFFFF, Filename, 255);
  //Витягує шляхи до перетягуваних файлів і добавляєм їх в ListBox
  for i := 0 to (CountFile - 1) do
  begin
    //отримуєм довжину рядка, що має шлях до файлу
    size := DragQueryFile(Msg.Drop, i , nil, 0)+1;
    //виділяєм пам'ять під рядок з іменем файла
    Filename:= StrAlloc(size);
    //отримуєм ім'я файлу і шлях
    DragQueryFile(Msg.Drop, i, Filename, size);
    //додаємо його в ListBox  якщо розширення файла = '.mp3'
    //функція lowercase знижує регістр символів
    if DirectoryExists(StrPas(filename))=true then
    begin
         GetAllFiles(StrPas(filename));
    end else
    if (lowercase(ExtractFileExt(StrPas(filename)))='.mp3') or
       (lowercase(ExtractFileExt(StrPas(filename)))='.mp2') or
       (lowercase(ExtractFileExt(StrPas(filename)))='.mp1') or
       (lowercase(ExtractFileExt(StrPas(filename)))='.ogg') or
       (lowercase(ExtractFileExt(StrPas(filename)))='.wav') or
       (lowercase(ExtractFileExt(StrPas(filename)))='.aiff')
    then
    begin
    slistbox2.Items.add(StrPas(Filename));
    slistbox1.Items.add(StrPas(Filename));
    slistbox4.Items.add(StrPas(Filename));
    end;

    //звільняєм рядок
    StrDispose(Filename);
  end;
finally
  DragFinish(Msg.Drop); //відпустити файл
end;
AddListFiles;
end;

procedure TForm1.GetAllFiles(Path: string);
var
sRec: TSearchRec;
isFound: boolean;
begin
isFound := FindFirst( Path + '\*.*', faAnyFile, sRec ) = 0;
while isFound do
begin
if ( sRec.Name <> '.' ) and ( sRec.Name <> '..' ) then
begin
if ( sRec.Attr and faDirectory ) = faDirectory then
GetAllFiles( Path + '\' + sRec.Name);
if (lowercase(ExtractFileExt(Path + '\' + sRec.Name))='.mp3') or
   (lowercase(ExtractFileExt(Path + '\' + sRec.Name))='.mp2') or
   (lowercase(ExtractFileExt(Path + '\' + sRec.Name))='.mp1') or
   (lowercase(ExtractFileExt(Path + '\' + sRec.Name))='.ogg') or
   (lowercase(ExtractFileExt(Path + '\' + sRec.Name))='.wav') or
   (lowercase(ExtractFileExt(Path + '\' + sRec.Name))='.aiff')
then
begin
sListBox2.Items.Add( Path + '\' + sRec.Name );
sListBox1.Items.Add( Path + '\' + sRec.Name );
sListBox4.Items.Add( Path + '\' + sRec.Name );
end;
end;
Application.ProcessMessages;
isFound := FindNext( sRec ) = 0;
end;
FindClose(sRec);
end;

procedure TForm1.N17Click(Sender: TObject);
begin
if sListBox1.Visible=true then
begin
sSaveDialog1.Filter := 'pls|*.pls'; //фільтр для файлів
if sSaveDialog1.Execute=true then
begin
sListBox2.Items.SaveToFile(sSaveDialog1.FileName+'.pls');
end;
end
else
begin
sSaveDialog1.Filter := 'm3u|*.m3u';
if sSaveDialog1.Execute=true then
sListBox5.Items.SaveToFile(sSaveDialog1.FileName+'.m3u');
end;
end;

procedure TForm1.sTrackBar2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if sListBox3.Visible=true then
begin
sLabel3.Caption:=meta;
sLabel3.Left:=98;
Timer2.Enabled:=true;
end
else
if FileName<>'' then
begin
sLabel3.Caption:=ExtractFileName(FileName)+'                                            ';//присвоюєм sLabel3 ім'я відтворюваного файлу
sLabel3.Left:=98;
Timer2.Enabled:=true;
end
else
begin
sLabel3.Caption:='';
end;
end;

procedure TForm1.N15Click(Sender: TObject);
var j: integer;
begin
if sListBox1.Visible=true then
begin
if sListBox1.ItemIndex<0 then  number:=1;
sOpenDialog2.Filter := 'pls|*.pls'; //фільтр для файлів
if sOpenDialog2.Execute=true then
  begin
  sListBox1.Items.LoadFromFile(sOpenDialog2.FileName);
  sListBox2.Items.LoadFromFile(sOpenDialog2.FileName);
  for j:=0 to sListBox1.Items.Count-1 do
    begin
     sListBox1.Items.Strings[j]:=IntToStr(number)+'.'+' '+'['+Lentime(sListBox2.Items.Strings[j])+']'+' '+ExtractFileName(sListBox2.Items.Strings[j]);
     sListBox4.Items.Strings[j]:='['+Lentime(sListBox2.Items.Strings[j])+']'+' '+ExtractFileName(sListBox2.Items.Strings[j]);
     number:=number+1;
     end;
     end;
end
else
begin
if sListBox3.ItemIndex<0 then  number:=1;
sOpenDialog2.Filter := 'm3u|*.m3u';
if sOpenDialog2.Execute=true then
  begin
  sListBox3.Items.LoadFromFile(sOpenDialog2.FileName);
  sListBox5.Items.LoadFromFile(sOpenDialog2.FileName);
  for j:=0 to sListBox3.Items.Count-1 do
    begin
     sListBox3.Items.Strings[j]:=IntToStr(number)+'.'+' '+sListBox5.Items.Strings[j];
     number:=number+1;
     end;
     end;
     end;
end;

procedure TForm1.AddListFiles;
var j: integer;
begin
number:=1;
for j:=0 to sListBox1.Items.Count-1 do
    begin
     sListBox1.Items.Strings[j]:=IntToStr(number)+'.'+' '+'['+Lentime(sListBox2.Items.Strings[j])+']'+' '+ExtractFileName(sListBox2.Items.Strings[j]);
     sListBox4.Items.Strings[j]:='['+Lentime(sListBox2.Items.Strings[j])+']'+' '+ExtractFileName(sListBox2.Items.Strings[j]);
     number:=number+1;
     end;
sListBox1.ItemIndex:=0;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
sImage11Click(Form1);
end;

procedure TForm1.N28Click(Sender: TObject);
begin
i:=sListBox1.Itemindex;
 Filename:=sListBox2.Items.Strings[i];
 sImage6Click(Form1);
 mode:=stop;
 player;
end;

procedure TForm1.N29Click(Sender: TObject);
begin
PopupMenu4.Items[0].Click;
end;

procedure TForm1.sImage16Click(Sender: TObject);
begin
if rd=false then
begin
rd:=true;
sImage16.Hint:=randstr2;
end
else
rd:=false;
sImage16.Hint:=randstr1;
end;

procedure TForm1.sImage16MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if rd=false then
begin
//получення шляху до папки з програмою де вона б не була
sImage16.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Рандом Вимк.png');
end
else
sImage16.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Рандом Увімкн.png');
end;

procedure TForm1.sImage16MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if rd=false then
begin
//получення шляху до папки з програмою де вона б не була
sImage16.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Рандом Вимк2.png');
end
else
sImage16.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Рандом Увімкн2.png');
end;

procedure TForm1.N4Click(Sender: TObject);
begin
PopupMenu3.Items[1].Click;
end;

procedure TForm1.GetNameRadio;
var
  p: Integer;
begin
  meta := BASS_ChannelGetTags(url_radio, BASS_TAG_META);
  if (meta <> nil) then
  begin
    p := Pos('StreamTitle=', String(AnsiString(meta)));
    if (p = 0) then
      Exit;
    p := p + 13;
    meta:=PAnsiChar(AnsiString(Copy(meta, p, Pos(';', String(meta)) - p - 1)));
if meta<>'' then
begin
slabel3.caption:=meta;
numbers:=sListBox3.ItemIndex+1;
sListBox3.Items.Strings[sListBox3.ItemIndex]:=IntToStr(numbers)+'.'+' '+meta;
end
else
begin
slabel3.caption:=meta;
numbers:=sListBox3.ItemIndex+1;
sListBox3.Items.Strings[sListBox3.ItemIndex]:=IntToStr(numbers)+'.'+' '+meta;
end;
end;

end;

procedure TForm1.BlackBox1Click(Sender: TObject);
begin
sSkinManager1.Active:=true;
sSkinManager1.SkinName:='Black Box (internal)';
end;

procedure TForm1.Cold1Click(Sender: TObject);
begin
sSkinManager1.Active:=true;
sSkinManager1.SkinName:='Cold (internal)';
end;

procedure TForm1.DarkMetro1Click(Sender: TObject);
begin
sSkinManager1.Active:=true;
sSkinManager1.SkinName:='DarkMetro (internal)';
end;

procedure TForm1.Nautilus1Click(Sender: TObject);
begin
sSkinManager1.Active:=true;
sSkinManager1.SkinName:='Nautilus (internal)';
end;

procedure TForm1.Vb1Click(Sender: TObject);
begin
sSkinManager1.Active:=true;
sSkinManager1.SkinName:='TV-b (internal)';
end;

procedure TForm1.N30Click(Sender: TObject);
begin
Form6.sLabel1.Caption:='Дипломну виконав студент 4 курсу, групи 45 КН Ногас І. В.';
Form6.sLabel2.Caption:='Програма Convenient player 3.0 є аудіопрогравачем написаним за допомогою ';
Form6.sLabel7.Caption:='бібліотеки bass.';
Form6.sLabel5.Caption:='Створена в середовищі візуального програмування Delphi 7. ';
Form6.sLabel4.Caption:='Данна програма призначена для відтворення аудіо файлів, а також для';
Form6.sLabel8.Caption:='прослуховування радіо.';
Form6.sLabel3.Caption:='Створена 2014 року для операційних систем Windows';
Form6.sLabel6.Caption:='Ліцензія: власна.';
Form6.sButton1.Caption:='Закрити';
Form6.sButton2.Caption:='Історія змін';

Form5.Caption:='Про Bass';
Form6.Caption:='Про програму';
sLabel5.Caption:='Меню';
sLabel6.Caption:='Відтворення';
sLabel7.Caption:='Про програму';
sLabel7.Left:=120;
PopupMenu2.Items[0].Caption:='Відтворити';
PopupMenu2.Items[1].Caption:='Пауза';
PopupMenu2.Items[2].Caption:='Стоп';
PopupMenu2.Items[3].Caption:='Назад';
PopupMenu2.Items[4].Caption:='Вперед';

N1.Caption:='Про програму';
N3.Caption:='Відкрити файли';
N4.Caption:='Відкрити теку';
N21.Caption:='Обкладинки';
N22.Caption:='Мова інтерфейсу';
N30.Caption:='Українська';
N31.Caption:='Англійська';
N32.Caption:='Російська';
N23.Caption:='Планувальник';
N25.Caption:='Запис старт';
D1.Caption:='Запис стоп';
N16.Caption:='Про bass';
N26.Caption:='Вихід';

sImage4.Hint:='Згорнути';
sImage3.Hint:='Вихід';
sImage6.Hint:='Відтворити';
sImage7.Hint:='Призупинити';
sImage8.Hint:='Зупинити відтворення';
sImage9.Hint:='Попередній трек';
sImage10.Hint:='Наступний трек';
sImage11.Hint:='Відкрити файл(и)';
sImage13.Hint:='Меню додавання файлів';
sImage12.Hint:='Меню видалення файлів';
sImage15.Hint:='Пошук';
sImage14.Hint:='Керування списками відтворення';

Form3.sImage1.Hint:='Відтворити';
Form3.sImage2.Hint:='Призупинити';
Form3.sImage3.Hint:='Зупинити відтворення';
Form3.sImage4.Hint:='Попередній трек';
Form3.sImage5.Hint:='Наступний трек';
Form3.sImage6.Hint:='Показати головне вікно';

sBitBtn4.Hint:='Наступна візуалізація';
sBitBtn2.Hint:='Показати/приховати "Еквалайзер"';
sBitBtn3.Hint:='Показати/приховати "Плейлист"';
N18.Caption:='Додати файл';
N28.Caption:='Відтворити';
N29.Caption:='Видалити вибране';
N15.Caption:='Завантажити список';
N17.Caption:='Зберегти список';
N10.Caption:='Видалити вибране';
N12.Caption:='Видалити дублікати';
N13.Caption:='Видалити з диска';
N14.Caption:='Очистити список';
L1.Caption:='Додати файл';
N11.Caption:='Додати теку';
V1.Caption:='Додати адресу';

Form2.sLabel1.Caption:='80 Гц';
Form2.sLabel2.Caption:='170 Гц';
Form2.sLabel3.Caption:='310 Гц';
Form2.sLabel4.Caption:='600 Гц';
Form2.sLabel5.Caption:='1 Гц';
Form2.sLabel6.Caption:='3 Гц';
Form2.sLabel7.Caption:='6 Гц';
Form2.sLabel8.Caption:='10 Гц';
Form2.sLabel9.Caption:='12 Гц';
Form2.sLabel10.Caption:='14 Гц';
Form2.sLabel11.Caption:='Всі';
Form2.sLabel12.Caption:='Баланс';

Form4.sLabel1.Caption:='Посилання на потік:';
Form4.sButton1.Caption:='Відміна';
Form4.sButton2.Caption:='Додати';
Form4.Caption:='Додавання посилання';

sSaveDialog1.Title:='Зберегти як';
sOpenDialog2.Title:='Відкрити як';
sOpenDialog1.Title:='Виберіть один чи кілька файлів';
sPathDialog1.Caption:='Виберіть теку';

sEdit1.Text:='Швидкий пошук';
povtorstr1:='Повтор треку [Увімкн]';
povtorstr2:='Повтор треку [Вимкн]';
randstr1:='Випадковий [Увімкн]';
randstr2:='Випадковий [Вимкн]';
volumstr:='Гучність: ';
N33.Caption:='Після завершення файлу';
N34.Caption:='Після завершення списку відтворення ';
Form5.sLabel1.Caption:='BASS (BASS audio library) - це невелика аудіо-бібліотека для ';
Form5.sLabel2.Caption:='використання в операційних системах Windows і Mac OS X,';
Form5.sLabel3.Caption:='а також є доступною для Linux, Win64, WinCE і iOS платформ.';
end;

procedure TForm1.N31Click(Sender: TObject);
begin
Form6.sLabel1.Caption:='Graduation student completed 4-year, a group of 45 КN Nohas I.V.';
Form6.sLabel2.Caption:='Program Convenient Player 3.0 is an audio player written in';
Form6.sLabel7.Caption:='libraries bass.';
Form6.sLabel5.Caption:='Established in visual programming environment Delphi 7. ';
Form6.sLabel4.Caption:='This program is designed to play audio files, as well as';
Form6.sLabel8.Caption:='listening to the radio.';
Form6.sLabel3.Caption:='established in 2014 for operating systems Windows';
Form6.sLabel6.Caption:='License: own';
Form6.sButton1.Caption:='Close';
Form6.sButton2.Caption:='Change';

Form5.Caption:='On Bass';
Form6.Caption:='About';
sLabel5.Caption:='Menu';
sLabel6.Caption:='Reproduction';
sLabel7.Caption:='About';
sLabel7.Left:=120;
PopupMenu2.Items[0].Caption:='Play';
PopupMenu2.Items[1].Caption:='Pause';
PopupMenu2.Items[2].Caption:='Stop';
PopupMenu2.Items[3].Caption:='Back';
PopupMenu2.Items[4].Caption:='Next';

N1.Caption:='About';
N3.Caption:='Open Files';
N4.Caption:='Open Folder';
N21.Caption:='Covers';
N22.Caption:='Language';
N30.Caption:='Ukrainian';
N31.Caption:='English';
N32.Caption:='Russian';
N23.Caption:='Planner';
N25.Caption:='Record start';
D1.Caption:='Record stop';
N16.Caption:='On bass';
N26.Caption:='Exit';

sImage4.Hint:='Minimize';
sImage3.Hint:='Exit';
sImage6.Hint:='Play';
sImage7.Hint:='Pause';
sImage8.Hint:='Stop';
sImage9.Hint:='Preview track';
sImage10.Hint:='Next track';
sImage11.Hint:='Open the file(s)';
sImage13.Hint:='Menu to add files';
sImage12.Hint:='Menu deleting files';
sImage15.Hint:='Search';
sImage14.Hint:='Manage playlists';

Form3.sImage1.Hint:='Play';
Form3.sImage2.Hint:='Pause';
Form3.sImage3.Hint:='Stop';
Form3.sImage4.Hint:='Preview track';
Form3.sImage5.Hint:='Next track';
Form3.sImage6.Hint:='Show main window';

sBitBtn4.Hint:='Next visualization';
sBitBtn2.Hint:='Show / hide "Equalizer"';
sBitBtn3.Hint:='Show / hide "Playlist"';
N18.Caption:='Add file';
N28.Caption:='Play';
N29.Caption:='Delete Selected';
N15.Caption:='Open Playlist';
N17.Caption:='Save Playlist';
N10.Caption:='Delete Selected';
N12.Caption:='Remove duplicate';
N13.Caption:='Delete from Disk';
N14.Caption:='Clear list';
L1.Caption:='Add file';
N11.Caption:='Add Folder';
V1.Caption:='Add the address';

Form2.sLabel1.Caption:='80 Hz';
Form2.sLabel2.Caption:='170 Hz';
Form2.sLabel3.Caption:='310 Hz';
Form2.sLabel4.Caption:='600 Hz';
Form2.sLabel5.Caption:='1 Hz';
Form2.sLabel6.Caption:='3 Hz';
Form2.sLabel7.Caption:='6 Hz';
Form2.sLabel8.Caption:='10 Hz';
Form2.sLabel9.Caption:='12 Hz';
Form2.sLabel10.Caption:='14 Hz';
Form2.sLabel11.Caption:='All';
Form2.sLabel12.Caption:='Balance';

Form4.sLabel1.Caption:='Links to flow:';
Form4.sButton1.Caption:='Abolition';
Form4.sButton2.Caption:='Add';
Form4.Caption:='Add a link';

sSaveDialog1.Title:='Save as';
sOpenDialog2.Title:='Open as';
sOpenDialog1.Title:='Select one or more files';
sPathDialog1.Caption:='Choose a directory';

sEdit1.Text:='Quick Search';
povtorstr1:='Repeat Track [On]';
povtorstr2:='Repeat Track [Off]';
randstr1:='Random [On]';
randstr2:='Random [Off]';
volumstr:='Volume: ';
N33.Caption:='After the end of the file';
N34.Caption:='After completing a playlist';
Form5.sLabel1.Caption:='BASS (BASS audio library) - a small audio library ';
Form5.sLabel2.Caption:=' for use in Windows and Mac OS X,';
Form5.sLabel3.Caption:='and is available for Linux, Win64, WinCE and iOS platforms.';
end;

procedure TForm1.N32Click(Sender: TObject);
begin
Form6.sLabel1.Caption:='Дипломную выполнил студент 4 курса, группы 45 КН Ногас И. В.';
Form6.sLabel2.Caption:='Программа Convenient player 3.0 является аудио проигрывателем';
Form6.sLabel7.Caption:='написанным с помощью библиотеки bass.';
Form6.sLabel5.Caption:='Созданная в среде визуального программирования Delphi 7.';
Form6.sLabel4.Caption:='Данная программа предназначена для воспроизведения аудио файлов, а также';
Form6.sLabel8.Caption:='для прослушивания радио.';
Form6.sLabel3.Caption:='Созданная 2014 для операционных систем Windows';
Form6.sLabel6.Caption:='Лицензия: собственная.';
Form6.sButton1.Caption:='Закрыть';
Form6.sButton2.Caption:='История';

Form5.Caption:='О Bass';
Form6.Caption:='О программе';
sLabel5.Caption:='Меню';
sLabel6.Caption:='Воспроизведение';
sLabel7.Caption:='О программе';
sLabel7.Left:=144;
PopupMenu2.Items[0].Caption:='Воспроизвести';
PopupMenu2.Items[1].Caption:='Пауза';
PopupMenu2.Items[2].Caption:='Стоп';
PopupMenu2.Items[3].Caption:='Назад';
PopupMenu2.Items[4].Caption:='Вперед';

N1.Caption:='О программе';
N3.Caption:='Открыть файлы';
N4.Caption:='Открыть папку';
N21.Caption:='Обложки';
N22.Caption:='Язык интерфейса';
N30.Caption:='Украинский';
N31.Caption:='Английский';
N32.Caption:='Русский';
N23.Caption:='Планировщик';
N25.Caption:='Запись старт';
D1.Caption:='Запись стоп';
N16.Caption:='О bass';
N26.Caption:='Выход';

sImage4.Hint:='Свернуть';
sImage3.Hint:='Выход';
sImage6.Hint:='Воспроизвести';
sImage7.Hint:='Приостановить';
sImage8.Hint:='Остановить воспроизведение';
sImage9.Hint:='Предыдущий трек';
sImage10.Hint:='Следующий трек';
sImage11.Hint:='Открыть файл(ы)';
sImage13.Hint:='Меню добавления файлов';
sImage12.Hint:='Меню удаления файлов';
sImage15.Hint:='Поиск';
sImage14.Hint:='Управление списками воспроизведения';

Form3.sImage1.Hint:='Воспроизвести';
Form3.sImage2.Hint:='Приостановить';
Form3.sImage3.Hint:='Остановить воспроизведение';
Form3.sImage4.Hint:='Предыдущий трек';
Form3.sImage5.Hint:='Следующий трек';
Form3.sImage6.Hint:='Показать главное окно';

sBitBtn4.Hint:='Следующая визуализация';
sBitBtn2.Hint:='Показать/скрыть "Эквалайзер"';
sBitBtn3.Hint:='Показать/скрыть "Плейлист"';
N18.Caption:='Добавить файл';
N28.Caption:='Воспроизвести';
N29.Caption:='Удалить выбранное';
N15.Caption:='Открыть список';
N17.Caption:='Сохранить список';
N10.Caption:='Удалить выбранное';
N12.Caption:='Удалить дубликаты';
N13.Caption:='Удалить с диска';
N14.Caption:='Очистить список';
L1.Caption:='Добавить файл';
N11.Caption:='Добавить папку';
V1.Caption:='Добавить адрес';

Form2.sLabel1.Caption:='80 Гц';
Form2.sLabel2.Caption:='170 Гц';
Form2.sLabel3.Caption:='310 Гц';
Form2.sLabel4.Caption:='600 Гц';
Form2.sLabel5.Caption:='1 Гц';
Form2.sLabel6.Caption:='3 Гц';
Form2.sLabel7.Caption:='6 Гц';
Form2.sLabel8.Caption:='10 Гц';
Form2.sLabel9.Caption:='12 Гц';
Form2.sLabel10.Caption:='14 Гц';
Form2.sLabel11.Caption:='Все';
Form2.sLabel12.Caption:='Баланс';

Form4.sLabel1.Caption:='Ссылка на поток:';
Form4.sButton1.Caption:='Отмена';
Form4.sButton2.Caption:='Добавить';
Form4.Caption:='Добавление ссылки';

sSaveDialog1.Title:='Сохранить как';
sOpenDialog2.Title:='Открыть как';
sOpenDialog1.Title:='Выберите один или несколько файлов';
sPathDialog1.Caption:='Выберите папку';

sEdit1.Text:='Быстрый поиск';
povtorstr1:='Повтор трека [Вкл]';
povtorstr2:='Повтор трека [Выкл]';
randstr1:='Случайный [Вкл]';
randstr2:='Случайный [Выкл]';
volumstr:='Громкость: ';
N33.Caption:='После завершения файла';
N34.Caption:='После завершения списка воспроизведения';
Form5.sLabel1.Caption:='BASS (BASS audio library) - это небольшая аудио-библиотека для ';
Form5.sLabel2.Caption:='использования в операционных системах Windows и Mac OS X, ';
Form5.sLabel3.Caption:='а также доступна для Linux, Win64, WinCE и iOS платформ.';
end;

procedure TForm1.sImage3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage3.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Power(1).png');
end;

procedure TForm1.sImage17Click(Sender: TObject);
begin
sImage17.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Music1.png');
sImage18.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Radio2.png');
sLabel8.Visible:=true;
sListBox1.Visible:=true;
sListBox3.Visible:=false;
sPanel1.Visible:=true;
sPanel5.Visible:=false;
end;

procedure TForm1.sImage18Click(Sender: TObject);
begin
sImage18.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Radio1.png');
sImage17.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Music2.png');
sLabel8.Visible:=false;;
sListBox1.Visible:=false;
sListBox3.Visible:=true;
sPanel5.Visible:=true;
sPanel1.Visible:=false;
end;

procedure TForm1.sImage4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage4.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/Згорнути1.png');
end;

procedure TForm1.sImage7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage7.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/paused(fotoshop1).png');
end;

procedure TForm1.sImage7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage7.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/paused(fotoshop).png');
end;

procedure TForm1.sImage8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage8.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/stop(fotoshop)1.png');
end;

procedure TForm1.sImage9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage9.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/nalivo(fotoshop)1.png');
end;

procedure TForm1.sImage9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage9.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/nalivo(fotoshop).png');
end;

procedure TForm1.sImage10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage10.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/napravo(fotoshop)1.png');
end;

procedure TForm1.sImage10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage10.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/napravo(fotoshop).png');
end;

procedure TForm1.sImage11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage11.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/open(fotoshop)1.png');
end;

procedure TForm1.sImage15MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage15.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/poisk1.png');
end;

procedure TForm1.sImage15MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage15.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/poisk.png');
end;

procedure TForm1.sImage8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage8.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/stop(fotoshop).png');
end;

procedure TForm1.N12Click(Sender: TObject);
var
   I: Integer;
   AList: TStringList;
   k: integer;
 begin
if sListBox1.Visible=true then
begin
sListBox1.Clear;
sListBox4.Clear;
   AList := TStringList.Create;
   for I := 0 to sListBox2.Count - 1 do
     if AList.IndexOf(sListBox2.Items[I]) < 0 then
       AList.Add(sListBox2.Items[I]);
   sListBox2.Items.Assign(AList);
   AList.Free;
for k:=0 to sListBox2.Count-1 do
begin
sListBox1.Items.Add(sListBox2.Items.Strings[k]);
sListBox4.Items.Add(sListBox2.Items.Strings[k]);
end;
AddListFiles;
end
else
begin
sListBox3.Clear;
   AList := TStringList.Create;
   for I := 0 to sListBox5.Count - 1 do
     if AList.IndexOf(sListBox5.Items[I]) < 0 then
       AList.Add(sListBox5.Items[I]);
   sListBox5.Items.Assign(AList);
   AList.Free;
for k:=0 to sListBox5.Count-1 do
begin
numbers:=sListBox3.Items.Count+1;
sListBox3.Items.Add(IntToStr(numbers)+'.'+' '+sListBox5.Items.Strings[k]);
end;
end;
end;

procedure TForm1.sImage6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
sImage6.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/play(fotoshop).png');
end;

procedure TForm1.N16Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.N13Click(Sender: TObject);
var k: integer;
begin
if sListBox1.Visible=true then
begin
if sListBox1.ItemIndex=-1 then exit;
i:=sListBox1.ItemIndex;
DeleteFile(sListBox2.Items.Strings[i]);
sListBox1.Items.Delete(i);
sListBox2.Items.Delete(i);
sListBox4.Items.Delete(i);

if i>sListBox1.Items.Count-1 then
i:=sListBox1.Items.Count-1;
sListBox1.ItemIndex:=i;

if sListBox1.Count<>0 then
begin
number:=sListBox1.ItemIndex+1;
for k:=sListBox1.ItemIndex to sListBox1.Count-1 do
begin
sListBox1.Items.Strings[k]:=IntToStr(number)+'.'+' '+sListBox4.Items.Strings[k];
number:=number+1;
end;
end;
end;
end;

procedure TForm1.sImage21Click(Sender: TObject);
begin
if vl=true then
begin
volume_pos:=sTrackBar2.Position;
sImage21.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/volume2.png');
sTrackBar2.Position:=0;
if FileName<>'' then
begin
sLabel3.Caption:=ExtractFileName(FileName);//присвоюєм sLabel3 ім'я відтворюваного файлу
sLabel3.Left:=98;
Timer2.Enabled:=true;
end
else
begin
sLabel3.Caption:='';
end;
vl:=false;
end
else
begin
sImage21.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'img/volume.png');
sTrackBar2.Position:=volume_pos;
if FileName<>'' then
begin
sLabel3.Caption:=ExtractFileName(FileName);//присвоюєм sLabel3 ім'я відтворюваного файлу
sLabel3.Left:=98;
Timer2.Enabled:=true;
end
else
begin
sLabel3.Caption:='';
end;
vl:=true;
end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
sLabel7Click(Form1);
end;

procedure TForm1.sLabel7Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//Гарячі клавіші для плейлиста з треками
if sListBox1.Visible=true then
begin
if not sEdit1.ShowHint=true then
begin
if (Key=VK_RETURN) then
begin
i:=sListBox1.Itemindex;
 Filename:=sListBox2.Items.Strings[i];
 sImage6Click(Form1);
 mode:=stop;
 player;
end;
end;
if (Key=VK_SPACE) then
begin
Form1.sImage7Click(Form1);
 end;
if (Key=VK_Delete) then
begin
N10.Click;
end;
if (ssCtrl in Shift) and (Key=Ord('R')) then
begin
N12.Click;
end;
if (ssShift in Shift) and (Key=VK_Delete) then
begin
N13.Click;
end;
if (ssCtrl in Shift) and (Key=VK_Delete) then
begin
N14.Click;
end;
end;
//Гарячі клавіші для радіо листа
if sListBox3.Visible=true then
begin
if not sEdit1.ShowHint=true then
begin
if (Key=VK_RETURN) then
begin
sImage6Click(Form1);
end;
end;
if (Key=VK_SPACE) then
begin
   if radio_mode=true then
   begin
   sImage7Click(Form1);
   end
   else
   begin
   sImage6Click(Form1);
   end;
end;
if (Key=VK_Delete) then
begin
N10.Click;
end;
if (ssCtrl in Shift) and (Key=Ord('R')) then
begin
N12.Click;
end;
if (ssShift in Shift) and (Key=VK_Delete) then
begin
N13.Click;
end;
if (ssCtrl in Shift) and (Key=VK_Delete) then
begin
N14.Click;
end;
end;
//Гарячі клавіші для програми
if not (ssCtrl in Shift) then
begin
if (Key=VK_INSERT) then
begin
L1.Click;
end;
end;
if (ssCtrl in Shift) and (Key=VK_INSERT) then
begin
N11.Click;
end;
if (ssCtrl in Shift) and (Key=Ord('U')) then
begin
v1.Click;
end;
if (ssCtrl in Shift) and (Key=Ord('O')) then
begin
N15.Click;
end;
if (ssCtrl in Shift) and (Key=Ord('S')) then
begin
N17.Click;
end;
end;

procedure TForm1.N20Click(Sender: TObject);
var k: integer;
begin
if sListBox1.Visible=true then
begin
if sListBox1.ItemIndex=-1 then exit;
i:=sListBox1.ItemIndex;
DeleteFile(sListBox2.Items.Strings[i]);
sListBox1.Items.Delete(i);
sListBox2.Items.Delete(i);
sListBox4.Items.Delete(i);

if i>sListBox1.Items.Count-1 then
i:=sListBox1.Items.Count-1;
sListBox1.ItemIndex:=i;

if sListBox1.Count<>0 then
begin
number:=sListBox1.ItemIndex+1;
for k:=sListBox1.ItemIndex to sListBox1.Count-1 do
begin
sListBox1.Items.Strings[k]:=IntToStr(number)+'.'+' '+sListBox4.Items.Strings[k];
number:=number+1;
end;
end;
end;

end;

procedure TForm1.N35Click(Sender: TObject);
begin
sSkinManager1.Active:=false;
end;

end.




