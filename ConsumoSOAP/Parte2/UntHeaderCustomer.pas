unit UntHeaderCustomer;

interface

uses
  Soap.InvokeRegistry, Xml.XMLIntf;

const
  _NS = 'ns';

type
  TSOAPHeaderCustomer = class(TSoapHeader)
  private
    FPassword: string;
    FUsername: string;
  public
    function ObjectToSOAP(RootNode, ParentNode: IXMLNode;
                          const ObjConverter: IObjConverter;
                          const NodeName, NodeNamespace, ChildNamespace: InvString; ObjConvOpts: TObjectConvertOptions;
                          out RefID: InvString): IXMLNode; override;
  published
    property userName     : string read FUsername write Fusername;
    property userPassword : string read FPassword write FPassword;
  end;

implementation

{ UsernameToken }

function TSOAPHeaderCustomer.ObjectToSOAP(RootNode, ParentNode: IXMLNode;
                            const ObjConverter: IObjConverter;
                            const NodeName, NodeNamespace, ChildNamespace: InvString; ObjConvOpts: TObjectConvertOptions;
                            out RefID: InvString): IXMLNode;
begin
  Result := ParentNode.AddChild('web-user', '');
  Result.DeclareNamespace('', _NS);
  Result.Text := FUsername;
  Result := ParentNode.AddChild('web-password', '');
  Result.DeclareNamespace('', _NS);
  Result.Text := FPassword;
end;

end.
