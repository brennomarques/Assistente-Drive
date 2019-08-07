unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.Imaging.pngimage, Vcl.CategoryButtons, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls, IdAntiFreezeBase, IdAntiFreeze,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ShellApi,
  PngSpeedButton, IdAuthentication, System.IniFiles;

type
  TFormPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SplitView1: TSplitView;
    Image1: TImage;
    PanelInicio: TPanel;
    PanelToken: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Labelsistema: TLabel;
    LabelBits: TLabel;
    Panel8: TPanel;
    Image8: TImage;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CheckBoxTokenPro72k: TCheckBox;
    CheckBoxTokenAladin: TCheckBox;
    CheckBoxTokenEpass2003: TCheckBox;
    CheckBoxTokenSafenet5100: TCheckBox;
    CheckBoxTokenSafenet5110: TCheckBox;
    Memo1: TMemo;
    IdHTTPToken: TIdHTTP;
    PanelCartao: TPanel;
    Panel13: TPanel;
    Label5: TLabel;
    Panel14: TPanel;
    Image13: TImage;
    CheckBoxCartaoAWP: TCheckBox;
    Panel15: TPanel;
    Label13: TLabel;
    Panel16: TPanel;
    Image15: TImage;
    CheckBoxCartaoIdemia: TCheckBox;
    Panel17: TPanel;
    Label14: TLabel;
    Panel18: TPanel;
    Image16: TImage;
    CheckBoxCartaoMorpho: TCheckBox;
    Panelbaixa: TPanel;
    Panel19: TPanel;
    PanelDonwload: TPanel;
    ProgressBar1: TProgressBar;
    lblStatus: TLabel;
    Labelprocesso: TLabel;
    Label4: TLabel;
    IdAntiFreeze1: TIdAntiFreeze;
    Memo2: TMemo;
    Panel21: TPanel;
    Panel22: TPanel;
    Image17: TImage;
    CheckBoxCartaoGemalto: TCheckBox;
    Label15: TLabel;
    PanelSuporte: TPanel;
    Panel23: TPanel;
    Image21: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Panel24: TPanel;
    Image19: TImage;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Memo3: TMemo;
    Image18: TImage;
    Label28: TLabel;
    Label29: TLabel;
    Label34: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Image14: TImage;
    Label11: TLabel;
    Label12: TLabel;
    PanelEmissor: TPanel;
    Label35: TLabel;
    Memo4: TMemo;
    Label36: TLabel;
    Memo5: TMemo;
    Label37: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    Memo6: TMemo;
    Label38: TLabel;
    Label39: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Image20: TImage;
    Label40: TLabel;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    ScrollBox1: TScrollBox;
    ProgressBarEmissor: TProgressBar;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    IdHTTPEmissor: TIdHTTP;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    procedure Image1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IdHTTPTokenWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdHTTPTokenWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTPTokenWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    function RetornaKiloBytes(ValorAtual: real): string;
    function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
    procedure Image_downlod_tokenClick(Sender: TObject);
    procedure CheckBoxTokenPro72kClick(Sender: TObject);
    procedure CheckBoxTokenAladinClick(Sender: TObject);
    procedure CheckBoxTokenEpass2003Click(Sender: TObject);
    procedure CheckBoxTokenSafenet5100Click(Sender: TObject);
    procedure CheckBoxTokenSafenet5110Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure eBaixaDriveToken(Link: string; Nome: string);
    procedure CheckBoxCartaoAWPClick(Sender: TObject);
    procedure CheckBoxCartaoIdemiaClick(Sender: TObject);
    procedure CheckBoxCartaoMorphoClick(Sender: TObject);
    procedure CheckBoxCartaoGemaltoClick(Sender: TObject);
    procedure Label23MouseLeave(Sender: TObject);
    procedure Label23MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label24MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label25MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label26MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label27MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label24MouseLeave(Sender: TObject);
    procedure Label25MouseLeave(Sender: TObject);
    procedure Label26MouseLeave(Sender: TObject);
    procedure Label27MouseLeave(Sender: TObject);
    procedure LinkLabel1Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure eInstalaDrive(Nome: string);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure IdHTTPEmissorWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdHTTPEmissorWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTPEmissorWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure PngSpeedButton6Click(Sender: TObject);
    Function eBuscaNome(dado: String):String;  //função para encontrar nome da seção.[INSTALL...]
    Function eEncontarSecao(ArqIni: TIniFile):String;//função para busca a seção informando o nome para buscar
    procedure eConfiguraDLL(caminho: String);
    procedure PngSpeedButton5Click(Sender: TObject);//
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.eConfiguraDLL(caminho: String); //FUNÇÃO PARA CONFIGURAR DLL
var
  Arquivo: TextFile;
  Registro: string;
begin
  if FileExists(caminho+'\PKCS11.txt') then
  begin
    //ShowMessage('[PKCS11] Vai ser configurado.');
    AssignFile(Arquivo, caminho+'\PKCS11.txt');//PEGANDO O ARQUIVO PKCS11 PARA GRAVAR
    Append(Arquivo);
    //TOKEN SAFENT
    Registro := 'library=etoken.dll';
    Writeln(Arquivo, Registro);
    Registro := 'name=Safenet';
    Writeln(Arquivo, Registro);
    WriteLn(Arquivo,'');//Acrescenta outra linha
    //TOKEN EPASS
    Registro := 'library=eps2003csp11.dll';
    Writeln(Arquivo, Registro);
    Registro := 'name=Epass';
    Writeln(Arquivo, Registro);
    WriteLn(Arquivo,'');//Acrescenta outra linha
    //CARTÃO OBETHUR
    Registro := 'library=OcsCryptoki.dll';
    Writeln(Arquivo, Registro);
    Registro := 'name=Oberthur';
    Writeln(Arquivo, Registro);
    WriteLn(Arquivo,'');//Acrescenta outra linha
    //CARTÃO MORPHO
    Registro := 'library=aetpkss1.dll';
    Writeln(Arquivo, Registro);
    Registro := 'name=Morpho';
    Writeln(Arquivo, Registro);
    WriteLn(Arquivo,'');//Acrescenta outra linha

    CloseFile(Arquivo);
    Application.MessageBox('DLL Configurada com sucesso!','Configuração DLL', MB_OK or MB_ICONINFORMATION)
  end
  else
  begin
    Application.MessageBox('[ERROR:] Não foi possível acessar PKCS11','ERROR DLL', MB_OK or MB_ICONINFORMATION)
    //ShowMessage('[ERROR:] Não foi possível acessar PKCS11');
  end;
