unit Vcl.TCustomEditHelper;

interface

uses
  Vcl.StdCtrls, Vcl.Mask;

type
  TCustomEditHelper = class helper for TCustomEdit
  public
    class var OldValue: String;
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
