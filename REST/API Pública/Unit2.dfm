object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 779
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 32
    Width = 145
    Height = 25
    Caption = 'GERAR ACCESS TOKEN'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 304
    Width = 593
    Height = 449
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 352
    Top = 32
    Width = 145
    Height = 25
    Caption = 'USAR ACCESS TOKEN'
    TabOrder = 2
    OnClick = Button2Click
  end
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    BaseURL = 'https://accounts.spotify.com'
    Params = <>
    HandleRedirects = True
    Left = 88
    Top = 96
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'grant_type'
        Value = 'client_credentials'
      end>
    Resource = 'api/token'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 40
    Top = 160
  end
  object RESTResponse1: TRESTResponse
    Left = 144
    Top = 160
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Username = '62dbf87068c149e888c421f8d9bc4b70'
    Password = '9cb644ba0ae34fa587671d1b23fde3e8'
    Left = 88
    Top = 232
  end
  object RESTClient2: TRESTClient
    Authenticator = OAuth2Authenticator1
    BaseURL = 'https://api.spotify.com'
    Params = <>
    HandleRedirects = True
    Left = 424
    Top = 96
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <>
    Resource = 'v1/users/jmarioguedes'
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 369
    Top = 160
  end
  object RESTResponse2: TRESTResponse
    Left = 488
    Top = 160
  end
  object OAuth2Authenticator1: TOAuth2Authenticator
    TokenType = ttBEARER
    Left = 424
    Top = 232
  end
end
