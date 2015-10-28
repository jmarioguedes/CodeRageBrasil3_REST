object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Google Translate API'
  ClientHeight = 505
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 249
    Width = 704
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 241
    ExplicitWidth = 245
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Traduzir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object LabeledEdit1: TLabeledEdit
      Left = 120
      Top = 32
      Width = 65
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Origem'
      TabOrder = 1
      Text = 'pt'
    end
    object LabeledEdit2: TLabeledEdit
      Left = 288
      Top = 32
      Width = 65
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'Destino'
      TabOrder = 2
      Text = 'en'
    end
    object Button2: TButton
      Left = 200
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Troca'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 486
    Width = 704
    Height = 19
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 65
    Width = 704
    Height = 184
    Align = alTop
    Caption = 'Entrada'
    TabOrder = 2
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 700
      Height = 167
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'Frase em portugu'#234's!')
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 252
    Width = 704
    Height = 234
    Align = alClient
    Caption = 'Sa'#237'da'
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 700
      Height = 217
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'https://www.googleapis.com/language/translate/v2'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 160
    Top = 112
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        name = 'q'
        Value = 'Tamires eu te amo!'
      end
      item
        name = 'source'
        Value = 'pt'
      end
      item
        name = 'target'
        Value = 'en'
      end
      item
        name = 'key'
        Value = 'AIzaSyACb4r_bnIMg1OZmW_e2tdKExndedWKzEM'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 88
    Top = 184
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'data.translations'
    Left = 232
    Top = 184
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 376
    Top = 184
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 528
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 320
    Top = 356
  end
end
