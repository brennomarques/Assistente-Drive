unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.ComCtrls, Vcl.StdCtrls,
  IdAntiFreezeBase, IdAntiFreeze, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    ProgressBar1: TProgressBar;
    IdHTTP1: TIdHTTP;
    lblStatus: TLabel;
    ckbOpcao: TCheckBox;
    Labelprocesso: TLabel;
    IdAntiFreeze1: TIdAntiFreeze;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
    function RetornaKiloBytes(ValorAtual: real): string;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.RetornaKiloBytes(ValorAtual: real): string;
var
  resultado: real;
begin
  resultado := ((ValorAtual / 1024) / 1024);
  Result := FormatFloat('0.000 KBs', resultado);
end;

function TForm1.RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
  resultado: real;
begin
  resultado := ((ValorAtual * 100) / ValorMaximo);
  Result := FormatFloat('0%', resultado);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  arquivo, caminho: string;
  MyFile: TFileStream;
begin
  // definir o link
  caminho := 'https://www.soluti.com.br/download/5153/';
  // aqui defini um caminho pardão pro download , pode ser trocado por um edit, etc
  arquivo := Edit1.text; // nome do arquivo para download
  if not DirectoryExists('C:\SOLUTI\') then
  // se o local não exitir e cria a pasta
    ForceDirectories('C:\SOLUTI\'); // criação da pasta
  MyFile := TFileStream.Create('C:\SOLUTI\' + arquivo, fmCreate);
  // local no hd e nome do arquivo com a extensão, onde vai salvar.
  try
    // IdHTTP1.Get('https://www.soluti.com.br/download/1171/'+arquivo, MyFile); // fazendo o download do arquivo
    IdHTTP1.Get('https://www.soluti.com.br/download/469/' + arquivo, MyFile);
  finally
    MyFile.Free;
  end;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Label1.Caption := 'Requisição cancelada!';
  IdHTTP1.Disconnect;
end;

procedure TForm1.IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  ProgressBar1.Position := AWorkCount;
  lblStatus.Caption := 'Baixando ... ' + RetornaKiloBytes(AWorkCount);
  // TForm1.Caption := 'Download em ... ' + RetornaPorcentagem(ProgressBar1.Max, AWorkCount);
  Labelprocesso.Caption := 'Download em ...' + RetornaPorcentagem
    (ProgressBar1.Max, AWorkCount);

end;

procedure TForm1.IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  ProgressBar1.Position := 0;
  ProgressBar1.Max := AWorkCountMax;
  Label1.Caption := 'Download em andamente, espere!';
end;

procedure TForm1.IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  ProgressBar1.Position := ProgressBar1.Max;
  Label1.Caption := 'Download Concluído!';

  ProgressBar1.Position := 0;
  // TForm1.Caption := 'Finalizado ...';
  Labelprocesso.Caption := 'Finalizado ...';
  lblStatus.Caption := 'Download Finalizado ...';
  // WinExec(PChar('command.com /C:\SOLUTI\ "Digite o seu Comando aqui" '),SW_shownormal);
  ShowMessage('Instalando driver');

  // ProgressBar1.Visible  := false;
  // btnBaixar.Enabled    := true;
  if ckbOpcao.Checked then
    Label2.Caption := 'BAIXA DO DRIVER CONCLUIDO!';
end;

end.
