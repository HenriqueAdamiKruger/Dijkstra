object Formulario: TFormulario
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormularioCriar
  PixelsPerInch = 96
  TextHeight = 13
  object LabelEstadoFim: TLabel
    Left = 16
    Top = 104
    Width = 145
    Height = 13
    Caption = 'Estado final'
  end
  object LabelEstadoInicio: TLabel
    Left = 16
    Top = 13
    Width = 59
    Height = 13
    Caption = 'Estado inicio'
  end
  object FCalcular: TButton
    Left = 16
    Top = 216
    Width = 169
    Height = 35
    Caption = 'Calcular melhor caminho'
    TabOrder = 0
    OnClick = FCalcularClick
  end
  object EstadoInicio: TComboBox
    Left = 16
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object EstadoFim: TComboBox
    Left = 16
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 2
  end
end
