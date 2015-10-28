object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Spotify API Rest'
  ClientHeight = 546
  ClientWidth = 766
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 77
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Login'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      766
      77)
    object Image1: TImage
      Left = 693
      Top = 14
      Width = 61
      Height = 57
      Anchors = [akTop, akRight]
      Stretch = True
      ExplicitLeft = 628
    end
    object Label1: TLabel
      Left = 547
      Top = 14
      Width = 137
      Height = 19
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Nome do usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 482
    end
    object Label2: TLabel
      Left = 647
      Top = 39
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 582
    end
    object Button1: TButton
      Left = 87
      Top = 12
      Width = 75
      Height = 53
      Caption = 'Meu Perfil'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 12
      Width = 73
      Height = 54
      Caption = 'Autoriza'#231#227'o'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 168
      Top = 12
      Width = 89
      Height = 53
      Caption = 'Meus '#193'lbuns'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 263
      Top = 12
      Width = 90
      Height = 53
      Caption = 'Playlists'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 359
      Top = 13
      Width = 82
      Height = 52
      Caption = 'Adicionar'
      TabOrder = 4
      OnClick = Button5Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 527
    Width = 766
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Memo1: TMemo
    Left = 0
    Top = 77
    Width = 766
    Height = 450
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 2
  end
  object RESTClient1: TRESTClient
    Authenticator = OAuth2Authenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'https://api.spotify.com'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 436
    Top = 140
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 'v1/me'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 352
    Top = 216
  end
  object RESTResponse1: TRESTResponse
    Left = 512
    Top = 220
  end
  object OAuth2Authenticator1: TOAuth2Authenticator
    TokenType = ttBEARER
    Left = 604
    Top = 140
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    DefaultPort = 9090
    OnCommandGet = IdHTTPServer1CommandGet
    Left = 60
    Top = 132
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        name = 'offset'
        Value = '0'
      end>
    Resource = 'v1/me/tracks'
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 348
    Top = 296
  end
  object RESTResponse2: TRESTResponse
    Left = 516
    Top = 296
  end
  object RESTRequest3: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'user_id'
        Options = [poAutoCreated]
      end
      item
        name = 'offset'
        Value = '0'
      end>
    Resource = 'v1/users/{user_id}/playlists'
    Response = RESTResponse3
    SynchronizedEvents = False
    Left = 348
    Top = 380
  end
  object RESTResponse3: TRESTResponse
    ContentType = 'application/json'
    Left = 516
    Top = 380
  end
  object RESTRequest4: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'user_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/users/{user_id}/playlists'
    Response = RESTResponse4
    SynchronizedEvents = False
    Left = 344
    Top = 456
  end
  object RESTResponse4: TRESTResponse
    Left = 520
    Top = 456
  end
  object RESTClient2: TRESTClient
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Params = <>
    HandleRedirects = True
    Left = 80
    Top = 320
  end
  object RESTRequest5: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse5
    SynchronizedEvents = False
    Left = 80
    Top = 392
  end
  object RESTResponse5: TRESTResponse
    Left = 80
    Top = 464
  end
end