end;
Function TFormPrincipal.eEncontarSecao(ArqIni: TIniFile):String;
var
 aux, aux1: string;
 i: Integer;
begin
  i:=0;
  while i >=0 do
  begin
    aux1:='Profile'+IntToStr(i);//aux1 recebe a concatenação para String
    aux := ArqIni.ReadString(aux1, 'Default', ''); //aqui vou anda em cada Profile
    if aux = '1' then //se Default for verdadeido ou seja =1
    begin
     //ShowMessage('dentro, Profile' + IntToStr(i));
      aux := ArqIni.ReadString(aux1, 'Path', '');//pega o caminho do profile em uso
      //ShowMessage('Caminho: ' + aux);
      result:=aux;
      i:=-1;//condição de parada, se estava aqui pr achou default logo decrementa I para da stop para condição.
    end
    else//caso se aux não for =1 ele incremento a I.
    begin
      i:=i+1;
    end;
  end;
end;
Function TFormPrincipal.eBuscaNome(dado: string): String;
var
  varString, nome: string;
  SizeVet, i, x: Integer;
  status: boolean;
begin
  varString:= dado;//recebe dados para realizar o procedimento de busca.
  SizeVet := Length(varString);//saber o tamanho da StringList
  status:= False;
  for i := 0 to SizeVet do//roda até chega no tamnho da SizeVet. o SizeVet esta amarzenado o tamnho da StringList
  begin
    if (varString[i] = '[') and (varString[i+1] = 'I') then
    begin
      x:=i;
      while x <> -1 do
      begin
        //nome:=nome+varString[x];//Variavel nome recebe a possição de X
        if varString[x] = '[' then
        begin
          nome:=nome+varString[x+1];
          x:=x+2; //VAI ANDA 2 CASA NO VETOR DEVIDO A PRIMEIRA NÃO SER ATRIBUIDA.
        end
        else
        begin
          if varString[x] = ']' then
          begin
            x:=-1;
            status:=True;
          end
          else
          begin
            nome:=nome+varString[x];
            x:=x+1;
          end;
        end;
      end;
    end;
  end;
  if status then
  begin
    result:= nome;
  end
  else
  begin
    result:='False';//se não encontra o valor ele retorna nome falso para que posso realizar outro metodo
  end;
end;
function TFormPrincipal.RetornaKiloBytes(ValorAtual: real): string;
var
  resultado: real;
begin
  resultado := ((ValorAtual / 1024) / 1024);
  Result := FormatFloat('0.000 KBs', resultado);
end;

function TFormPrincipal.RetornaPorcentagem(ValorMaximo,
  ValorAtual: real): string;
var
  resultado: real;
begin
  resultado := ((ValorAtual * 100) / ValorMaximo);
  Result := FormatFloat('0%', resultado);
end;

procedure TFormPrincipal.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 With ScrollBox1.VertScrollBar Do
 Begin
  If (Position <= (Range - Increment)) Then
   Position := Position + Increment Else
    Position := Range - Increment;
 end;

end;

procedure TFormPrincipal.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  With ScrollBox1.VertScrollBar Do
  Begin
  If (Position >= Increment) Then
   Position := Position - Increment Else
    Position := 0;
 End;
end;

function IsWindows64: Boolean; // saber quantos bits e a maquina
type
  TIsWow64Process = function(AHandle: THandle; var AIsWow64: BOOL)
    : BOOL; stdcall;
var
  vKernel32Handle: DWORD;
  vIsWow64Process: TIsWow64Process;
  vIsWow64: BOOL;
begin

  Result := False;

  vKernel32Handle := LoadLibrary('kernel32.dll');
  if (vKernel32Handle = 0) then
    Exit;

  try

    @vIsWow64Process := GetProcAddress(vKernel32Handle, 'IsWow64Process');
    if not Assigned(vIsWow64Process) then
      Exit;

    vIsWow64 := False;
    if (vIsWow64Process(GetCurrentProcess, vIsWow64)) then
      Result := vIsWow64;

  finally
    FreeLibrary(vKernel32Handle);
  end;
end;

procedure TFormPrincipal.CheckBoxCartaoAWPClick(Sender: TObject);
begin
  if CheckBoxCartaoAWP.Checked = true then
  begin
    CheckBoxCartaoIdemia.Checked := False;
    CheckBoxCartaoMorpho.Checked := False;
    CheckBoxCartaoGemalto.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxCartaoGemaltoClick(Sender: TObject);
begin
  if CheckBoxCartaoGemalto.Checked = true then
  begin
    CheckBoxCartaoIdemia.Checked := False;
    CheckBoxCartaoAWP.Checked := False;
    CheckBoxCartaoMorpho.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxCartaoIdemiaClick(Sender: TObject);
begin
  if CheckBoxCartaoIdemia.Checked = true then
  begin
    CheckBoxCartaoAWP.Checked := False;
    CheckBoxCartaoMorpho.Checked := False;
    CheckBoxCartaoGemalto.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxCartaoMorphoClick(Sender: TObject);
