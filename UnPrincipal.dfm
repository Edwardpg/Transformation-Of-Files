object FormViewConversor: TFormViewConversor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FormViewConversor'
  ClientHeight = 392
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridConversor: TDBGrid
    Left = 0
    Top = 0
    Width = 489
    Height = 392
    Align = alLeft
    DataSource = DsFilesXML
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBoxCarregarArquivos: TGroupBox
    Left = 506
    Top = 24
    Width = 206
    Height = 185
    Caption = 'Selecione um tipo de arquivo'
    TabOrder = 1
    object BtnCarregarCSV: TBitBtn
      Left = 24
      Top = 79
      Width = 161
      Height = 25
      Caption = 'Carregar Arquivos CSV'
      TabOrder = 0
    end
    object BtnCarregarJson: TBitBtn
      Left = 24
      Top = 110
      Width = 161
      Height = 25
      Caption = 'Carregar Arquivos Json'
      TabOrder = 1
    end
    object BtnCarregarXML: TBitBtn
      Left = 24
      Top = 48
      Width = 161
      Height = 25
      Caption = 'Carregar Arquivo XML'
      TabOrder = 2
      OnClick = BtnCarregarXMLClick
    end
  end
  object DsFilesXML: TDataSource
    Left = 527
    Top = 304
  end
end
