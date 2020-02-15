// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://www3.treinamento.bbmnet.com.br/Integracao/Integracao.svc?singleWsdl
//  >Import : http://www3.treinamento.bbmnet.com.br/Integracao/Integracao.svc?singleWsdl>0
//  >Import : http://www3.treinamento.bbmnet.com.br/Integracao/Integracao.svc?singleWsdl>1
// Encoding : utf-8
// Version  : 1.0
// (15/02/2020 09:45:42 - - $Rev: 93209 $)
// ************************************************************************ //

unit Integracao;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/IWCFIntegracao/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : BasicHttpBinding_IWCFIntegracao
  // service   : WCFIntegracao
  // port      : BasicHttpBinding_IWCFIntegracao
  // URL       : http://www3.treinamento.bbmnet.com.br/Integracao/Integracao.svc/Integracao
  // ************************************************************************ //
  IWCFIntegracao = interface(IInvokable)
  ['{E505D5D2-DC02-2A55-E578-759F2BF53910}']
    function  EnviarEdital(const editalXml: string): string; stdcall;
    procedure EnviarAnexo(const protocoloProcessamento: string; const numeroSequencia: Integer; const anexo: TArray<System.Byte>; const nomeArquivo: string; const descricao: string; const isEdital: Boolean
                          ); stdcall;
    procedure EnviarFoto(const protocoloProcessamento: string; const codigoProdutoBBM: TXSDecimal; const codigoProdutoOrgao: string; const numeroLote: Integer; const fotoProcessamento: TArray<System.Byte>; const nomeArquivo: string; 
                         const numeroSequencia: Integer; const numeroItem: Integer); stdcall;
    function  ConsultarEditalEnviado(const protocolo: string): string; stdcall;
    function  ConsultarEdital(const codigoEdital: Integer): string; stdcall;
    function  ConsultarEditalResultado(const protocolo: string): string; stdcall;
    function  ConsultarUnidadesMedida: string; stdcall;
    function  ConsultarProdutosPaginado(const pesquisa: string; const produtosOrgao: Boolean; const produtosBBM: Boolean; const expressaoOrdenamento: string; const quantidadeLinhas: Integer; const inicio: Integer
                                        ): string; stdcall;
    function  ConsultarUltimoSequencial: string; stdcall;
  end;

function GetIWCFIntegracao(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IWCFIntegracao;


implementation
  uses System.SysUtils;

function GetIWCFIntegracao(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IWCFIntegracao;
const
  defWSDL = 'http://www3.treinamento.bbmnet.com.br/Integracao/Integracao.svc?singleWsdl';
  defURL  = 'http://www3.treinamento.bbmnet.com.br/Integracao/Integracao.svc/Integracao';
  defSvc  = 'WCFIntegracao';
  defPrt  = 'BasicHttpBinding_IWCFIntegracao';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IWCFIntegracao);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { IWCFIntegracao }
  InvRegistry.RegisterInterface(TypeInfo(IWCFIntegracao), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IWCFIntegracao), 'http://tempuri.org/IWCFIntegracao/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IWCFIntegracao), ioDocument);
  { IWCFIntegracao.EnviarEdital }
  InvRegistry.RegisterMethodInfo(TypeInfo(IWCFIntegracao), 'EnviarEdital', '',
                                 '[ReturnName="EnviarEditalResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarEdital', 'editalXml', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarEdital', 'EnviarEditalResult', '',
                                '', IS_NLBL);
  { IWCFIntegracao.EnviarAnexo }
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarAnexo', 'protocoloProcessamento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarAnexo', 'anexo', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarAnexo', 'nomeArquivo', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarAnexo', 'descricao', '',
                                '', IS_NLBL);
  { IWCFIntegracao.EnviarFoto }
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarFoto', 'protocoloProcessamento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarFoto', 'codigoProdutoOrgao', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarFoto', 'fotoProcessamento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'EnviarFoto', 'nomeArquivo', '',
                                '', IS_NLBL);
  { IWCFIntegracao.ConsultarEditalEnviado }
  InvRegistry.RegisterMethodInfo(TypeInfo(IWCFIntegracao), 'ConsultarEditalEnviado', '',
                                 '[ReturnName="ConsultarEditalEnviadoResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarEditalEnviado', 'protocolo', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarEditalEnviado', 'ConsultarEditalEnviadoResult', '',
                                '', IS_NLBL);
  { IWCFIntegracao.ConsultarEdital }
  InvRegistry.RegisterMethodInfo(TypeInfo(IWCFIntegracao), 'ConsultarEdital', '',
                                 '[ReturnName="ConsultarEditalResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarEdital', 'ConsultarEditalResult', '',
                                '', IS_NLBL);
  { IWCFIntegracao.ConsultarEditalResultado }
  InvRegistry.RegisterMethodInfo(TypeInfo(IWCFIntegracao), 'ConsultarEditalResultado', '',
                                 '[ReturnName="ConsultarEditalResultadoResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarEditalResultado', 'protocolo', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarEditalResultado', 'ConsultarEditalResultadoResult', '',
                                '', IS_NLBL);
  { IWCFIntegracao.ConsultarUnidadesMedida }
  InvRegistry.RegisterMethodInfo(TypeInfo(IWCFIntegracao), 'ConsultarUnidadesMedida', '',
                                 '[ReturnName="ConsultarUnidadesMedidaResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarUnidadesMedida', 'ConsultarUnidadesMedidaResult', '',
                                '', IS_NLBL);
  { IWCFIntegracao.ConsultarProdutosPaginado }
  InvRegistry.RegisterMethodInfo(TypeInfo(IWCFIntegracao), 'ConsultarProdutosPaginado', '',
                                 '[ReturnName="ConsultarProdutosPaginadoResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarProdutosPaginado', 'pesquisa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarProdutosPaginado', 'expressaoOrdenamento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarProdutosPaginado', 'ConsultarProdutosPaginadoResult', '',
                                '', IS_NLBL);
  { IWCFIntegracao.ConsultarUltimoSequencial }
  InvRegistry.RegisterMethodInfo(TypeInfo(IWCFIntegracao), 'ConsultarUltimoSequencial', '',
                                 '[ReturnName="ConsultarUltimoSequencialResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IWCFIntegracao), 'ConsultarUltimoSequencial', 'ConsultarUltimoSequencialResult', '',
                                '', IS_NLBL);

end.