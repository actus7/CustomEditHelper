object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtNormal: TEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '123'
    OnExit = edtNormalExit
  end
  object edtMask: TMaskEdit
    Left = 88
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtMask'
    OnExit = edtMaskExit
  end
  object Edit1: TEdit
    Left = 88
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'ABC'
    OnExit = edtNormalExit
  end
  object Edit2: TEdit
    Left = 88
    Top = 113
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '1A2B'
    OnExit = edtNormalExit
  end
  object Edit3: TEdit
    Left = 88
    Top = 140
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '3c4d'
    OnExit = edtNormalExit
  end
  object btnReset: TButton
    Left = 208
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Reset Values'
    TabOrder = 5
    OnClick = btnResetClick
  end
end