begin
  if CheckBoxCartaoMorpho.Checked = true then
  begin
    CheckBoxCartaoIdemia.Checked := False;
    CheckBoxCartaoAWP.Checked := False;
    CheckBoxCartaoGemalto.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxTokenAladinClick(Sender: TObject);
begin
  if CheckBoxTokenAladin.Checked = true then
  begin
    CheckBoxTokenPro72k.Checked := False;
    CheckBoxTokenEpass2003.Checked := False;
    CheckBoxTokenSafenet5100.Checked := False;
    CheckBoxTokenSafenet5110.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxTokenEpass2003Click(Sender: TObject);
begin
  if CheckBoxTokenEpass2003.Checked = true then
  begin
    CheckBoxTokenPro72k.Checked := False;
    CheckBoxTokenAladin.Checked := False;
    CheckBoxTokenSafenet5100.Checked := False;
    CheckBoxTokenSafenet5110.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxTokenPro72kClick(Sender: TObject);
begin
  if CheckBoxTokenPro72k.Checked = true then
  begin
    CheckBoxTokenAladin.Checked := False;
    CheckBoxTokenEpass2003.Checked := False;
    CheckBoxTokenSafenet5100.Checked := False;
    CheckBoxTokenSafenet5110.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxTokenSafenet5100Click(Sender: TObject);
begin
  if CheckBoxTokenSafenet5100.Checked = true then
  begin
    CheckBoxTokenPro72k.Checked := False;
    CheckBoxTokenAladin.Checked := False;
    CheckBoxTokenEpass2003.Checked := False;
    CheckBoxTokenSafenet5110.Checked := False;
  end;
end;

procedure TFormPrincipal.CheckBoxTokenSafenet5110Click(Sender: TObject);
begin
  if CheckBoxTokenSafenet5110.Checked = true then
  begin
    CheckBoxTokenPro72k.Checked := False;
    CheckBoxTokenAladin.Checked := False;
    CheckBoxTokenEpass2003.Checked := False;
    CheckBoxTokenSafenet5100.Checked := False;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := True;
  PanelDonwload.Visible := False;
  PanelEmissor.Visible :=False;
  //Panel do Assitente para emissão do certificado
  label44.Visible := false;
  label45.Visible := false;
  label46.Visible := false;
  ProgressBarEmissor.Visible :=false;

  if IsWindows64 = true then
  begin
    Labelsistema.Caption := 'Sistema windows';
    LabelBits.Caption := '64 Bits';
  end
  else
  begin
    Labelsistema.Caption := 'Sistema windows';
    LabelBits.Caption := '32 Bits';
  end
end;

procedure TFormPrincipal.FormResize(Sender: TObject);
begin
  if (FormPrincipal.Width < 640) then
  begin
    SplitView1.Close();
  end
  else
  begin
    SplitView1.Open();
  end;

end;

