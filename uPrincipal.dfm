object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cliques by Adriano'
  ClientHeight = 361
  ClientWidth = 172
  Color = clBtnFace
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 400
  Constraints.MinHeight = 300
  Constraints.MinWidth = 188
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    172
    361)
  PixelsPerInch = 96
  TextHeight = 13
  object lblIntervalo: TLabel
    Left = 8
    Top = 127
    Width = 61
    Height = 13
    Caption = 'Clicar a cada'
  end
  object lblIntervaloUnidade: TLabel
    Left = 75
    Top = 146
    Width = 65
    Height = 13
    Caption = 'milissegundos'
  end
  object lblAdrianoSoftware: TLabel
    Left = 8
    Top = 212
    Width = 156
    Height = 13
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Adriano Software'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 214
  end
  object lblEmail: TLabel
    Left = 8
    Top = 231
    Width = 156
    Height = 13
    Cursor = crHandPoint
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'escrevaparaadriano@gmail.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lblEmailClick
    ExplicitWidth = 214
  end
  object lblMouseX: TLabel
    Left = 12
    Top = 283
    Width = 10
    Height = 13
    Caption = 'X:'
  end
  object lblMouseY: TLabel
    Left = 91
    Top = 283
    Width = 10
    Height = 13
    Caption = 'Y:'
  end
  object chkTopo: TCheckBox
    Left = 8
    Top = 8
    Width = 156
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Janela sobre as outras'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = chkTopoClick
  end
  object ragBotao: TRadioGroup
    Left = 8
    Top = 31
    Width = 156
    Height = 79
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Bot'#227'o  '
    ItemIndex = 0
    Items.Strings = (
      'Esquerdo'
      'Do centro'
      'Direito')
    TabOrder = 1
  end
  object edtIntervalo: TEdit
    Left = 8
    Top = 143
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = '100'
    OnChange = edtIntervaloChange
  end
  object btnAtivar: TButton
    Left = 8
    Top = 173
    Width = 75
    Height = 25
    Caption = 'Ativar'
    Default = True
    TabOrder = 3
    OnClick = btnAtivarClick
  end
  object btnDesativar: TButton
    Left = 89
    Top = 173
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Desativar'
    Enabled = False
    TabOrder = 4
    OnClick = btnDesativarClick
  end
  object chkPosicao: TCheckBox
    Left = 8
    Top = 262
    Width = 156
    Height = 17
    Caption = 'Come'#231'ar na posi'#231#227'o'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = chkPosicaoClick
  end
  object edtMouseX: TEdit
    Left = 28
    Top = 280
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 6
    Text = '0'
  end
  object edtMouseY: TEdit
    Left = 107
    Top = 280
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 7
    Text = '0'
  end
  object stbPrincipal: TStatusBar
    Left = 0
    Top = 342
    Width = 172
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object chkTemaEscuro: TCheckBox
    Left = 8
    Top = 307
    Width = 156
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tema escuro'
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = chkTemaEscuroClick
  end
  object tmrCliques: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrCliquesTimer
    Left = 248
    Top = 48
  end
  object tmrMouse: TTimer
    Interval = 10
    OnTimer = tmrMouseTimer
    Left = 280
    Top = 48
  end
end
