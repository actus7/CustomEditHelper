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
    Text = 'edtNormal'
    OnExit = edtNormalExit
  end
  object edtMask: TMaskEdit
    Left = 312
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtMask'
    OnExit = edtMaskExit
  end
end