procedure TFormPrincipal.IdHTTPEmissorWork(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  ProgressBarEmissor.Position := AWorkCount;
  label44.Caption := 'Baixando ... ' + RetornaKiloBytes(AWorkCount);
  // TForm1.Caption := 'Download em ... ' + RetornaPorcentagem(ProgressBar1.Max, AWorkCount);
  Label45.Caption := 'Download em ...' + RetornaPorcentagem(ProgressBarEmissor.Max, AWorkCount);
end;

procedure TFormPrincipal.IdHTTPEmissorWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  ProgressBarEmissor.Position := 0;
  ProgressBarEmissor.Max := AWorkCountMax;
  Label46.Caption := 'Download em andamente, aguarde!';
end;

procedure TFormPrincipal.IdHTTPEmissorWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  ProgressBarEmissor.Position := ProgressBarEmissor.Max;
  Label46.Caption := 'Download Concluído!';
  ProgressBarEmissor.Position := 0;
  Label44.Caption := 'Finalizado ...';
  label45.Caption := 'Download Finalizado ...';
  //
  label44.Visible := false;
  label45.Visible := false;
  label46.Visible := false;
  ProgressBarEmissor.Visible :=false;
end;

procedure TFormPrincipal.IdHTTPTokenWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  ProgressBar1.Position := AWorkCount;
  lblStatus.Caption := 'Baixando ... ' + RetornaKiloBytes(AWorkCount);
  // TForm1.Caption := 'Download em ... ' + RetornaPorcentagem(ProgressBar1.Max, AWorkCount);
  Labelprocesso.Caption := 'Download em ...' + RetornaPorcentagem(ProgressBar1.Max, AWorkCount);
end;

procedure TFormPrincipal.IdHTTPTokenWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  ProgressBar1.Position := 0;
  ProgressBar1.Max := AWorkCountMax;
  Label4.Caption := 'Download em andamente, aguarde!';
end;

procedure TFormPrincipal.IdHTTPTokenWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  ProgressBar1.Position := ProgressBar1.Max;
  Label4.Caption := 'Download Concluído!';
  ProgressBar1.Position := 0;
  Labelprocesso.Caption := 'Finalizado ...';
  lblStatus.Caption := 'Download Finalizado ...';
end;

procedure TFormPrincipal.eBaixaDriveToken(Link: string; Nome: string);
// procedimento para realizar a baixa do drive.
var
  arquivo, caminho: string;
  MyFile: TFileStream;
begin
  // definir o link
  caminho := Link; // link para realizar a baixa
  // arquivo:= edit1.text; // nome do arquivo para download
  arquivo := Nome; // nome do arquivo com extenão
  if not DirectoryExists('C:\SOLUTI\') then
  // se o local não exitir e cria a pasta
    ForceDirectories('C:\SOLUTI\'); // criação da pasta
  MyFile := TFileStream.Create('C:\SOLUTI\' + arquivo, fmCreate);
  // local no hd e nome do arquivo com a extensão, onde vai salvar.
  try
    // IdHTTP1.Get('https://www.soluti.com.br/download/1171/'+arquivo, MyFile); // fazendo o download do arquivo
    if arquivo = 'Emissor.jnlp' then
    begin
      IdHTTPEmissor.Get(caminho + arquivo, MyFile);
    end
    else
    begin
      IdHTTPToken.Get(caminho + arquivo, MyFile);
    end;
  finally
    MyFile.Free;
    eInstalaDrive(arquivo); // mando o nome do arquivo a ser execultado.
  end;
end;

procedure TFormPrincipal.eInstalaDrive(Nome: string);
begin
  if Nome = 'Emissor.jnlp' then
  begin
    Application.MessageBox('Vamos execultar o Assistente para Emissão do certificado para você, aguarde!','Assistente para Emissão do certificado', MB_OK or MB_ICONINFORMATION);
    //WinExec('msiexec /i c:\soluti\safenet-pro72k-x64.msi /passive', SW_SHOW);
    WinExec('cmd javaws /C  c:\soluti\Emissor.jnlp',SW_SHOW);
  end
  else
  begin
    Application.MessageBox('Clique no botão OK para realizar a instalação do driver em seu computador.','Instalação do drive', MB_OK or MB_ICONINFORMATION);

    if Nome = 'safenet-pro72k-x64.msi' then
    begin
      WinExec('msiexec /i c:\soluti\safenet-pro72k-x64.msi /passive', SW_SHOW);
      // ,SW_shownormal)
      // WinExec('cmd /c msiexec /i c:\soluti\safenet-pro72k-x64.msi /passive',SW_SHOW);//,SW_shownormal)
    end
    else
    begin
      if Nome = 'SafeNet-Aladin(x64).msi' then
      begin
        WinExec('msiexec /i c:\soluti\SafeNet-Aladin(x64).msi /passive', SW_SHOW);
        // ,SW_shownormal);
      end
      else
      begin
        if Nome = 'Token_epass2003(x64).exe' then
        begin
          ShowMessage('intalando: ' + Nome);
          // WinExec('cmd /C msiexec /i c:\soluti\SafeNet-Aladin(x64).msi /passive ',SW_SHOW);
        end
        else
        begin
          if Nome = 'SafeNet-5100(x64).msi' then
          begin
            WinExec('msiexec /i c:\soluti\SafeNet-5100(x64).msi /passive',
              SW_SHOW);
          end
          else
          begin
            if Nome = 'SafeNet-5110(x64).msi' then
            begin
              WinExec('msiexec /i c:\soluti\SafeNet-5110(x64).msi /passive',
                SW_SHOW); // ,SW_shownormal);
            end
            else
            begin
              if Nome = 'Cartão-AWP-OT(x64).msi' then
              begin
                WinExec('msiexec /i c:\soluti\Cartão-AWP-OT(x64).msi /passive',
                  SW_SHOW); // ,SW_shownormal);
              end
              else
              begin
                if Nome = 'Cartão-Idemia-(x64).msi' then
                begin
                  WinExec('msiexec /i c:\soluti\Cartão-Idemia-(x64).msi /passive',
                    SW_SHOW); // ,SW_shownormal);
                end
                else
                begin
                  if Nome = 'Cartão-Gemalto-(x64).msi' then
                  begin
                    WinExec('msiexec /i c:\soluti\Cartão-Gemalto-(x64).msi /passive',
                      SW_SHOW);
                  end
                  else
                  begin
                    if Nome = 'Cartão_Morpho_(x64).msi' then
                    begin
                      ShowMessage('intalando: ' + Nome);
                      // WinExec('cmd /C msiexec /i c:\soluti\Cartão_Morpho_(x64).msi',SW_SHOW);
                    end
                    else // apartir desse ponto para para maquina de 32 bit
                    begin
                      if Nome = 'SafeNet_pro72k(x32).msi' then
                      begin
                        WinExec('msiexec /i c:\soluti\SafeNet_pro72k(x32).msi /passive',
                          SW_SHOW);
                      end
                      else
                      begin
                        if Nome = 'SafeNet_Aladin(x32).msi' then
                        begin
                          WinExec('msiexec /i c:\soluti\SafeNet_Aladin(x32).msi /passive',
                            SW_SHOW);
                        end
                        else
                        begin
                          if Nome = 'Token_epass2003(x32).msi' then
                          begin
                            WinExec('msiexec /i c:\soluti\Token_epass2003(x32).msi /passive',
                              SW_SHOW);
                          end
                          else
                          begin
                            if Nome = 'SafeNet_5100(x32).msi' then
                            begin
                              WinExec('msiexec /i c:\soluti\SafeNet_5100(x32).msi /passive',
                                SW_SHOW);
                            end
                            else
                            begin
                              if Nome = 'SafeNet_5110(x32).msi' then
                              begin
                                WinExec('msiexec /i c:\soluti\SafeNet_5110(x32).msi /passive',
                                  SW_SHOW);
                              end
                              else // AQUI SOMENTE CARTÃO PARA MAQUINA 32 BITS
                              begin
                                if Nome = 'Cartão_AWP_OT(x32).msi' then
                                begin
                                  WinExec('msiexec /i c:\soluti\Cartão_AWP_OT(x32).msi /passive',
                                    SW_SHOW);
                                end
                                else
                                begin
                                  if Nome = 'Cartão_Idemia_(x32).msi' then
                                  begin
                                    WinExec('msiexec /i c:\soluti\Cartão_Idemia_(x32).msi /passive',
                                      SW_SHOW);
                                  end
                                  else
                                  begin
                                    if Nome = 'Cartão-Gemalto-(x32).msi' then
                                    begin
                                      WinExec('msiexec /i c:\soluti\Cartão-Gemalto-(x32).msi /passive',
                                        SW_SHOW);
                                    end
                                    else // AQUI ENTÃO E MORPHO
                                    begin
                                      WinExec('msiexec /i c:\soluti\Cartão-Morpho-(x32).msi /passive',
                                        SW_SHOW);
                                    end;
                                  end;
                                end;
                              end;
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFormPrincipal.Image_downlod_tokenClick(Sender: TObject);
// aqui a escolha de qual drive deve realizar a baixa se a maquina 64 ou 32 bits
var
  links, name: string;
begin
  if IsWindows64 = true then
  // se a maquina for 64 bits, então baixa do drive referente a 64 bits. caso e 32 bits
  begin
    if CheckBoxCartaoGemalto.Checked = False xor CheckBoxCartaoAWP.Checked =
      False xor CheckBoxCartaoIdemia.Checked = False xor CheckBoxCartaoMorpho.
      Checked = False xor CheckBoxTokenPro72k.Checked = False xor
      CheckBoxTokenAladin.Checked = False xor CheckBoxTokenEpass2003.Checked =
      False xor CheckBoxTokenSafenet5100.Checked = False xor
      CheckBoxTokenSafenet5110.Checked = False then
    begin
      Application.MessageBox('Selecione o modelo que deseja instalar!',
        'Verifica o modelo', MB_OK or MB_ICONINFORMATION)
    end
    else
    begin
      if CheckBoxTokenPro72k.Checked = true then
      begin
        links := 'https://www.soluti.com.br/download/7731/';
        name := 'safenet-pro72k-x64.msi';
        eBaixaDriveToken(links, name);
        // chama o procedimento mandando o link do drive Token safenet pro 72k
      end
      else
      begin
        if CheckBoxTokenAladin.Checked = true then
        begin
          links := 'https://www.soluti.com.br/download/7731';
          name := 'SafeNet-Aladin(x64).msi';
          eBaixaDriveToken(links, name);
          // chama o procedimento mandando o link do drive Token safenet aladin
        end
        else
        begin
          if CheckBoxTokenEpass2003.Checked = true then
          begin
            links := 'https://www.soluti.com.br/download/7731';
            name := 'Token_epass2003(x64).exe';
            eBaixaDriveToken(links, name);
            // chama o procedimento mandando o link do drive Token epass2003k
          end
          else
          begin
            if CheckBoxTokenSafenet5100.Checked = true then
            begin
              links := 'https://www.soluti.com.br/download/7731';
              name := 'SafeNet-5100(x64).msi';
              eBaixaDriveToken(links, name);
              // chama o procedimento mandando o link do drive Token safenet 5100k
            end
            else
            begin
              if CheckBoxTokenSafenet5110.Checked = true then
              begin
                links := 'https://www.soluti.com.br/download/7731';
                name := 'SafeNet-5110(x64).msi';
                eBaixaDriveToken(links, name);
                // chama o procedimento mandando o link do drive Token safenet 5110k
              end
              else
              begin
                if CheckBoxCartaoAWP.Checked = true then
                begin
                  links := 'https://www.soluti.com.br/download/5153/';
                  name := 'Cartão-AWP-OT(x64).msi';
                  eBaixaDriveToken(links, name); // cartão awp}
                end
                else
                begin
                  if CheckBoxCartaoIdemia.Checked = true then
                  begin
                    links := 'https://www.soluti.com.br/download/5153/';
                    name := 'Cartão-Idemia-(x64).msi';
                    eBaixaDriveToken(links, name); // cartão Idemia
                  end
                  else
                  begin
                    if CheckBoxCartaoGemalto.Checked = true then
                    begin
                      links := 'https://www.soluti.com.br/download/7731/';
                      name := 'Cartão-Gemalto-(x64).msi';
                      eBaixaDriveToken(links, name); // cartão gemalto
                    end
                    else // então e morpho
                    begin
                      links := 'https://www.soluti.com.br/download/516/';
                      name := 'Cartão-Morpho-(x64).msi';
                      eBaixaDriveToken(links, name); // cartão Moprho
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end
  else // AQUI PARA MAQUINA 32 BITS++++++++++++++++++++++++++++++++++++++++++
  begin
    if CheckBoxCartaoGemalto.Checked = False xor CheckBoxCartaoAWP.Checked =
      False xor CheckBoxCartaoIdemia.Checked = False xor CheckBoxCartaoMorpho.
      Checked = False xor CheckBoxTokenPro72k.Checked = False xor
      CheckBoxTokenAladin.Checked = False xor CheckBoxTokenEpass2003.Checked =
      False xor CheckBoxTokenSafenet5100.Checked = False xor
      CheckBoxTokenSafenet5110.Checked = False then
    begin
      Application.MessageBox('Selecione o Modelo que deseja instalar!',
        'Verifica o modelo', MB_OK or MB_ICONINFORMATION)
    end
    else
    begin
      if CheckBoxTokenPro72k.Checked = true then
      begin
        links := 'https://www.soluti.com.br/download/7729/';
        name := 'SafeNet_pro72k(x32).msi';
        eBaixaDriveToken(links, name);
        // chama o procedimento mandando o link do drive Token safenet pro 72k
      end
      else
      begin
        if CheckBoxTokenAladin.Checked = true then
        begin
          links := 'https://www.soluti.com.br/download/7729/';
          name := 'SafeNet_Aladin(x32).msi';
          eBaixaDriveToken(links, name);
          // chama o procedimento mandando o link do drive Token safenet aladin
        end
        else
        begin
          if CheckBoxTokenEpass2003.Checked = true then
          begin
            links := 'https://www.soluti.com.br/download/7731';
            name := 'Token_epass2003(x32).msi';
            eBaixaDriveToken(links, name);
            // chama o procedimento mandando o link do drive Token epass2003k
          end
          else
          begin
            if CheckBoxTokenSafenet5100.Checked = true then
            begin
              links := 'https://www.soluti.com.br/download/7729/';
              name := 'SafeNet_5100(x32).msi';
              eBaixaDriveToken(links, name);
              // chama o procedimento mandando o link do drive Token safenet 5100k
            end
            else
            begin
              if CheckBoxTokenSafenet5110.Checked = true then
              begin
                links := 'https://www.soluti.com.br/download/7731';
                name := 'SafeNet_5110(x32).msi';
                eBaixaDriveToken(links, name);
                // chama o procedimento mandando o link do drive Token safenet 5110k
              end
              else
              /// ////CARTÃO PARA MAQUINA DE 32 BITS//////////////////
              begin
                if CheckBoxCartaoAWP.Checked = true then
                begin
                  links := 'https://www.soluti.com.br/download/5158/';
                  name := 'Cartão_AWP_OT(x32).msi';
                  eBaixaDriveToken(links, name); // cartão awp
                end
                else
                begin
                  if CheckBoxCartaoIdemia.Checked = true then
                  begin
                    links := 'https://www.soluti.com.br/download/5158/';
                    name := 'Cartão_Idemia_(x32).msi';
                    eBaixaDriveToken(links, name); // cartão Idemia
                  end
                  else
                  begin
                    if CheckBoxCartaoGemalto.Checked = true then
                    begin
                      links := 'https://www.soluti.com.br/download/7729/';
                      name := 'Cartão-Gemalto-(x32).msi';
                      eBaixaDriveToken(links, name); // cartão gemalto
                    end
                    else // então e morpho
                    begin
                      links := 'https://www.soluti.com.br/download/514/';
                      name := 'Cartão-Morpho-(x32).msi';
                      eBaixaDriveToken(links, name); // cartão Moprho
                    end;
                  end;
                end;
              end;

            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFormPrincipal.Image14Click(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := False;
  PanelDonwload.Visible := False;
  PanelEmissor.Visible :=True;
end;

procedure TFormPrincipal.Image1Click(Sender: TObject);
begin
  if (SplitView1.Opened) then
  begin
    SplitView1.Close();
  end
  else
  begin
    SplitView1.Open();
  end;

end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
  PanelToken.Visible := true;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := False;
  PanelDonwload.Visible := true;
  PanelEmissor.Visible :=False;
end;

procedure TFormPrincipal.Image3Click(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := true;
  PanelSuporte.Visible := False;
  PanelDonwload.Visible := true;
  PanelEmissor.Visible :=False;

end;

procedure TFormPrincipal.Image4Click(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := true;
  PanelDonwload.Visible := False;
  PanelEmissor.Visible :=False;
end;

procedure TFormPrincipal.Image5Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.Image6Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFormPrincipal.Label11Click(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := False;
  PanelDonwload.Visible := False;
  PanelEmissor.Visible :=True;
end;

procedure TFormPrincipal.Label12Click(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := False;
  PanelDonwload.Visible := False;
  PanelEmissor.Visible :=True;
end;

procedure TFormPrincipal.Label1Click(Sender: TObject);
begin
  PanelToken.Visible := true;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := False;
  PanelDonwload.Visible := true;
  PanelEmissor.Visible :=False;
end;

procedure TFormPrincipal.Label23Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'https://arsoluti.acsoluti.com.br/site/emitircertificado', '', nil, 0);
end;

procedure TFormPrincipal.Label23MouseLeave(Sender: TObject);
begin
  Label23.Font.Style := [];
end;

procedure TFormPrincipal.Label23MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label23.Font.Style := [fsUnderline];
end;

procedure TFormPrincipal.Label24Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'https://arsoluti.acsoluti.com.br/auth/testeseucertificado', '', nil, 0);
end;

procedure TFormPrincipal.Label24MouseLeave(Sender: TObject);
begin
  Label24.Font.Style := [];
end;

procedure TFormPrincipal.Label24MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label24.Font.Style := [fsUnderline];
end;

procedure TFormPrincipal.Label25Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'https://arsoluti.acsoluti.com.br/site/renovacao-online', '', nil, 0);
end;

procedure TFormPrincipal.Label25MouseLeave(Sender: TObject);
begin
  Label25.Font.Style := [];
end;

procedure TFormPrincipal.Label25MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label25.Font.Style := [fsUnderline];
end;

procedure TFormPrincipal.Label26Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://www.soluti.com.br/', '', nil, 0);
end;

procedure TFormPrincipal.Label26MouseLeave(Sender: TObject);
begin
  Label26.Font.Style := [];
end;

procedure TFormPrincipal.Label26MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label26.Font.Style := [fsUnderline];
end;

procedure TFormPrincipal.Label27Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'https://www.soluti.com.br/rede-de-atendimento-e-agendamento/', '', nil, 0);
end;

procedure TFormPrincipal.Label27MouseLeave(Sender: TObject);
begin
  Label27.Font.Style := [];
end;

procedure TFormPrincipal.Label27MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label27.Font.Style := [fsUnderline];
end;

procedure TFormPrincipal.Label2Click(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := true;
  PanelSuporte.Visible := False;
  PanelDonwload.Visible := true;
  PanelEmissor.Visible :=False;
end;

procedure TFormPrincipal.Label3Click(Sender: TObject);
begin
  PanelToken.Visible := False;
  PanelCartao.Visible := False;
  PanelSuporte.Visible := true;
  PanelDonwload.Visible := False;
  PanelEmissor.Visible :=False;
end;

procedure TFormPrincipal.LinkLabel1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'www.google.com', '', nil, 0);
end;

procedure TFormPrincipal.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

procedure TFormPrincipal.PngSpeedButton1Click(Sender: TObject);
var
  links, name: string;
begin
  if IsWindows64 = true then
  // se a maquina for 64 bits, então baixa do drive referente a 64 bits. caso e 32 bits
  begin
    if CheckBoxCartaoGemalto.Checked = False xor CheckBoxCartaoAWP.Checked =
      False xor CheckBoxCartaoIdemia.Checked = False xor CheckBoxCartaoMorpho.
      Checked = False xor CheckBoxTokenPro72k.Checked = False xor
      CheckBoxTokenAladin.Checked = False xor CheckBoxTokenEpass2003.Checked =
      False xor CheckBoxTokenSafenet5100.Checked = False xor
      CheckBoxTokenSafenet5110.Checked = False then
    begin
      Application.MessageBox('Selecione o modelo que deseja instalar!',
        'Verifica o modelo', MB_OK or MB_ICONINFORMATION)
    end
    else
    begin
      if CheckBoxTokenPro72k.Checked = true then
      begin
        links := 'https://www.soluti.com.br/download/7731/';
        name := 'safenet-pro72k-x64.msi';
        eBaixaDriveToken(links, name);
        // chama o procedimento mandando o link do drive Token safenet pro 72k
      end
      else
      begin
        if CheckBoxTokenAladin.Checked = true then
        begin
          links := 'https://www.soluti.com.br/download/7731';
          name := 'SafeNet-Aladin(x64).msi';
          eBaixaDriveToken(links, name);
          // chama o procedimento mandando o link do drive Token safenet aladin
        end
        else
        begin
          if CheckBoxTokenEpass2003.Checked = true then
          begin
            links := 'https://www.soluti.com.br/download/7731';
            name := 'Token_epass2003(x64).exe';
            eBaixaDriveToken(links, name);
            // chama o procedimento mandando o link do drive Token epass2003k
          end
          else
          begin
            if CheckBoxTokenSafenet5100.Checked = true then
            begin
              links := 'https://www.soluti.com.br/download/7731';
              name := 'SafeNet-5100(x64).msi';
              eBaixaDriveToken(links, name);
              // chama o procedimento mandando o link do drive Token safenet 5100k
            end
            else
            begin
              if CheckBoxTokenSafenet5110.Checked = true then
              begin
                links := 'https://www.soluti.com.br/download/7731';
                name := 'SafeNet-5110(x64).msi';
                eBaixaDriveToken(links, name);
                // chama o procedimento mandando o link do drive Token safenet 5110k
              end
              else
              begin
                if CheckBoxCartaoAWP.Checked = true then
                begin
                  links := 'https://www.soluti.com.br/download/5153/';
                  name := 'Cartão-AWP-OT(x64).msi';
                  eBaixaDriveToken(links, name); // cartão awp}
                end
                else
                begin
                  if CheckBoxCartaoIdemia.Checked = true then
                  begin
                    links := 'https://www.soluti.com.br/download/5153/';
                    name := 'Cartão-Idemia-(x64).msi';
                    eBaixaDriveToken(links, name); // cartão Idemia
                  end
                  else
                  begin
                    if CheckBoxCartaoGemalto.Checked = true then
                    begin
                      links := 'https://www.soluti.com.br/download/7731/';
                      name := 'Cartão-Gemalto-(x64).msi';
                      eBaixaDriveToken(links, name); // cartão gemalto
                    end
                    else // então e morpho
                    begin
                      links := 'https://www.soluti.com.br/download/516/';
                      name := 'Cartão-Morpho-(x64).msi';
                      eBaixaDriveToken(links, name); // cartão Moprho
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end
  else // AQUI PARA MAQUINA 32 BITS++++++++++++++++++++++++++++++++++++++++++
  begin
    if CheckBoxCartaoGemalto.Checked = False xor CheckBoxCartaoAWP.Checked =
      False xor CheckBoxCartaoIdemia.Checked = False xor CheckBoxCartaoMorpho.
      Checked = False xor CheckBoxTokenPro72k.Checked = False xor
      CheckBoxTokenAladin.Checked = False xor CheckBoxTokenEpass2003.Checked =
      False xor CheckBoxTokenSafenet5100.Checked = False xor
      CheckBoxTokenSafenet5110.Checked = False then
    begin
      Application.MessageBox('Selecione o Modelo que deseja instalar!',
        'Verifica o modelo', MB_OK or MB_ICONINFORMATION)
    end
    else
    begin
      if CheckBoxTokenPro72k.Checked = true then
      begin
        links := 'https://www.soluti.com.br/download/7729/';
        name := 'SafeNet_pro72k(x32).msi';
        eBaixaDriveToken(links, name);
        // chama o procedimento mandando o link do drive Token safenet pro 72k
      end
      else
      begin
        if CheckBoxTokenAladin.Checked = true then
        begin
          links := 'https://www.soluti.com.br/download/7729/';
          name := 'SafeNet_Aladin(x32).msi';
          eBaixaDriveToken(links, name);
          // chama o procedimento mandando o link do drive Token safenet aladin
        end
        else
        begin
          if CheckBoxTokenEpass2003.Checked = true then
          begin
            links := 'https://www.soluti.com.br/download/7731';
            name := 'Token_epass2003(x32).msi';
            eBaixaDriveToken(links, name);
            // chama o procedimento mandando o link do drive Token epass2003k
          end
          else
          begin
            if CheckBoxTokenSafenet5100.Checked = true then
            begin
              links := 'https://www.soluti.com.br/download/7729/';
              name := 'SafeNet_5100(x32).msi';
              eBaixaDriveToken(links, name);
              // chama o procedimento mandando o link do drive Token safenet 5100k
            end
            else
            begin
              if CheckBoxTokenSafenet5110.Checked = true then
              begin
                links := 'https://www.soluti.com.br/download/7731';
                name := 'SafeNet_5110(x32).msi';
                eBaixaDriveToken(links, name);
                // chama o procedimento mandando o link do drive Token safenet 5110k
              end
              else
              /// ////CARTÃO PARA MAQUINA DE 32 BITS//////////////////
              begin
                if CheckBoxCartaoAWP.Checked = true then
                begin
                  links := 'https://www.soluti.com.br/download/5158/';
                  name := 'Cartão_AWP_OT(x32).msi';
                  eBaixaDriveToken(links, name); // cartão awp
                end
                else
                begin
                  if CheckBoxCartaoIdemia.Checked = true then
                  begin
                    links := 'https://www.soluti.com.br/download/5158/';
                    name := 'Cartão_Idemia_(x32).msi';
                    eBaixaDriveToken(links, name); // cartão Idemia
                  end
                  else
                  begin
                    if CheckBoxCartaoGemalto.Checked = true then
                    begin
                      links := 'https://www.soluti.com.br/download/7729/';
                      name := 'Cartão-Gemalto-(x32).msi';
                      eBaixaDriveToken(links, name); // cartão gemalto
                    end
                    else // então e morpho
                    begin
                      links := 'https://www.soluti.com.br/download/514/';
                      name := 'Cartão-Morpho-(x32).msi';
                      eBaixaDriveToken(links, name); // cartão Moprho
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFormPrincipal.PngSpeedButton2Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','https://arsoluti.acsoluti.com.br/public/manuais/MPO.100_V.2_-_Manual_de_Emissao_de_Certificado_Digital_Soluti.pdf','','',1);
  //https://arsoluti.acsoluti.com.br/public/manuais/MPO.100_V.2_-_Manual_de_Emissao_de_Certificado_Digital_Soluti.pdf
end;

procedure TFormPrincipal.PngSpeedButton4Click(Sender: TObject);
var
  link, nome: string;
begin
  label44.Visible := true;
  label45.Visible := true;
  label46.Visible := true;
  ProgressBarEmissor.Visible :=true;
  nome := 'Emissor.jnlp';
  link := 'https://www.soluti.com.br/download/1146/';
  eBaixaDriveToken(link, nome);
  //ShellExecute(Handle,'open','https://emissor.ca.inf.br/prod/Emissor.jnlp','','',1);
end;

procedure TFormPrincipal.PngSpeedButton5Click(Sender: TObject);
var//declaração das variaveis
  usuarioname, caminho, aux: String;
  ArqIni: TIniFile;
  varString, varArquivo, nomearq: string;
  StringList: TStringList;
begin
    caminho:= '\AppData\Roaming\Mozilla\Firefox\';//ESSE CAMINHO E ESTATICO DO MOZILLA.
    usuarioname:= GetEnvironmentVariable('userprofile');//LOCALIZO O CAMINHO ONDE A PASTA DO USUARIO LOCAL ESTA.

    if DirectoryExists(usuarioname+caminho) then//SE O DIRETORIO EXITIR FAZ ALTERAÇÃO DO  .INI (usuarioname+caminho E CONCATENAÇÃO DA DUA VARIAVEL)
    begin
      //ShowMessage('Tem o caminho do arquivo');
      if FileExists(usuarioname+caminho+'profiles.ini') then //AQUI VERIFICAO SE TEM O ARQUIVO .INI, PODE ACONTECE.
      begin
        //ShowMessage('Tem o aquivo .ini');
        varArquivo := usuarioname+caminho+'profiles.ini'; //CARREGO O CAMINHO DO ARQUIVO .INI
        ArqIni := TIniFile.Create(varArquivo);//AQUI CARREGO MEU ARQUIVO PARA MEMORIA PARA TER ACESSO MAIS RAPIDO.
        StringList := TStringList.Create;//
        try
          StringList.LoadFromFile(varArquivo);//ESTOU CARREGADO MEU ARQUIVO PARA StringList
          varString := StringList.Text;// Joga arquivo carregado na StringList na variável;
          nomearq:= eBuscaNome(varString);//FUNÇÃO QUE LOCALIZA SEÇÃO [INSTALL...]
          if nomearq ='False' then//AQUI DEFINI QUAL SEÇÃO SERA USADA, SE NÃO TIVER [INSTALL...] VEI SER [PROFILE]
          begin// AQUI NÃO ENCOTROU A SEÇÃO [INSTALL] ENTÃO SERA EXECULTADO A SEÇÃO [PROFILE]
            ShowMessage(' [ERROR] :');
            aux:=eEncontarSecao(ArqIni);//FUNÇÃO BUSCA SEÇÃO [PROFILE] QUE ESTA SENDO USADA.
            ShowMessage('Achou PROFILE: '+aux);
            eConfiguraDLL(usuarioname+caminho+aux);//FUNÇÃO PARA CONFIGURAR DLL
          end
          else
          begin // AQUI ELE ENCOTROU A SEÇÃO [INSTALL....]
            aux := ArqIni.ReadString(nomearq, 'Default', '');//AUX RECEBE O CAMINHO DO PERFIL
            eConfiguraDLL(usuarioname+caminho+aux);//FUNÇÃO PARA CONFIGURAR DLL
          end;
        finally
          FreeAndNil(StringList);
        end;
      end
      else
      begin
        ShowMessage('Não foi possível encotrar o PROFILE');
      end;
    end
    else
    begin
      ShowMessage('Não encontrado o caminho');
    end;
end;

procedure TFormPrincipal.PngSpeedButton6Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open','http://187.95.189.232', '', nil, 0);
end;

end.
