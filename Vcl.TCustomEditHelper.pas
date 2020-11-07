unit Vcl.TCustomEditHelper;

interface

uses
  Vcl.StdCtrls, Vcl.Mask, System.SysUtils;

type
  TCustomEditHelper = class helper for TCustomEdit
  private
    function GetOldValue: String;
    procedure SetOldValue(const Value: String);
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
begin
  Result := PChar(Self.Tag);
end;

procedure TCustomEditHelper.SetOldValue(const Value: String);
var
  FText: PChar;
begin
  Ftext := PChar(Value);
  Self.Tag := Integer(FText);
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
