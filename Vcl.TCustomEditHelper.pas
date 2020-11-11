unit Vcl.TCustomEditHelper;

interface

uses
  Winapi.Windows, Classes, Vcl.StdCtrls, Vcl.Mask;

const
  ECM_FIRST = $1500;
  EM_SETCUEBANNER = ECM_FIRST + 1;
  EM_GETCUEBANNER = ECM_FIRST + 2;

type
  TCustomEditHelper = class helper for TCustomEdit
  private
    function GetOldValue: String;
    procedure SetOldValue(InVal: String);
  published
    property OldValue: String read GetOldValue write SetOldValue;
  end;

  TEdit = class(Vcl.StdCtrls.TEdit)
  protected
    procedure DoEnter; override;
  end;

  TMaskEdit = class(Vcl.Mask.TMaskEdit)
  protected
    procedure DoEnter; override;
  end;

implementation

{ TCustomEditHelper }

function TCustomEditHelper.GetOldValue: String;
const
  Buf_Size = 512;
var
  w: PWideChar;
begin
  result := '';
  w := AllocMem(Buf_Size);
  try
    SendMessage(Self.handle, EM_GETCUEBANNER, WParam(w), LParam(Buf_Size));
    result := WideCharToString(w);
  finally
    FreeMem(w);
  end;
end;

procedure TCustomEditHelper.SetOldValue(InVal: String);
var
  w: WideString;
begin
  w := InVal;
  SendMessage(Self.handle, EM_SETCUEBANNER, 1, LParam(PWideChar(w)));
  Self.Refresh;
end;

{ TEdit }
procedure TEdit.DoEnter;
begin
  inherited;
  OldValue := Text;
end;

{ TMaskEdit }
procedure TMaskEdit.DoEnter;
begin
  inherited;
  OldValue := Text;
end;

end.
