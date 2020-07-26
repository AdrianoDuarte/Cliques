unit uPrincipal;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.Themes,
  Winapi.ShellAPI,
  Winapi.Windows;

type
  TfrmPrincipal = class(TForm)
    tmrCliques: TTimer;
    tmrMouse: TTimer;
    chkTopo: TCheckBox;
    ragBotao: TRadioGroup;
    lblIntervalo: TLabel;
    edtIntervalo: TEdit;
    lblIntervaloUnidade: TLabel;
    btnAtivar: TButton;
    btnDesativar: TButton;
    lblAdrianoSoftware: TLabel;
    lblEmail: TLabel;
    chkPosicao: TCheckBox;
    lblMouseX: TLabel;
    edtMouseX: TEdit;
    lblMouseY: TLabel;
    edtMouseY: TEdit;
    stbPrincipal: TStatusBar;
    chkTemaEscuro: TCheckBox;
    procedure tmrCliquesTimer(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
    procedure btnDesativarClick(Sender: TObject);
    procedure edtIntervaloChange(Sender: TObject);
    procedure tmrMouseTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lblEmailClick(Sender: TObject);
    procedure chkPosicaoClick(Sender: TObject);
    procedure chkTopoClick(Sender: TObject);
    procedure chkTemaEscuroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    PT: TPoint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAtivarClick(Sender: TObject);
begin
  btnAtivar.Enabled := False;
  btnDesativar.Enabled := True;
  if chkPosicao.Checked then
    SetCursorPos(StrToIntDef(edtMouseX.Text, 0),
      StrToIntDef(edtMouseY.Text, 0));
  tmrCliques.Enabled := True;
end;

procedure TfrmPrincipal.btnDesativarClick(Sender: TObject);
begin
  btnAtivar.Enabled := True;
  btnDesativar.Enabled := False;
  tmrCliques.Enabled := False;
end;

procedure TfrmPrincipal.chkPosicaoClick(Sender: TObject);
begin
  lblMouseX.Enabled := chkPosicao.Checked;
  lblMouseY.Enabled := chkPosicao.Checked;
  edtMouseX.Enabled := chkPosicao.Checked;
  edtMouseY.Enabled := chkPosicao.Checked;
end;

procedure TfrmPrincipal.chkTemaEscuroClick(Sender: TObject);
begin
  if chkTemaEscuro.Checked then
    TStyleManager.TrySetStyle('Tablet Dark')
  else
    TStyleManager.TrySetStyle('Tablet Light');
end;

procedure TfrmPrincipal.chkTopoClick(Sender: TObject);
begin
  if chkTopo.Checked then
    FormStyle := fsStayOnTop
  else
    FormStyle := fsNormal;
end;

procedure TfrmPrincipal.edtIntervaloChange(Sender: TObject);
begin
  tmrCliques.Interval := StrToIntDef(edtIntervalo.Text, 1000);
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  stbPrincipal.Panels[0].Width := ClientWidth div 2;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  Margem: Byte;

begin
  Margem := 100;
  Left := Screen.Width - Width - Margem;
  Top := Screen.Height - Height - Margem;
end;

procedure TfrmPrincipal.lblEmailClick(Sender: TObject);
begin
  ShellExecute(Handle, 'Open', 'mailto:escrevaparaadriano@gmail.com', '',
    '', SW_SHOW);
end;

procedure TfrmPrincipal.tmrCliquesTimer(Sender: TObject);
begin
  case ragBotao.ItemIndex of
    0:
      begin
        Mouse_Event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
        Mouse_Event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
      end;
    1:
      begin
        Mouse_Event(MOUSEEVENTF_MIDDLEDOWN, 0, 0, 0, 0);
        Mouse_Event(MOUSEEVENTF_MIDDLEUP, 0, 0, 0, 0);
      end;
    2:
      begin
        Mouse_Event(MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 0);
        Mouse_Event(MOUSEEVENTF_RIGHTUP, 0, 0, 0, 0);
      end;
  end;
end;

procedure TfrmPrincipal.tmrMouseTimer(Sender: TObject);
begin
  GetCursorPos(PT);
  stbPrincipal.Panels[0].Text := 'X: ' + PT.X.ToString;
  stbPrincipal.Panels[1].Text := 'Y: ' + PT.Y.ToString;
end;

end.
