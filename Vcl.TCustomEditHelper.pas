unit Vcl.TCustomEditHelper;

interface

uses
  Vcl.StdCtrls, Vcl.Mask;

type
  TEdit = class(Vcl.StdCtrls.TEdit)
  private
    FOldValue: String;
  protected
    procedure DoEnter; override;
  published
    property OldValue: String read FOldValue write FOldValue;
  end;

  TMaskEdit = class(Vcl.Mask.TMaskEdit)
  private
    FOldValue: String;
  protected
    procedure DoEnter; override;
  published
    property OldValue: String read FOldValue write FOldValue;
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
