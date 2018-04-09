unit Unit2;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  IPPeerClient,
  Vcl.StdCtrls,
  REST.Client,
  REST.Authenticator.OAuth,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  REST.Authenticator.Basic;

type
  TForm2 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    Memo1: TMemo;
    HTTPBasicAuthenticator1: THTTPBasicAuthenticator;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    OAuth2Authenticator1: TOAuth2Authenticator;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  System.JSON;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Self.RESTRequest1.Execute;
  Self.Memo1.Lines.Text                 := Self.RESTResponse1.JSONText;
  Self.OAuth2Authenticator1.AccessToken := TJSONString(TJSONObject(Self.RESTResponse1.JSONValue).GetValue('access_token')).Value;

  ShowMessage(Self.OAuth2Authenticator1.AccessToken);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Self.RESTRequest2.Execute;
  Self.Memo1.Lines.Text := Self.RESTResponse2.JSONText;
end;

end.
