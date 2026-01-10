unit uClassAutoFree;

interface

uses
  System.Generics.Collections, Rtti, System.Classes,
  System.SysUtils;

type

  IAutoFree<T> = interface
    function GetInstance:T;
  end;

  TAutoFree<T: class> = class(TInterfacedObject, IAutoFree<T>)
  private
    FInstance: T;
    constructor Create(AInstance: T);
    destructor Destroy; override;
  public
    property Instance: T read FInstance;
    class function New(AInstance: T):IAutoFree<T>;
    function GetInstance:T;
  end;

implementation

uses
  System.Types;

{ TAutoFree<T> }

constructor TAutoFree<T>.Create(AInstance: T);
begin
  inherited Create;
  FInstance := AInstance;
end;

destructor TAutoFree<T>.Destroy;
begin
  FreeAndNil(FInstance);
  inherited;
end;

function TAutoFree<T>.GetInstance: T;
begin
  Result:= FInstance;
end;

class function TAutoFree<T>.New(AInstance: T): IAutoFree<T>;
begin
  Result:= TAutoFree<T>.Create(AInstance);
end;

end.
