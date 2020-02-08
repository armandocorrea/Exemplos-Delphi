// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl
//  >Import : https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (08/02/2020 11:45:31 - - $Rev: 93209 $)
// ************************************************************************ //

unit AtendeCliente1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:unsignedShort   - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:short           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]

  enderecoERP          = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  parametroMaster      = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  unidadePostagemERP   = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  contratoERPPK        = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  SQLException         = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Flt][GblElm] }
  Exception            = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Flt][GblElm] }
  ErroMontagemRelatorio = class;                { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Flt][GblElm] }
  SigepClienteException = class;                { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Flt][Alias] }
  AutenticacaoException = class;                { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Flt][Alias] }
  servicoAdicionalXML  = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  servicoSigep         = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  objetoPostal         = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  usuarioInstalacao    = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  vigenciaERP          = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  servicoAdicionalERP  = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  clienteERP           = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  servicoERP           = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  contratoERP          = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  gerenteConta         = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  objetoPostalPK       = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  preListaPostagem     = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  objetoSimplificado   = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  pessoa               = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  servicoAdicionalTO   = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  retornoCancelamento  = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  SQLException2        = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  Exception2           = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  ErroMontagemRelatorio2 = class;               { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  objeto               = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  cartaoPostagemERP    = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  mensagemParametrizadaTO = class;              { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  remetente            = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  embalagemLRSMaster   = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  chancelaMaster       = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  valorDeclarado       = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  dimensaoTO           = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  medidaTO             = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  valePostal           = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  produto              = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  coleta               = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  coletaReversa        = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }
  coletaSimultanea     = class;                 { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  statusGerente = (Ativo, Inativo);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  tipoGerente = (GerenteConta, GerenteContaMaster);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  categoriaServico = (SEM_CATEGORIA, PAC, SEDEX, CARTA, GRANDES_FORMATOS, REVERSO);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  statusUsuario = (Ativo, Inativo);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  statusPlp = (Aberta, Fechada, Postada);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  simNao = (S, N);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  statusObjetoPostal = (EmBranco, Postado, Cancelado, Estorno);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  tipoBloqueio = (FRAUDE_BLOQUEIO, EXTRAVIO_VAREJO_PRE_INDENIZADO, EXTRAVIO_VAREJO_POS_INDENIZADO, EXTRAVIO_CORPORATIVO, INTERNACIONAL_LDI);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  acao = (DEVOLVIDO_AO_REMETENTE, ENCAMINHADO_PARA_REFUGO, REINTEGRADO_E_DEVOLVIDO_AO_REMETENTE, DESBLOQUEADO);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  tipoMensagem = (A, E, S);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  tipoEmbalagem = (DE, PD, RL);

  { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblSmpl] }
  statusCartao = (Desconhecido, Normal, Suspenso, Cancelado, Irregular);

  {$SCOPEDENUMS OFF}

  Array_Of_clienteERP = array of clienteERP;    { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_objeto = array of objeto;            { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_produto = array of produto;          { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_servicoSigep = array of servicoSigep;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_parametroMaster = array of parametroMaster;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_usuarioInstalacao = array of usuarioInstalacao;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_gerenteConta = array of gerenteConta;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_servicoAdicionalERP = array of servicoAdicionalERP;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_cartaoPostagemERP = array of cartaoPostagemERP;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_unidadePostagemERP = array of unidadePostagemERP;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  Array_Of_contratoERP = array of contratoERP;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[GblUbnd] }
  VerificaSeTodosObjetosCancelados = array of objetoPostal;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : enderecoERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  enderecoERP = class(TRemotable)
  private
    Fbairro: string;
    Fbairro_Specified: boolean;
    Fcep: string;
    Fcep_Specified: boolean;
    Fcidade: string;
    Fcidade_Specified: boolean;
    Fcomplemento2: string;
    Fcomplemento2_Specified: boolean;
    Fend_: string;
    Fend__Specified: boolean;
    Fuf: string;
    Fuf_Specified: boolean;
    FunidadesPostagem: Array_Of_unidadePostagemERP;
    FunidadesPostagem_Specified: boolean;
    procedure Setbairro(Index: Integer; const Astring: string);
    function  bairro_Specified(Index: Integer): boolean;
    procedure Setcep(Index: Integer; const Astring: string);
    function  cep_Specified(Index: Integer): boolean;
    procedure Setcidade(Index: Integer; const Astring: string);
    function  cidade_Specified(Index: Integer): boolean;
    procedure Setcomplemento2(Index: Integer; const Astring: string);
    function  complemento2_Specified(Index: Integer): boolean;
    procedure Setend_(Index: Integer; const Astring: string);
    function  end__Specified(Index: Integer): boolean;
    procedure Setuf(Index: Integer; const Astring: string);
    function  uf_Specified(Index: Integer): boolean;
    procedure SetunidadesPostagem(Index: Integer; const AArray_Of_unidadePostagemERP: Array_Of_unidadePostagemERP);
    function  unidadesPostagem_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property bairro:           string                       Index (IS_OPTN or IS_UNQL) read Fbairro write Setbairro stored bairro_Specified;
    property cep:              string                       Index (IS_OPTN or IS_UNQL) read Fcep write Setcep stored cep_Specified;
    property cidade:           string                       Index (IS_OPTN or IS_UNQL) read Fcidade write Setcidade stored cidade_Specified;
    property complemento2:     string                       Index (IS_OPTN or IS_UNQL) read Fcomplemento2 write Setcomplemento2 stored complemento2_Specified;
    property end_:             string                       Index (IS_OPTN or IS_UNQL) read Fend_ write Setend_ stored end__Specified;
    property uf:               string                       Index (IS_OPTN or IS_UNQL) read Fuf write Setuf stored uf_Specified;
    property unidadesPostagem: Array_Of_unidadePostagemERP  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FunidadesPostagem write SetunidadesPostagem stored unidadesPostagem_Specified;
  end;



  // ************************************************************************ //
  // XML       : parametroMaster, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  parametroMaster = class(TRemotable)
  private
    FprmCoParametro: Int64;
    FprmTxParametro: string;
    FprmTxParametro_Specified: boolean;
    FprmTxValor: string;
    FprmTxValor_Specified: boolean;
    procedure SetprmTxParametro(Index: Integer; const Astring: string);
    function  prmTxParametro_Specified(Index: Integer): boolean;
    procedure SetprmTxValor(Index: Integer; const Astring: string);
    function  prmTxValor_Specified(Index: Integer): boolean;
  published
    property prmCoParametro: Int64   Index (IS_UNQL) read FprmCoParametro write FprmCoParametro;
    property prmTxParametro: string  Index (IS_OPTN or IS_UNQL) read FprmTxParametro write SetprmTxParametro stored prmTxParametro_Specified;
    property prmTxValor:     string  Index (IS_OPTN or IS_UNQL) read FprmTxValor write SetprmTxValor stored prmTxValor_Specified;
  end;



  // ************************************************************************ //
  // XML       : unidadePostagemERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  unidadePostagemERP = class(TRemotable)
  private
    FdiretoriaRegional: string;
    FdiretoriaRegional_Specified: boolean;
    Fendereco: enderecoERP;
    Fendereco_Specified: boolean;
    Fid: string;
    Fid_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    Fstatus: string;
    Fstatus_Specified: boolean;
    Ftipo: string;
    Ftipo_Specified: boolean;
    procedure SetdiretoriaRegional(Index: Integer; const Astring: string);
    function  diretoriaRegional_Specified(Index: Integer): boolean;
    procedure Setendereco(Index: Integer; const AenderecoERP: enderecoERP);
    function  endereco_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function  id_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const Astring: string);
    function  status_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const Astring: string);
    function  tipo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property diretoriaRegional: string       Index (IS_OPTN or IS_UNQL) read FdiretoriaRegional write SetdiretoriaRegional stored diretoriaRegional_Specified;
    property endereco:          enderecoERP  Index (IS_OPTN or IS_UNQL) read Fendereco write Setendereco stored endereco_Specified;
    property id:                string       Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property nome:              string       Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property status:            string       Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
    property tipo:              string       Index (IS_OPTN or IS_UNQL) read Ftipo write Settipo stored tipo_Specified;
  end;



  // ************************************************************************ //
  // XML       : contratoERPPK, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  contratoERPPK = class(TRemotable)
  private
    Fdiretoria: Int64;
    Fnumero: string;
    Fnumero_Specified: boolean;
    procedure Setnumero(Index: Integer; const Astring: string);
    function  numero_Specified(Index: Integer): boolean;
  published
    property diretoria: Int64   Index (IS_UNQL) read Fdiretoria write Fdiretoria;
    property numero:    string  Index (IS_OPTN or IS_UNQL) read Fnumero write Setnumero stored numero_Specified;
  end;



  // ************************************************************************ //
  // XML       : SQLException, global, <element>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // Info      : Fault
  // Base Types: SQLException
  // ************************************************************************ //
  SQLException = class(ERemotableException)
  private
    FerrorCode: Integer;
    FerrorCode_Specified: boolean;
    FsQLState: string;
    FsQLState_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure SeterrorCode(Index: Integer; const AInteger: Integer);
    function  errorCode_Specified(Index: Integer): boolean;
    procedure SetsQLState(Index: Integer; const Astring: string);
    function  sQLState_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property errorCode: Integer  Index (IS_OPTN or IS_UNQL) read FerrorCode write SeterrorCode stored errorCode_Specified;
    property sQLState:  string   Index (IS_OPTN or IS_UNQL) read FsQLState write SetsQLState stored sQLState_Specified;
    property message_:  string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <element>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // Info      : Fault
  // Base Types: Exception
  // ************************************************************************ //
  Exception = class(ERemotableException)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : ErroMontagemRelatorio, global, <element>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // Info      : Fault
  // Base Types: ErroMontagemRelatorio
  // ************************************************************************ //
  ErroMontagemRelatorio = class(ERemotableException)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : SigepClienteException, alias
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // Serializtn: [xoSimpleTypeWrapper]
  // Info      : Fault
  // ************************************************************************ //
  SigepClienteException = class(ERemotableException)
  private
    FValue: string;
  published
    property Value: string  read FValue write FValue;
  end;



  // ************************************************************************ //
  // XML       : AutenticacaoException, alias
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // Serializtn: [xoSimpleTypeWrapper]
  // Info      : Fault
  // ************************************************************************ //
  AutenticacaoException = class(ERemotableException)
  private
    FValue: string;
  published
    property Value: string  read FValue write FValue;
  end;

  buscaServicosAdicionaisAtivosResponse = array of servicoAdicionalXML;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : servicoAdicionalXML, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  servicoAdicionalXML = class(TRemotable)
  private
    Fcategoria: string;
    Fcategoria_Specified: boolean;
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fdescricao: string;
    Fdescricao_Specified: boolean;
    FmaximoValorDeclarado: Double;
    FmaximoValorDeclarado_Specified: boolean;
    FminimoValorDeclarado: Double;
    FminimoValorDeclarado_Specified: boolean;
    Fsigla: string;
    Fsigla_Specified: boolean;
    procedure Setcategoria(Index: Integer; const Astring: string);
    function  categoria_Specified(Index: Integer): boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setdescricao(Index: Integer; const Astring: string);
    function  descricao_Specified(Index: Integer): boolean;
    procedure SetmaximoValorDeclarado(Index: Integer; const ADouble: Double);
    function  maximoValorDeclarado_Specified(Index: Integer): boolean;
    procedure SetminimoValorDeclarado(Index: Integer; const ADouble: Double);
    function  minimoValorDeclarado_Specified(Index: Integer): boolean;
    procedure Setsigla(Index: Integer; const Astring: string);
    function  sigla_Specified(Index: Integer): boolean;
  published
    property categoria:            string  Index (IS_OPTN or IS_UNQL) read Fcategoria write Setcategoria stored categoria_Specified;
    property codigo:               string  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property descricao:            string  Index (IS_OPTN or IS_UNQL) read Fdescricao write Setdescricao stored descricao_Specified;
    property maximoValorDeclarado: Double  Index (IS_OPTN or IS_UNQL) read FmaximoValorDeclarado write SetmaximoValorDeclarado stored maximoValorDeclarado_Specified;
    property minimoValorDeclarado: Double  Index (IS_OPTN or IS_UNQL) read FminimoValorDeclarado write SetminimoValorDeclarado stored minimoValorDeclarado_Specified;
    property sigla:                string  Index (IS_OPTN or IS_UNQL) read Fsigla write Setsigla stored sigla_Specified;
  end;



  // ************************************************************************ //
  // XML       : servicoSigep, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  servicoSigep = class(TRemotable)
  private
    FcategoriaServico: categoriaServico;
    FcategoriaServico_Specified: boolean;
    Fchancela: chancelaMaster;
    Fchancela_Specified: boolean;
    Fdescricao: string;
    Fdescricao_Specified: boolean;
    FexigeDimensoes: Boolean;
    FexigeDimensoes_Specified: boolean;
    FexigeValorCobrar: Boolean;
    FexigeValorCobrar_Specified: boolean;
    Fimitm: Int64;
    FpagamentoEntrega: string;
    FpagamentoEntrega_Specified: boolean;
    FremessaAgrupada: string;
    FremessaAgrupada_Specified: boolean;
    Frestricao: simNao;
    Frestricao_Specified: boolean;
    Fservico: Int64;
    FservicoERP: servicoERP;
    FservicoERP_Specified: boolean;
    FssiCoCodigoPostal: string;
    FssiCoCodigoPostal_Specified: boolean;
    procedure SetcategoriaServico(Index: Integer; const AcategoriaServico: categoriaServico);
    function  categoriaServico_Specified(Index: Integer): boolean;
    procedure Setchancela(Index: Integer; const AchancelaMaster: chancelaMaster);
    function  chancela_Specified(Index: Integer): boolean;
    procedure Setdescricao(Index: Integer; const Astring: string);
    function  descricao_Specified(Index: Integer): boolean;
    procedure SetexigeDimensoes(Index: Integer; const ABoolean: Boolean);
    function  exigeDimensoes_Specified(Index: Integer): boolean;
    procedure SetexigeValorCobrar(Index: Integer; const ABoolean: Boolean);
    function  exigeValorCobrar_Specified(Index: Integer): boolean;
    procedure SetpagamentoEntrega(Index: Integer; const Astring: string);
    function  pagamentoEntrega_Specified(Index: Integer): boolean;
    procedure SetremessaAgrupada(Index: Integer; const Astring: string);
    function  remessaAgrupada_Specified(Index: Integer): boolean;
    procedure Setrestricao(Index: Integer; const AsimNao: simNao);
    function  restricao_Specified(Index: Integer): boolean;
    procedure SetservicoERP(Index: Integer; const AservicoERP: servicoERP);
    function  servicoERP_Specified(Index: Integer): boolean;
    procedure SetssiCoCodigoPostal(Index: Integer; const Astring: string);
    function  ssiCoCodigoPostal_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property categoriaServico:  categoriaServico  Index (IS_OPTN or IS_UNQL) read FcategoriaServico write SetcategoriaServico stored categoriaServico_Specified;
    property chancela:          chancelaMaster    Index (IS_OPTN or IS_UNQL) read Fchancela write Setchancela stored chancela_Specified;
    property descricao:         string            Index (IS_OPTN or IS_UNQL) read Fdescricao write Setdescricao stored descricao_Specified;
    property exigeDimensoes:    Boolean           Index (IS_OPTN or IS_UNQL) read FexigeDimensoes write SetexigeDimensoes stored exigeDimensoes_Specified;
    property exigeValorCobrar:  Boolean           Index (IS_OPTN or IS_UNQL) read FexigeValorCobrar write SetexigeValorCobrar stored exigeValorCobrar_Specified;
    property imitm:             Int64             Index (IS_UNQL) read Fimitm write Fimitm;
    property pagamentoEntrega:  string            Index (IS_OPTN or IS_UNQL) read FpagamentoEntrega write SetpagamentoEntrega stored pagamentoEntrega_Specified;
    property remessaAgrupada:   string            Index (IS_OPTN or IS_UNQL) read FremessaAgrupada write SetremessaAgrupada stored remessaAgrupada_Specified;
    property restricao:         simNao            Index (IS_OPTN or IS_UNQL) read Frestricao write Setrestricao stored restricao_Specified;
    property servico:           Int64             Index (IS_UNQL) read Fservico write Fservico;
    property servicoERP:        servicoERP        Index (IS_OPTN or IS_UNQL) read FservicoERP write SetservicoERP stored servicoERP_Specified;
    property ssiCoCodigoPostal: string            Index (IS_OPTN or IS_UNQL) read FssiCoCodigoPostal write SetssiCoCodigoPostal stored ssiCoCodigoPostal_Specified;
  end;

  Array_Of_unsignedShort = array of Word;       { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : objetoPostal, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  objetoPostal = class(TRemotable)
  private
    FcodigoEtiqueta: string;
    FcodigoEtiqueta_Specified: boolean;
    FdataAtualizacaoCliente: TXSDateTime;
    FdataAtualizacaoCliente_Specified: boolean;
    FdataBloqueioObjeto: TXSDateTime;
    FdataBloqueioObjeto_Specified: boolean;
    FdataCancelamentoEtiqueta: TXSDateTime;
    FdataCancelamentoEtiqueta_Specified: boolean;
    FdataInclusao: TXSDateTime;
    FdataInclusao_Specified: boolean;
    FobjetoPostalPK: objetoPostalPK;
    FobjetoPostalPK_Specified: boolean;
    FplpNu: Int64;
    FplpNu_Specified: boolean;
    FpreListaPostagem: preListaPostagem;
    FpreListaPostagem_Specified: boolean;
    FrestricaoAerea: simNao;
    FrestricaoAerea_Specified: boolean;
    FstatusBloqueio: string;
    FstatusBloqueio_Specified: boolean;
    FstatusEtiqueta: statusObjetoPostal;
    FstatusEtiqueta_Specified: boolean;
    procedure SetcodigoEtiqueta(Index: Integer; const Astring: string);
    function  codigoEtiqueta_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacaoCliente(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacaoCliente_Specified(Index: Integer): boolean;
    procedure SetdataBloqueioObjeto(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataBloqueioObjeto_Specified(Index: Integer): boolean;
    procedure SetdataCancelamentoEtiqueta(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataCancelamentoEtiqueta_Specified(Index: Integer): boolean;
    procedure SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataInclusao_Specified(Index: Integer): boolean;
    procedure SetobjetoPostalPK(Index: Integer; const AobjetoPostalPK: objetoPostalPK);
    function  objetoPostalPK_Specified(Index: Integer): boolean;
    procedure SetplpNu(Index: Integer; const AInt64: Int64);
    function  plpNu_Specified(Index: Integer): boolean;
    procedure SetpreListaPostagem(Index: Integer; const ApreListaPostagem: preListaPostagem);
    function  preListaPostagem_Specified(Index: Integer): boolean;
    procedure SetrestricaoAerea(Index: Integer; const AsimNao: simNao);
    function  restricaoAerea_Specified(Index: Integer): boolean;
    procedure SetstatusBloqueio(Index: Integer; const Astring: string);
    function  statusBloqueio_Specified(Index: Integer): boolean;
    procedure SetstatusEtiqueta(Index: Integer; const AstatusObjetoPostal: statusObjetoPostal);
    function  statusEtiqueta_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigoEtiqueta:           string              Index (IS_OPTN or IS_UNQL) read FcodigoEtiqueta write SetcodigoEtiqueta stored codigoEtiqueta_Specified;
    property dataAtualizacaoCliente:   TXSDateTime         Index (IS_OPTN or IS_UNQL) read FdataAtualizacaoCliente write SetdataAtualizacaoCliente stored dataAtualizacaoCliente_Specified;
    property dataBloqueioObjeto:       TXSDateTime         Index (IS_OPTN or IS_UNQL) read FdataBloqueioObjeto write SetdataBloqueioObjeto stored dataBloqueioObjeto_Specified;
    property dataCancelamentoEtiqueta: TXSDateTime         Index (IS_OPTN or IS_UNQL) read FdataCancelamentoEtiqueta write SetdataCancelamentoEtiqueta stored dataCancelamentoEtiqueta_Specified;
    property dataInclusao:             TXSDateTime         Index (IS_OPTN or IS_UNQL) read FdataInclusao write SetdataInclusao stored dataInclusao_Specified;
    property objetoPostalPK:           objetoPostalPK      Index (IS_OPTN or IS_UNQL) read FobjetoPostalPK write SetobjetoPostalPK stored objetoPostalPK_Specified;
    property plpNu:                    Int64               Index (IS_OPTN or IS_UNQL) read FplpNu write SetplpNu stored plpNu_Specified;
    property preListaPostagem:         preListaPostagem    Index (IS_OPTN or IS_UNQL) read FpreListaPostagem write SetpreListaPostagem stored preListaPostagem_Specified;
    property restricaoAerea:           simNao              Index (IS_OPTN or IS_UNQL) read FrestricaoAerea write SetrestricaoAerea stored restricaoAerea_Specified;
    property statusBloqueio:           string              Index (IS_OPTN or IS_UNQL) read FstatusBloqueio write SetstatusBloqueio stored statusBloqueio_Specified;
    property statusEtiqueta:           statusObjetoPostal  Index (IS_OPTN or IS_UNQL) read FstatusEtiqueta write SetstatusEtiqueta stored statusEtiqueta_Specified;
  end;



  // ************************************************************************ //
  // XML       : usuarioInstalacao, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  usuarioInstalacao = class(TRemotable)
  private
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    FdataInclusao: TXSDateTime;
    FdataInclusao_Specified: boolean;
    FdataSenha: TXSDateTime;
    FdataSenha_Specified: boolean;
    FgerenteMaster: gerenteConta;
    FgerenteMaster_Specified: boolean;
    FhashSenha: string;
    FhashSenha_Specified: boolean;
    Fid: Int64;
    Fid_Specified: boolean;
    Flogin: string;
    Flogin_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    Fparametros: Array_Of_parametroMaster;
    Fparametros_Specified: boolean;
    Fsenha: string;
    Fsenha_Specified: boolean;
    Fstatus: statusUsuario;
    Fstatus_Specified: boolean;
    Fvalidade: string;
    Fvalidade_Specified: boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataInclusao_Specified(Index: Integer): boolean;
    procedure SetdataSenha(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataSenha_Specified(Index: Integer): boolean;
    procedure SetgerenteMaster(Index: Integer; const AgerenteConta: gerenteConta);
    function  gerenteMaster_Specified(Index: Integer): boolean;
    procedure SethashSenha(Index: Integer; const Astring: string);
    function  hashSenha_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInt64: Int64);
    function  id_Specified(Index: Integer): boolean;
    procedure Setlogin(Index: Integer; const Astring: string);
    function  login_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure Setparametros(Index: Integer; const AArray_Of_parametroMaster: Array_Of_parametroMaster);
    function  parametros_Specified(Index: Integer): boolean;
    procedure Setsenha(Index: Integer; const Astring: string);
    function  senha_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const AstatusUsuario: statusUsuario);
    function  status_Specified(Index: Integer): boolean;
    procedure Setvalidade(Index: Integer; const Astring: string);
    function  validade_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property dataAtualizacao: TXSDateTime               Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property dataInclusao:    TXSDateTime               Index (IS_OPTN or IS_UNQL) read FdataInclusao write SetdataInclusao stored dataInclusao_Specified;
    property dataSenha:       TXSDateTime               Index (IS_OPTN or IS_UNQL) read FdataSenha write SetdataSenha stored dataSenha_Specified;
    property gerenteMaster:   gerenteConta              Index (IS_OPTN or IS_UNQL) read FgerenteMaster write SetgerenteMaster stored gerenteMaster_Specified;
    property hashSenha:       string                    Index (IS_OPTN or IS_UNQL) read FhashSenha write SethashSenha stored hashSenha_Specified;
    property id:              Int64                     Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property login:           string                    Index (IS_OPTN or IS_UNQL) read Flogin write Setlogin stored login_Specified;
    property nome:            string                    Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property parametros:      Array_Of_parametroMaster  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fparametros write Setparametros stored parametros_Specified;
    property senha:           string                    Index (IS_OPTN or IS_UNQL) read Fsenha write Setsenha stored senha_Specified;
    property status:          statusUsuario             Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
    property validade:        string                    Index (IS_OPTN or IS_UNQL) read Fvalidade write Setvalidade stored validade_Specified;
  end;



  // ************************************************************************ //
  // XML       : vigenciaERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  vigenciaERP = class(TRemotable)
  private
    FdataFinal: TXSDateTime;
    FdataFinal_Specified: boolean;
    FdataInicial: TXSDateTime;
    FdataInicial_Specified: boolean;
    FdatajFim: Integer;
    FdatajFim_Specified: boolean;
    FdatajIni: Integer;
    FdatajIni_Specified: boolean;
    Fid: Int64;
    Fid_Specified: boolean;
    procedure SetdataFinal(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataFinal_Specified(Index: Integer): boolean;
    procedure SetdataInicial(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataInicial_Specified(Index: Integer): boolean;
    procedure SetdatajFim(Index: Integer; const AInteger: Integer);
    function  datajFim_Specified(Index: Integer): boolean;
    procedure SetdatajIni(Index: Integer; const AInteger: Integer);
    function  datajIni_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInt64: Int64);
    function  id_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property dataFinal:   TXSDateTime  Index (IS_OPTN or IS_UNQL) read FdataFinal write SetdataFinal stored dataFinal_Specified;
    property dataInicial: TXSDateTime  Index (IS_OPTN or IS_UNQL) read FdataInicial write SetdataInicial stored dataInicial_Specified;
    property datajFim:    Integer      Index (IS_OPTN or IS_UNQL) read FdatajFim write SetdatajFim stored datajFim_Specified;
    property datajIni:    Integer      Index (IS_OPTN or IS_UNQL) read FdatajIni write SetdatajIni stored datajIni_Specified;
    property id:          Int64        Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : servicoAdicionalERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  servicoAdicionalERP = class(TRemotable)
  private
    Fcategoria: string;
    Fcategoria_Specified: boolean;
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    FdatajAtualizacao: Integer;
    FdatajAtualizacao_Specified: boolean;
    Fdescricao: string;
    Fdescricao_Specified: boolean;
    FhorajAtualizacao: Integer;
    FhorajAtualizacao_Specified: boolean;
    Fid: Integer;
    Fid_Specified: boolean;
    Fsigla: string;
    Fsigla_Specified: boolean;
    FvalorDeclarado: valorDeclarado;
    FvalorDeclarado_Specified: boolean;
    procedure Setcategoria(Index: Integer; const Astring: string);
    function  categoria_Specified(Index: Integer): boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
    function  datajAtualizacao_Specified(Index: Integer): boolean;
    procedure Setdescricao(Index: Integer; const Astring: string);
    function  descricao_Specified(Index: Integer): boolean;
    procedure SethorajAtualizacao(Index: Integer; const AInteger: Integer);
    function  horajAtualizacao_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInteger: Integer);
    function  id_Specified(Index: Integer): boolean;
    procedure Setsigla(Index: Integer; const Astring: string);
    function  sigla_Specified(Index: Integer): boolean;
    procedure SetvalorDeclarado(Index: Integer; const AvalorDeclarado: valorDeclarado);
    function  valorDeclarado_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property categoria:        string          Index (IS_OPTN or IS_UNQL) read Fcategoria write Setcategoria stored categoria_Specified;
    property codigo:           string          Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property dataAtualizacao:  TXSDateTime     Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property datajAtualizacao: Integer         Index (IS_OPTN or IS_UNQL) read FdatajAtualizacao write SetdatajAtualizacao stored datajAtualizacao_Specified;
    property descricao:        string          Index (IS_OPTN or IS_UNQL) read Fdescricao write Setdescricao stored descricao_Specified;
    property horajAtualizacao: Integer         Index (IS_OPTN or IS_UNQL) read FhorajAtualizacao write SethorajAtualizacao stored horajAtualizacao_Specified;
    property id:               Integer         Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property sigla:            string          Index (IS_OPTN or IS_UNQL) read Fsigla write Setsigla stored sigla_Specified;
    property valorDeclarado:   valorDeclarado  Index (IS_OPTN or IS_UNQL) read FvalorDeclarado write SetvalorDeclarado stored valorDeclarado_Specified;
  end;



  // ************************************************************************ //
  // XML       : clienteERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  clienteERP = class(TRemotable)
  private
    Fcnpj: string;
    Fcnpj_Specified: boolean;
    Fcontratos: Array_Of_contratoERP;
    Fcontratos_Specified: boolean;
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    FdatajAtualizacao: Integer;
    FdatajAtualizacao_Specified: boolean;
    FdescricaoStatusCliente: string;
    FdescricaoStatusCliente_Specified: boolean;
    FgerenteConta: Array_Of_gerenteConta;
    FgerenteConta_Specified: boolean;
    FhorajAtualizacao: Int64;
    FhorajAtualizacao_Specified: boolean;
    Fid: Int64;
    FinscricaoEstadual: string;
    FinscricaoEstadual_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    FstatusCodigo: string;
    FstatusCodigo_Specified: boolean;
    procedure Setcnpj(Index: Integer; const Astring: string);
    function  cnpj_Specified(Index: Integer): boolean;
    procedure Setcontratos(Index: Integer; const AArray_Of_contratoERP: Array_Of_contratoERP);
    function  contratos_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
    function  datajAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdescricaoStatusCliente(Index: Integer; const Astring: string);
    function  descricaoStatusCliente_Specified(Index: Integer): boolean;
    procedure SetgerenteConta(Index: Integer; const AArray_Of_gerenteConta: Array_Of_gerenteConta);
    function  gerenteConta_Specified(Index: Integer): boolean;
    procedure SethorajAtualizacao(Index: Integer; const AInt64: Int64);
    function  horajAtualizacao_Specified(Index: Integer): boolean;
    procedure SetinscricaoEstadual(Index: Integer; const Astring: string);
    function  inscricaoEstadual_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure SetstatusCodigo(Index: Integer; const Astring: string);
    function  statusCodigo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cnpj:                   string                 Index (IS_OPTN or IS_UNQL) read Fcnpj write Setcnpj stored cnpj_Specified;
    property contratos:              Array_Of_contratoERP   Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fcontratos write Setcontratos stored contratos_Specified;
    property dataAtualizacao:        TXSDateTime            Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property datajAtualizacao:       Integer                Index (IS_OPTN or IS_UNQL) read FdatajAtualizacao write SetdatajAtualizacao stored datajAtualizacao_Specified;
    property descricaoStatusCliente: string                 Index (IS_OPTN or IS_UNQL) read FdescricaoStatusCliente write SetdescricaoStatusCliente stored descricaoStatusCliente_Specified;
    property gerenteConta:           Array_Of_gerenteConta  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgerenteConta write SetgerenteConta stored gerenteConta_Specified;
    property horajAtualizacao:       Int64                  Index (IS_OPTN or IS_UNQL) read FhorajAtualizacao write SethorajAtualizacao stored horajAtualizacao_Specified;
    property id:                     Int64                  Index (IS_UNQL) read Fid write Fid;
    property inscricaoEstadual:      string                 Index (IS_OPTN or IS_UNQL) read FinscricaoEstadual write SetinscricaoEstadual stored inscricaoEstadual_Specified;
    property nome:                   string                 Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property statusCodigo:           string                 Index (IS_OPTN or IS_UNQL) read FstatusCodigo write SetstatusCodigo stored statusCodigo_Specified;
  end;



  // ************************************************************************ //
  // XML       : servicoERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  servicoERP = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    FdatajAtualizacao: Integer;
    FdatajAtualizacao_Specified: boolean;
    Fdescricao: string;
    Fdescricao_Specified: boolean;
    FhorajAtualizacao: Integer;
    FhorajAtualizacao_Specified: boolean;
    Fid: Int64;
    FservicoSigep: servicoSigep;
    FservicoSigep_Specified: boolean;
    FservicosAdicionais: Array_Of_servicoAdicionalERP;
    FservicosAdicionais_Specified: boolean;
    Ftipo1Codigo: string;
    Ftipo1Codigo_Specified: boolean;
    Ftipo1Descricao: string;
    Ftipo1Descricao_Specified: boolean;
    Ftipo2Codigo: string;
    Ftipo2Codigo_Specified: boolean;
    Ftipo2Descricao: string;
    Ftipo2Descricao_Specified: boolean;
    Fvigencia: vigenciaERP;
    Fvigencia_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
    function  datajAtualizacao_Specified(Index: Integer): boolean;
    procedure Setdescricao(Index: Integer; const Astring: string);
    function  descricao_Specified(Index: Integer): boolean;
    procedure SethorajAtualizacao(Index: Integer; const AInteger: Integer);
    function  horajAtualizacao_Specified(Index: Integer): boolean;
    procedure SetservicoSigep(Index: Integer; const AservicoSigep: servicoSigep);
    function  servicoSigep_Specified(Index: Integer): boolean;
    procedure SetservicosAdicionais(Index: Integer; const AArray_Of_servicoAdicionalERP: Array_Of_servicoAdicionalERP);
    function  servicosAdicionais_Specified(Index: Integer): boolean;
    procedure Settipo1Codigo(Index: Integer; const Astring: string);
    function  tipo1Codigo_Specified(Index: Integer): boolean;
    procedure Settipo1Descricao(Index: Integer; const Astring: string);
    function  tipo1Descricao_Specified(Index: Integer): boolean;
    procedure Settipo2Codigo(Index: Integer; const Astring: string);
    function  tipo2Codigo_Specified(Index: Integer): boolean;
    procedure Settipo2Descricao(Index: Integer; const Astring: string);
    function  tipo2Descricao_Specified(Index: Integer): boolean;
    procedure Setvigencia(Index: Integer; const AvigenciaERP: vigenciaERP);
    function  vigencia_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigo:             string                        Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property dataAtualizacao:    TXSDateTime                   Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property datajAtualizacao:   Integer                       Index (IS_OPTN or IS_UNQL) read FdatajAtualizacao write SetdatajAtualizacao stored datajAtualizacao_Specified;
    property descricao:          string                        Index (IS_OPTN or IS_UNQL) read Fdescricao write Setdescricao stored descricao_Specified;
    property horajAtualizacao:   Integer                       Index (IS_OPTN or IS_UNQL) read FhorajAtualizacao write SethorajAtualizacao stored horajAtualizacao_Specified;
    property id:                 Int64                         Index (IS_UNQL) read Fid write Fid;
    property servicoSigep:       servicoSigep                  Index (IS_OPTN or IS_UNQL) read FservicoSigep write SetservicoSigep stored servicoSigep_Specified;
    property servicosAdicionais: Array_Of_servicoAdicionalERP  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FservicosAdicionais write SetservicosAdicionais stored servicosAdicionais_Specified;
    property tipo1Codigo:        string                        Index (IS_OPTN or IS_UNQL) read Ftipo1Codigo write Settipo1Codigo stored tipo1Codigo_Specified;
    property tipo1Descricao:     string                        Index (IS_OPTN or IS_UNQL) read Ftipo1Descricao write Settipo1Descricao stored tipo1Descricao_Specified;
    property tipo2Codigo:        string                        Index (IS_OPTN or IS_UNQL) read Ftipo2Codigo write Settipo2Codigo stored tipo2Codigo_Specified;
    property tipo2Descricao:     string                        Index (IS_OPTN or IS_UNQL) read Ftipo2Descricao write Settipo2Descricao stored tipo2Descricao_Specified;
    property vigencia:           vigenciaERP                   Index (IS_OPTN or IS_UNQL) read Fvigencia write Setvigencia stored vigencia_Specified;
  end;



  // ************************************************************************ //
  // XML       : contratoERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  contratoERP = class(TRemotable)
  private
    FcartoesPostagem: Array_Of_cartaoPostagemERP;
    FcartoesPostagem_Specified: boolean;
    Fcliente: clienteERP;
    Fcliente_Specified: boolean;
    FcodigoCliente: Int64;
    FcodigoDiretoria: string;
    FcodigoDiretoria_Specified: boolean;
    FcontratoPK: contratoERPPK;
    FcontratoPK_Specified: boolean;
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    FdataAtualizacaoDDMMYYYY: string;
    FdataAtualizacaoDDMMYYYY_Specified: boolean;
    FdataVigenciaFim: TXSDateTime;
    FdataVigenciaFim_Specified: boolean;
    FdataVigenciaFimDDMMYYYY: string;
    FdataVigenciaFimDDMMYYYY_Specified: boolean;
    FdataVigenciaInicio: TXSDateTime;
    FdataVigenciaInicio_Specified: boolean;
    FdataVigenciaInicioDDMMYYYY: string;
    FdataVigenciaInicioDDMMYYYY_Specified: boolean;
    FdatajAtualizacao: Integer;
    FdatajAtualizacao_Specified: boolean;
    FdatajVigenciaFim: Integer;
    FdatajVigenciaFim_Specified: boolean;
    FdatajVigenciaInicio: Integer;
    FdatajVigenciaInicio_Specified: boolean;
    FdescricaoDiretoriaRegional: string;
    FdescricaoDiretoriaRegional_Specified: boolean;
    FdescricaoStatus: string;
    FdescricaoStatus_Specified: boolean;
    FdiretoriaRegional: unidadePostagemERP;
    FdiretoriaRegional_Specified: boolean;
    FhorajAtualizacao: Integer;
    FhorajAtualizacao_Specified: boolean;
    FstatusCodigo: string;
    FstatusCodigo_Specified: boolean;
    procedure SetcartoesPostagem(Index: Integer; const AArray_Of_cartaoPostagemERP: Array_Of_cartaoPostagemERP);
    function  cartoesPostagem_Specified(Index: Integer): boolean;
    procedure Setcliente(Index: Integer; const AclienteERP: clienteERP);
    function  cliente_Specified(Index: Integer): boolean;
    procedure SetcodigoDiretoria(Index: Integer; const Astring: string);
    function  codigoDiretoria_Specified(Index: Integer): boolean;
    procedure SetcontratoPK(Index: Integer; const AcontratoERPPK: contratoERPPK);
    function  contratoPK_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacaoDDMMYYYY(Index: Integer; const Astring: string);
    function  dataAtualizacaoDDMMYYYY_Specified(Index: Integer): boolean;
    procedure SetdataVigenciaFim(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataVigenciaFim_Specified(Index: Integer): boolean;
    procedure SetdataVigenciaFimDDMMYYYY(Index: Integer; const Astring: string);
    function  dataVigenciaFimDDMMYYYY_Specified(Index: Integer): boolean;
    procedure SetdataVigenciaInicio(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataVigenciaInicio_Specified(Index: Integer): boolean;
    procedure SetdataVigenciaInicioDDMMYYYY(Index: Integer; const Astring: string);
    function  dataVigenciaInicioDDMMYYYY_Specified(Index: Integer): boolean;
    procedure SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
    function  datajAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdatajVigenciaFim(Index: Integer; const AInteger: Integer);
    function  datajVigenciaFim_Specified(Index: Integer): boolean;
    procedure SetdatajVigenciaInicio(Index: Integer; const AInteger: Integer);
    function  datajVigenciaInicio_Specified(Index: Integer): boolean;
    procedure SetdescricaoDiretoriaRegional(Index: Integer; const Astring: string);
    function  descricaoDiretoriaRegional_Specified(Index: Integer): boolean;
    procedure SetdescricaoStatus(Index: Integer; const Astring: string);
    function  descricaoStatus_Specified(Index: Integer): boolean;
    procedure SetdiretoriaRegional(Index: Integer; const AunidadePostagemERP: unidadePostagemERP);
    function  diretoriaRegional_Specified(Index: Integer): boolean;
    procedure SethorajAtualizacao(Index: Integer; const AInteger: Integer);
    function  horajAtualizacao_Specified(Index: Integer): boolean;
    procedure SetstatusCodigo(Index: Integer; const Astring: string);
    function  statusCodigo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cartoesPostagem:            Array_Of_cartaoPostagemERP  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcartoesPostagem write SetcartoesPostagem stored cartoesPostagem_Specified;
    property cliente:                    clienteERP                  Index (IS_OPTN or IS_UNQL) read Fcliente write Setcliente stored cliente_Specified;
    property codigoCliente:              Int64                       Index (IS_UNQL) read FcodigoCliente write FcodigoCliente;
    property codigoDiretoria:            string                      Index (IS_OPTN or IS_UNQL) read FcodigoDiretoria write SetcodigoDiretoria stored codigoDiretoria_Specified;
    property contratoPK:                 contratoERPPK               Index (IS_OPTN or IS_UNQL) read FcontratoPK write SetcontratoPK stored contratoPK_Specified;
    property dataAtualizacao:            TXSDateTime                 Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property dataAtualizacaoDDMMYYYY:    string                      Index (IS_OPTN or IS_UNQL) read FdataAtualizacaoDDMMYYYY write SetdataAtualizacaoDDMMYYYY stored dataAtualizacaoDDMMYYYY_Specified;
    property dataVigenciaFim:            TXSDateTime                 Index (IS_OPTN or IS_UNQL) read FdataVigenciaFim write SetdataVigenciaFim stored dataVigenciaFim_Specified;
    property dataVigenciaFimDDMMYYYY:    string                      Index (IS_OPTN or IS_UNQL) read FdataVigenciaFimDDMMYYYY write SetdataVigenciaFimDDMMYYYY stored dataVigenciaFimDDMMYYYY_Specified;
    property dataVigenciaInicio:         TXSDateTime                 Index (IS_OPTN or IS_UNQL) read FdataVigenciaInicio write SetdataVigenciaInicio stored dataVigenciaInicio_Specified;
    property dataVigenciaInicioDDMMYYYY: string                      Index (IS_OPTN or IS_UNQL) read FdataVigenciaInicioDDMMYYYY write SetdataVigenciaInicioDDMMYYYY stored dataVigenciaInicioDDMMYYYY_Specified;
    property datajAtualizacao:           Integer                     Index (IS_OPTN or IS_UNQL) read FdatajAtualizacao write SetdatajAtualizacao stored datajAtualizacao_Specified;
    property datajVigenciaFim:           Integer                     Index (IS_OPTN or IS_UNQL) read FdatajVigenciaFim write SetdatajVigenciaFim stored datajVigenciaFim_Specified;
    property datajVigenciaInicio:        Integer                     Index (IS_OPTN or IS_UNQL) read FdatajVigenciaInicio write SetdatajVigenciaInicio stored datajVigenciaInicio_Specified;
    property descricaoDiretoriaRegional: string                      Index (IS_OPTN or IS_UNQL) read FdescricaoDiretoriaRegional write SetdescricaoDiretoriaRegional stored descricaoDiretoriaRegional_Specified;
    property descricaoStatus:            string                      Index (IS_OPTN or IS_UNQL) read FdescricaoStatus write SetdescricaoStatus stored descricaoStatus_Specified;
    property diretoriaRegional:          unidadePostagemERP          Index (IS_OPTN or IS_UNQL) read FdiretoriaRegional write SetdiretoriaRegional stored diretoriaRegional_Specified;
    property horajAtualizacao:           Integer                     Index (IS_OPTN or IS_UNQL) read FhorajAtualizacao write SethorajAtualizacao stored horajAtualizacao_Specified;
    property statusCodigo:               string                      Index (IS_OPTN or IS_UNQL) read FstatusCodigo write SetstatusCodigo stored statusCodigo_Specified;
  end;



  // ************************************************************************ //
  // XML       : gerenteConta, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  gerenteConta = class(TRemotable)
  private
    FclientesVisiveis: Array_Of_clienteERP;
    FclientesVisiveis_Specified: boolean;
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    FdataInclusao: TXSDateTime;
    FdataInclusao_Specified: boolean;
    FdataSenha: TXSDateTime;
    FdataSenha_Specified: boolean;
    Flogin: string;
    Flogin_Specified: boolean;
    Fmatricula: string;
    Fmatricula_Specified: boolean;
    Fsenha: string;
    Fsenha_Specified: boolean;
    Fstatus: statusGerente;
    Fstatus_Specified: boolean;
    FtipoGerente: tipoGerente;
    FtipoGerente_Specified: boolean;
    FusuariosInstalacao: Array_Of_usuarioInstalacao;
    FusuariosInstalacao_Specified: boolean;
    Fvalidade: string;
    Fvalidade_Specified: boolean;
    procedure SetclientesVisiveis(Index: Integer; const AArray_Of_clienteERP: Array_Of_clienteERP);
    function  clientesVisiveis_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataInclusao_Specified(Index: Integer): boolean;
    procedure SetdataSenha(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataSenha_Specified(Index: Integer): boolean;
    procedure Setlogin(Index: Integer; const Astring: string);
    function  login_Specified(Index: Integer): boolean;
    procedure Setmatricula(Index: Integer; const Astring: string);
    function  matricula_Specified(Index: Integer): boolean;
    procedure Setsenha(Index: Integer; const Astring: string);
    function  senha_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const AstatusGerente: statusGerente);
    function  status_Specified(Index: Integer): boolean;
    procedure SettipoGerente(Index: Integer; const AtipoGerente: tipoGerente);
    function  tipoGerente_Specified(Index: Integer): boolean;
    procedure SetusuariosInstalacao(Index: Integer; const AArray_Of_usuarioInstalacao: Array_Of_usuarioInstalacao);
    function  usuariosInstalacao_Specified(Index: Integer): boolean;
    procedure Setvalidade(Index: Integer; const Astring: string);
    function  validade_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property clientesVisiveis:   Array_Of_clienteERP         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FclientesVisiveis write SetclientesVisiveis stored clientesVisiveis_Specified;
    property dataAtualizacao:    TXSDateTime                 Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property dataInclusao:       TXSDateTime                 Index (IS_OPTN or IS_UNQL) read FdataInclusao write SetdataInclusao stored dataInclusao_Specified;
    property dataSenha:          TXSDateTime                 Index (IS_OPTN or IS_UNQL) read FdataSenha write SetdataSenha stored dataSenha_Specified;
    property login:              string                      Index (IS_OPTN or IS_UNQL) read Flogin write Setlogin stored login_Specified;
    property matricula:          string                      Index (IS_OPTN or IS_UNQL) read Fmatricula write Setmatricula stored matricula_Specified;
    property senha:              string                      Index (IS_OPTN or IS_UNQL) read Fsenha write Setsenha stored senha_Specified;
    property status:             statusGerente               Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
    property tipoGerente:        tipoGerente                 Index (IS_OPTN or IS_UNQL) read FtipoGerente write SettipoGerente stored tipoGerente_Specified;
    property usuariosInstalacao: Array_Of_usuarioInstalacao  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FusuariosInstalacao write SetusuariosInstalacao stored usuariosInstalacao_Specified;
    property validade:           string                      Index (IS_OPTN or IS_UNQL) read Fvalidade write Setvalidade stored validade_Specified;
  end;



  // ************************************************************************ //
  // XML       : objetoPostalPK, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  objetoPostalPK = class(TRemotable)
  private
    FcodigoEtiqueta: string;
    FcodigoEtiqueta_Specified: boolean;
    FplpNu: Int64;
    procedure SetcodigoEtiqueta(Index: Integer; const Astring: string);
    function  codigoEtiqueta_Specified(Index: Integer): boolean;
  published
    property codigoEtiqueta: string  Index (IS_OPTN or IS_UNQL) read FcodigoEtiqueta write SetcodigoEtiqueta stored codigoEtiqueta_Specified;
    property plpNu:          Int64   Index (IS_UNQL) read FplpNu write FplpNu;
  end;



  // ************************************************************************ //
  // XML       : preListaPostagem, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  preListaPostagem = class(TRemotable)
  private
    FcartaoPostagem: cartaoPostagemERP;
    FcartaoPostagem_Specified: boolean;
    FconteudoProibido: simNao;
    FconteudoProibido_Specified: boolean;
    FdataAtualizacaoCliente: TXSDateTime;
    FdataAtualizacaoCliente_Specified: boolean;
    FdataAtualizacaoSara: TXSDateTime;
    FdataAtualizacaoSara_Specified: boolean;
    FdataFechamento: TXSDateTime;
    FdataFechamento_Specified: boolean;
    FdataPostagem: TXSDateTime;
    FdataPostagem_Specified: boolean;
    FdataPostagemSara: TXSDateTime;
    FdataPostagemSara_Specified: boolean;
    FobjetosPostais: VerificaSeTodosObjetosCancelados;
    FobjetosPostais_Specified: boolean;
    FplpCliente: Int64;
    FplpNu: Int64;
    FplpXml: Array_Of_unsignedShort;
    FplpXml_Specified: boolean;
    FplpXmlRetorno: Array_Of_unsignedShort;
    FplpXmlRetorno_Specified: boolean;
    Fstatus: statusPlp;
    Fstatus_Specified: boolean;
    procedure SetcartaoPostagem(Index: Integer; const AcartaoPostagemERP: cartaoPostagemERP);
    function  cartaoPostagem_Specified(Index: Integer): boolean;
    procedure SetconteudoProibido(Index: Integer; const AsimNao: simNao);
    function  conteudoProibido_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacaoCliente(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacaoCliente_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacaoSara(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacaoSara_Specified(Index: Integer): boolean;
    procedure SetdataFechamento(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataFechamento_Specified(Index: Integer): boolean;
    procedure SetdataPostagem(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataPostagem_Specified(Index: Integer): boolean;
    procedure SetdataPostagemSara(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataPostagemSara_Specified(Index: Integer): boolean;
    procedure SetobjetosPostais(Index: Integer; const AVerificaSeTodosObjetosCancelados: VerificaSeTodosObjetosCancelados);
    function  objetosPostais_Specified(Index: Integer): boolean;
    procedure SetplpXml(Index: Integer; const AArray_Of_unsignedShort: Array_Of_unsignedShort);
    function  plpXml_Specified(Index: Integer): boolean;
    procedure SetplpXmlRetorno(Index: Integer; const AArray_Of_unsignedShort: Array_Of_unsignedShort);
    function  plpXmlRetorno_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const AstatusPlp: statusPlp);
    function  status_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cartaoPostagem:         cartaoPostagemERP                 Index (IS_OPTN or IS_UNQL) read FcartaoPostagem write SetcartaoPostagem stored cartaoPostagem_Specified;
    property conteudoProibido:       simNao                            Index (IS_OPTN or IS_UNQL) read FconteudoProibido write SetconteudoProibido stored conteudoProibido_Specified;
    property dataAtualizacaoCliente: TXSDateTime                       Index (IS_OPTN or IS_UNQL) read FdataAtualizacaoCliente write SetdataAtualizacaoCliente stored dataAtualizacaoCliente_Specified;
    property dataAtualizacaoSara:    TXSDateTime                       Index (IS_OPTN or IS_UNQL) read FdataAtualizacaoSara write SetdataAtualizacaoSara stored dataAtualizacaoSara_Specified;
    property dataFechamento:         TXSDateTime                       Index (IS_OPTN or IS_UNQL) read FdataFechamento write SetdataFechamento stored dataFechamento_Specified;
    property dataPostagem:           TXSDateTime                       Index (IS_OPTN or IS_UNQL) read FdataPostagem write SetdataPostagem stored dataPostagem_Specified;
    property dataPostagemSara:       TXSDateTime                       Index (IS_OPTN or IS_UNQL) read FdataPostagemSara write SetdataPostagemSara stored dataPostagemSara_Specified;
    property objetosPostais:         VerificaSeTodosObjetosCancelados  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FobjetosPostais write SetobjetosPostais stored objetosPostais_Specified;
    property plpCliente:             Int64                             Index (IS_UNQL) read FplpCliente write FplpCliente;
    property plpNu:                  Int64                             Index (IS_UNQL) read FplpNu write FplpNu;
    property plpXml:                 Array_Of_unsignedShort            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FplpXml write SetplpXml stored plpXml_Specified;
    property plpXmlRetorno:          Array_Of_unsignedShort            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FplpXmlRetorno write SetplpXmlRetorno stored plpXmlRetorno_Specified;
    property status:                 statusPlp                         Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
  end;



  // ************************************************************************ //
  // XML       : objetoSimplificado, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  objetoSimplificado = class(TRemotable)
  private
    Fdatahora_cancelamento: string;
    Fdatahora_cancelamento_Specified: boolean;
    Fnumero_pedido: Integer;
    Fnumero_pedido_Specified: boolean;
    Fstatus_pedido: string;
    Fstatus_pedido_Specified: boolean;
    procedure Setdatahora_cancelamento(Index: Integer; const Astring: string);
    function  datahora_cancelamento_Specified(Index: Integer): boolean;
    procedure Setnumero_pedido(Index: Integer; const AInteger: Integer);
    function  numero_pedido_Specified(Index: Integer): boolean;
    procedure Setstatus_pedido(Index: Integer; const Astring: string);
    function  status_pedido_Specified(Index: Integer): boolean;
  published
    property datahora_cancelamento: string   Index (IS_OPTN or IS_UNQL) read Fdatahora_cancelamento write Setdatahora_cancelamento stored datahora_cancelamento_Specified;
    property numero_pedido:         Integer  Index (IS_OPTN or IS_UNQL) read Fnumero_pedido write Setnumero_pedido stored numero_pedido_Specified;
    property status_pedido:         string   Index (IS_OPTN or IS_UNQL) read Fstatus_pedido write Setstatus_pedido stored status_pedido_Specified;
  end;



  // ************************************************************************ //
  // XML       : pessoa, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  pessoa = class(TRemotable)
  private
    Fbairro: string;
    Fbairro_Specified: boolean;
    Fcep: string;
    Fcep_Specified: boolean;
    Fcidade: string;
    Fcidade_Specified: boolean;
    Fcomplemento: string;
    Fcomplemento_Specified: boolean;
    Fddd: string;
    Fddd_Specified: boolean;
    Femail: string;
    Femail_Specified: boolean;
    Flogradouro: string;
    Flogradouro_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    Fnumero: string;
    Fnumero_Specified: boolean;
    Freferencia: string;
    Freferencia_Specified: boolean;
    Ftelefone: string;
    Ftelefone_Specified: boolean;
    Fuf: string;
    Fuf_Specified: boolean;
    procedure Setbairro(Index: Integer; const Astring: string);
    function  bairro_Specified(Index: Integer): boolean;
    procedure Setcep(Index: Integer; const Astring: string);
    function  cep_Specified(Index: Integer): boolean;
    procedure Setcidade(Index: Integer; const Astring: string);
    function  cidade_Specified(Index: Integer): boolean;
    procedure Setcomplemento(Index: Integer; const Astring: string);
    function  complemento_Specified(Index: Integer): boolean;
    procedure Setddd(Index: Integer; const Astring: string);
    function  ddd_Specified(Index: Integer): boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function  email_Specified(Index: Integer): boolean;
    procedure Setlogradouro(Index: Integer; const Astring: string);
    function  logradouro_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure Setnumero(Index: Integer; const Astring: string);
    function  numero_Specified(Index: Integer): boolean;
    procedure Setreferencia(Index: Integer; const Astring: string);
    function  referencia_Specified(Index: Integer): boolean;
    procedure Settelefone(Index: Integer; const Astring: string);
    function  telefone_Specified(Index: Integer): boolean;
    procedure Setuf(Index: Integer; const Astring: string);
    function  uf_Specified(Index: Integer): boolean;
  published
    property bairro:      string  Index (IS_OPTN or IS_UNQL) read Fbairro write Setbairro stored bairro_Specified;
    property cep:         string  Index (IS_OPTN or IS_UNQL) read Fcep write Setcep stored cep_Specified;
    property cidade:      string  Index (IS_OPTN or IS_UNQL) read Fcidade write Setcidade stored cidade_Specified;
    property complemento: string  Index (IS_OPTN or IS_UNQL) read Fcomplemento write Setcomplemento stored complemento_Specified;
    property ddd:         string  Index (IS_OPTN or IS_UNQL) read Fddd write Setddd stored ddd_Specified;
    property email:       string  Index (IS_OPTN or IS_UNQL) read Femail write Setemail stored email_Specified;
    property logradouro:  string  Index (IS_OPTN or IS_UNQL) read Flogradouro write Setlogradouro stored logradouro_Specified;
    property nome:        string  Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property numero:      string  Index (IS_OPTN or IS_UNQL) read Fnumero write Setnumero stored numero_Specified;
    property referencia:  string  Index (IS_OPTN or IS_UNQL) read Freferencia write Setreferencia stored referencia_Specified;
    property telefone:    string  Index (IS_OPTN or IS_UNQL) read Ftelefone write Settelefone stored telefone_Specified;
    property uf:          string  Index (IS_OPTN or IS_UNQL) read Fuf write Setuf stored uf_Specified;
  end;

  pesquisarServicosAdicionaisResponse = array of servicoAdicionalTO;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : servicoAdicionalTO, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  servicoAdicionalTO = class(TRemotable)
  private
    Fcategoria: string;
    Fcategoria_Specified: boolean;
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fsigla: string;
    Fsigla_Specified: boolean;
    Ftipo: string;
    Ftipo_Specified: boolean;
    procedure Setcategoria(Index: Integer; const Astring: string);
    function  categoria_Specified(Index: Integer): boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setsigla(Index: Integer; const Astring: string);
    function  sigla_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const Astring: string);
    function  tipo_Specified(Index: Integer): boolean;
  published
    property categoria: string  Index (IS_OPTN or IS_UNQL) read Fcategoria write Setcategoria stored categoria_Specified;
    property codigo:    string  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property sigla:     string  Index (IS_OPTN or IS_UNQL) read Fsigla write Setsigla stored sigla_Specified;
    property tipo:      string  Index (IS_OPTN or IS_UNQL) read Ftipo write Settipo stored tipo_Specified;
  end;



  // ************************************************************************ //
  // XML       : retornoCancelamento, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  retornoCancelamento = class(TRemotable)
  private
    Fcod_erro: string;
    Fcod_erro_Specified: boolean;
    Fcodigo_administrativo: string;
    Fcodigo_administrativo_Specified: boolean;
    Fdata: string;
    Fdata_Specified: boolean;
    Fhora: string;
    Fhora_Specified: boolean;
    Fmsg_erro: string;
    Fmsg_erro_Specified: boolean;
    Fobjeto_postal: objetoSimplificado;
    Fobjeto_postal_Specified: boolean;
    procedure Setcod_erro(Index: Integer; const Astring: string);
    function  cod_erro_Specified(Index: Integer): boolean;
    procedure Setcodigo_administrativo(Index: Integer; const Astring: string);
    function  codigo_administrativo_Specified(Index: Integer): boolean;
    procedure Setdata(Index: Integer; const Astring: string);
    function  data_Specified(Index: Integer): boolean;
    procedure Sethora(Index: Integer; const Astring: string);
    function  hora_Specified(Index: Integer): boolean;
    procedure Setmsg_erro(Index: Integer; const Astring: string);
    function  msg_erro_Specified(Index: Integer): boolean;
    procedure Setobjeto_postal(Index: Integer; const AobjetoSimplificado: objetoSimplificado);
    function  objeto_postal_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cod_erro:              string              Index (IS_OPTN or IS_UNQL) read Fcod_erro write Setcod_erro stored cod_erro_Specified;
    property codigo_administrativo: string              Index (IS_OPTN or IS_UNQL) read Fcodigo_administrativo write Setcodigo_administrativo stored codigo_administrativo_Specified;
    property data:                  string              Index (IS_OPTN or IS_UNQL) read Fdata write Setdata stored data_Specified;
    property hora:                  string              Index (IS_OPTN or IS_UNQL) read Fhora write Sethora stored hora_Specified;
    property msg_erro:              string              Index (IS_OPTN or IS_UNQL) read Fmsg_erro write Setmsg_erro stored msg_erro_Specified;
    property objeto_postal:         objetoSimplificado  Index (IS_OPTN or IS_UNQL) read Fobjeto_postal write Setobjeto_postal stored objeto_postal_Specified;
  end;



  // ************************************************************************ //
  // XML       : SQLException, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  SQLException2 = class(TRemotable)
  private
    FerrorCode: Integer;
    FerrorCode_Specified: boolean;
    FsQLState: string;
    FsQLState_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure SeterrorCode(Index: Integer; const AInteger: Integer);
    function  errorCode_Specified(Index: Integer): boolean;
    procedure SetsQLState(Index: Integer; const Astring: string);
    function  sQLState_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property errorCode: Integer  Index (IS_OPTN or IS_UNQL) read FerrorCode write SeterrorCode stored errorCode_Specified;
    property sQLState:  string   Index (IS_OPTN or IS_UNQL) read FsQLState write SetsQLState stored sQLState_Specified;
    property message_:  string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  Exception2 = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : ErroMontagemRelatorio, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  ErroMontagemRelatorio2 = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : objeto, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  objeto = class(TRemotable)
  private
    Fdesc: string;
    Fdesc_Specified: boolean;
    Fentrega: string;
    Fentrega_Specified: boolean;
    Fid: string;
    Fid_Specified: boolean;
    Fitem: string;
    Fitem_Specified: boolean;
    Fnum: string;
    Fnum_Specified: boolean;
    procedure Setdesc(Index: Integer; const Astring: string);
    function  desc_Specified(Index: Integer): boolean;
    procedure Setentrega(Index: Integer; const Astring: string);
    function  entrega_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function  id_Specified(Index: Integer): boolean;
    procedure Setitem(Index: Integer; const Astring: string);
    function  item_Specified(Index: Integer): boolean;
    procedure Setnum(Index: Integer; const Astring: string);
    function  num_Specified(Index: Integer): boolean;
  published
    property desc:    string  Index (IS_OPTN or IS_UNQL) read Fdesc write Setdesc stored desc_Specified;
    property entrega: string  Index (IS_OPTN or IS_UNQL) read Fentrega write Setentrega stored entrega_Specified;
    property id:      string  Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property item:    string  Index (IS_OPTN or IS_UNQL) read Fitem write Setitem stored item_Specified;
    property num:     string  Index (IS_OPTN or IS_UNQL) read Fnum write Setnum stored num_Specified;
  end;

  buscaServicosResponse = array of servicoERP;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : cartaoPostagemERP, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  cartaoPostagemERP = class(TRemotable)
  private
    FcodigoAdministrativo: string;
    FcodigoAdministrativo_Specified: boolean;
    Fcontratos: Array_Of_contratoERP;
    Fcontratos_Specified: boolean;
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    FdataVigenciaFim: TXSDateTime;
    FdataVigenciaFim_Specified: boolean;
    FdataVigenciaInicio: TXSDateTime;
    FdataVigenciaInicio_Specified: boolean;
    FdatajAtualizacao: Integer;
    FdatajAtualizacao_Specified: boolean;
    FdatajVigenciaFim: Integer;
    FdatajVigenciaFim_Specified: boolean;
    FdatajVigenciaInicio: Integer;
    FdatajVigenciaInicio_Specified: boolean;
    FdescricaoStatusCartao: string;
    FdescricaoStatusCartao_Specified: boolean;
    FdescricaoUnidadePostagemGenerica: string;
    FdescricaoUnidadePostagemGenerica_Specified: boolean;
    FhorajAtualizacao: Integer;
    FhorajAtualizacao_Specified: boolean;
    Fnumero: string;
    Fnumero_Specified: boolean;
    Fservicos: buscaServicosResponse;
    Fservicos_Specified: boolean;
    FstatusCartaoPostagem: string;
    FstatusCartaoPostagem_Specified: boolean;
    FstatusCodigo: string;
    FstatusCodigo_Specified: boolean;
    FunidadeGenerica: string;
    FunidadeGenerica_Specified: boolean;
    FunidadesPostagem: Array_Of_unidadePostagemERP;
    FunidadesPostagem_Specified: boolean;
    procedure SetcodigoAdministrativo(Index: Integer; const Astring: string);
    function  codigoAdministrativo_Specified(Index: Integer): boolean;
    procedure Setcontratos(Index: Integer; const AArray_Of_contratoERP: Array_Of_contratoERP);
    function  contratos_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdataVigenciaFim(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataVigenciaFim_Specified(Index: Integer): boolean;
    procedure SetdataVigenciaInicio(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataVigenciaInicio_Specified(Index: Integer): boolean;
    procedure SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
    function  datajAtualizacao_Specified(Index: Integer): boolean;
    procedure SetdatajVigenciaFim(Index: Integer; const AInteger: Integer);
    function  datajVigenciaFim_Specified(Index: Integer): boolean;
    procedure SetdatajVigenciaInicio(Index: Integer; const AInteger: Integer);
    function  datajVigenciaInicio_Specified(Index: Integer): boolean;
    procedure SetdescricaoStatusCartao(Index: Integer; const Astring: string);
    function  descricaoStatusCartao_Specified(Index: Integer): boolean;
    procedure SetdescricaoUnidadePostagemGenerica(Index: Integer; const Astring: string);
    function  descricaoUnidadePostagemGenerica_Specified(Index: Integer): boolean;
    procedure SethorajAtualizacao(Index: Integer; const AInteger: Integer);
    function  horajAtualizacao_Specified(Index: Integer): boolean;
    procedure Setnumero(Index: Integer; const Astring: string);
    function  numero_Specified(Index: Integer): boolean;
    procedure Setservicos(Index: Integer; const AbuscaServicosResponse: buscaServicosResponse);
    function  servicos_Specified(Index: Integer): boolean;
    procedure SetstatusCartaoPostagem(Index: Integer; const Astring: string);
    function  statusCartaoPostagem_Specified(Index: Integer): boolean;
    procedure SetstatusCodigo(Index: Integer; const Astring: string);
    function  statusCodigo_Specified(Index: Integer): boolean;
    procedure SetunidadeGenerica(Index: Integer; const Astring: string);
    function  unidadeGenerica_Specified(Index: Integer): boolean;
    procedure SetunidadesPostagem(Index: Integer; const AArray_Of_unidadePostagemERP: Array_Of_unidadePostagemERP);
    function  unidadesPostagem_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigoAdministrativo:             string                       Index (IS_OPTN or IS_UNQL) read FcodigoAdministrativo write SetcodigoAdministrativo stored codigoAdministrativo_Specified;
    property contratos:                        Array_Of_contratoERP         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fcontratos write Setcontratos stored contratos_Specified;
    property dataAtualizacao:                  TXSDateTime                  Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property dataVigenciaFim:                  TXSDateTime                  Index (IS_OPTN or IS_UNQL) read FdataVigenciaFim write SetdataVigenciaFim stored dataVigenciaFim_Specified;
    property dataVigenciaInicio:               TXSDateTime                  Index (IS_OPTN or IS_UNQL) read FdataVigenciaInicio write SetdataVigenciaInicio stored dataVigenciaInicio_Specified;
    property datajAtualizacao:                 Integer                      Index (IS_OPTN or IS_UNQL) read FdatajAtualizacao write SetdatajAtualizacao stored datajAtualizacao_Specified;
    property datajVigenciaFim:                 Integer                      Index (IS_OPTN or IS_UNQL) read FdatajVigenciaFim write SetdatajVigenciaFim stored datajVigenciaFim_Specified;
    property datajVigenciaInicio:              Integer                      Index (IS_OPTN or IS_UNQL) read FdatajVigenciaInicio write SetdatajVigenciaInicio stored datajVigenciaInicio_Specified;
    property descricaoStatusCartao:            string                       Index (IS_OPTN or IS_UNQL) read FdescricaoStatusCartao write SetdescricaoStatusCartao stored descricaoStatusCartao_Specified;
    property descricaoUnidadePostagemGenerica: string                       Index (IS_OPTN or IS_UNQL) read FdescricaoUnidadePostagemGenerica write SetdescricaoUnidadePostagemGenerica stored descricaoUnidadePostagemGenerica_Specified;
    property horajAtualizacao:                 Integer                      Index (IS_OPTN or IS_UNQL) read FhorajAtualizacao write SethorajAtualizacao stored horajAtualizacao_Specified;
    property numero:                           string                       Index (IS_OPTN or IS_UNQL) read Fnumero write Setnumero stored numero_Specified;
    property servicos:                         buscaServicosResponse        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fservicos write Setservicos stored servicos_Specified;
    property statusCartaoPostagem:             string                       Index (IS_OPTN or IS_UNQL) read FstatusCartaoPostagem write SetstatusCartaoPostagem stored statusCartaoPostagem_Specified;
    property statusCodigo:                     string                       Index (IS_OPTN or IS_UNQL) read FstatusCodigo write SetstatusCodigo stored statusCodigo_Specified;
    property unidadeGenerica:                  string                       Index (IS_OPTN or IS_UNQL) read FunidadeGenerica write SetunidadeGenerica stored unidadeGenerica_Specified;
    property unidadesPostagem:                 Array_Of_unidadePostagemERP  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FunidadesPostagem write SetunidadesPostagem stored unidadesPostagem_Specified;
  end;



  // ************************************************************************ //
  // XML       : mensagemParametrizadaTO, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  mensagemParametrizadaTO = class(TRemotable)
  private
    Fmensagem: string;
    Fmensagem_Specified: boolean;
    Ftipo: tipoMensagem;
    Ftipo_Specified: boolean;
    Ftitulo: string;
    Ftitulo_Specified: boolean;
    procedure Setmensagem(Index: Integer; const Astring: string);
    function  mensagem_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const AtipoMensagem: tipoMensagem);
    function  tipo_Specified(Index: Integer): boolean;
    procedure Settitulo(Index: Integer; const Astring: string);
    function  titulo_Specified(Index: Integer): boolean;
  published
    property mensagem: string        Index (IS_OPTN or IS_UNQL) read Fmensagem write Setmensagem stored mensagem_Specified;
    property tipo:     tipoMensagem  Index (IS_OPTN or IS_UNQL) read Ftipo write Settipo stored tipo_Specified;
    property titulo:   string        Index (IS_OPTN or IS_UNQL) read Ftitulo write Settitulo stored titulo_Specified;
  end;



  // ************************************************************************ //
  // XML       : remetente, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  remetente = class(pessoa)
  private
    Fcelular: string;
    Fcelular_Specified: boolean;
    Fddd_celular: string;
    Fddd_celular_Specified: boolean;
    Fidentificacao: string;
    Fidentificacao_Specified: boolean;
    Fsms: string;
    Fsms_Specified: boolean;
    procedure Setcelular(Index: Integer; const Astring: string);
    function  celular_Specified(Index: Integer): boolean;
    procedure Setddd_celular(Index: Integer; const Astring: string);
    function  ddd_celular_Specified(Index: Integer): boolean;
    procedure Setidentificacao(Index: Integer; const Astring: string);
    function  identificacao_Specified(Index: Integer): boolean;
    procedure Setsms(Index: Integer; const Astring: string);
    function  sms_Specified(Index: Integer): boolean;
  published
    property celular:       string  Index (IS_OPTN or IS_UNQL) read Fcelular write Setcelular stored celular_Specified;
    property ddd_celular:   string  Index (IS_OPTN or IS_UNQL) read Fddd_celular write Setddd_celular stored ddd_celular_Specified;
    property identificacao: string  Index (IS_OPTN or IS_UNQL) read Fidentificacao write Setidentificacao stored identificacao_Specified;
    property sms:           string  Index (IS_OPTN or IS_UNQL) read Fsms write Setsms stored sms_Specified;
  end;

  geraDigitoVerificadorEtiquetasResponse = array of Integer;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }
  obterEmbalagemLRSResponse = array of embalagemLRSMaster;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : embalagemLRSMaster, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  embalagemLRSMaster = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    Ftipo: string;
    Ftipo_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const Astring: string);
    function  tipo_Specified(Index: Integer): boolean;
  published
    property codigo: string  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property nome:   string  Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property tipo:   string  Index (IS_OPTN or IS_UNQL) read Ftipo write Settipo stored tipo_Specified;
  end;



  // ************************************************************************ //
  // XML       : chancelaMaster, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  chancelaMaster = class(TRemotable)
  private
    Fativo: simNao;
    Fativo_Specified: boolean;
    Fchancela: TArray<System.Byte>;
    Fchancela_Specified: boolean;
    FdataAtualizacao: TXSDateTime;
    FdataAtualizacao_Specified: boolean;
    Fdescricao: string;
    Fdescricao_Specified: boolean;
    Fid: Int64;
    Fid_Specified: boolean;
    FservicosSigep: Array_Of_servicoSigep;
    FservicosSigep_Specified: boolean;
    procedure Setativo(Index: Integer; const AsimNao: simNao);
    function  ativo_Specified(Index: Integer): boolean;
    procedure Setchancela(Index: Integer; const AArray: TArray<Byte>);
    function  chancela_Specified(Index: Integer): boolean;
    procedure SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAtualizacao_Specified(Index: Integer): boolean;
    procedure Setdescricao(Index: Integer; const Astring: string);
    function  descricao_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInt64: Int64);
    function  id_Specified(Index: Integer): boolean;
    procedure SetservicosSigep(Index: Integer; const AArray_Of_servicoSigep: Array_Of_servicoSigep);
    function  servicosSigep_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ativo:           simNao                 Index (IS_OPTN or IS_UNQL) read Fativo write Setativo stored ativo_Specified;
    property chancela:        TArray<System.Byte>    Index (IS_OPTN or IS_UNQL) read Fchancela write Setchancela stored chancela_Specified;
    property dataAtualizacao: TXSDateTime            Index (IS_OPTN or IS_UNQL) read FdataAtualizacao write SetdataAtualizacao stored dataAtualizacao_Specified;
    property descricao:       string                 Index (IS_OPTN or IS_UNQL) read Fdescricao write Setdescricao stored descricao_Specified;
    property id:              Int64                  Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property servicosSigep:   Array_Of_servicoSigep  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FservicosSigep write SetservicosSigep stored servicosSigep_Specified;
  end;



  // ************************************************************************ //
  // XML       : valorDeclarado, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  valorDeclarado = class(TRemotable)
  private
    Fmaximo: Double;
    Fmaximo_Specified: boolean;
    Fminimo: Double;
    Fminimo_Specified: boolean;
    procedure Setmaximo(Index: Integer; const ADouble: Double);
    function  maximo_Specified(Index: Integer): boolean;
    procedure Setminimo(Index: Integer; const ADouble: Double);
    function  minimo_Specified(Index: Integer): boolean;
  published
    property maximo: Double  Index (IS_OPTN or IS_UNQL) read Fmaximo write Setmaximo stored maximo_Specified;
    property minimo: Double  Index (IS_OPTN or IS_UNQL) read Fminimo write Setminimo stored minimo_Specified;
  end;



  // ************************************************************************ //
  // XML       : dimensaoTO, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  dimensaoTO = class(TRemotable)
  private
    Faltura: medidaTO;
    Faltura_Specified: boolean;
    Fcomprimento: medidaTO;
    Fcomprimento_Specified: boolean;
    Fdiametro: medidaTO;
    Fdiametro_Specified: boolean;
    Flargura: medidaTO;
    Flargura_Specified: boolean;
    Fpeso: medidaTO;
    Fpeso_Specified: boolean;
    Fsoma: medidaTO;
    Fsoma_Specified: boolean;
    procedure Setaltura(Index: Integer; const AmedidaTO: medidaTO);
    function  altura_Specified(Index: Integer): boolean;
    procedure Setcomprimento(Index: Integer; const AmedidaTO: medidaTO);
    function  comprimento_Specified(Index: Integer): boolean;
    procedure Setdiametro(Index: Integer; const AmedidaTO: medidaTO);
    function  diametro_Specified(Index: Integer): boolean;
    procedure Setlargura(Index: Integer; const AmedidaTO: medidaTO);
    function  largura_Specified(Index: Integer): boolean;
    procedure Setpeso(Index: Integer; const AmedidaTO: medidaTO);
    function  peso_Specified(Index: Integer): boolean;
    procedure Setsoma(Index: Integer; const AmedidaTO: medidaTO);
    function  soma_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property altura:      medidaTO  Index (IS_OPTN or IS_UNQL) read Faltura write Setaltura stored altura_Specified;
    property comprimento: medidaTO  Index (IS_OPTN or IS_UNQL) read Fcomprimento write Setcomprimento stored comprimento_Specified;
    property diametro:    medidaTO  Index (IS_OPTN or IS_UNQL) read Fdiametro write Setdiametro stored diametro_Specified;
    property largura:     medidaTO  Index (IS_OPTN or IS_UNQL) read Flargura write Setlargura stored largura_Specified;
    property peso:        medidaTO  Index (IS_OPTN or IS_UNQL) read Fpeso write Setpeso stored peso_Specified;
    property soma:        medidaTO  Index (IS_OPTN or IS_UNQL) read Fsoma write Setsoma stored soma_Specified;
  end;



  // ************************************************************************ //
  // XML       : medidaTO, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  medidaTO = class(TRemotable)
  private
    Fmaximo: TXSDecimal;
    Fmaximo_Specified: boolean;
    Fminimo: TXSDecimal;
    Fminimo_Specified: boolean;
    procedure Setmaximo(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  maximo_Specified(Index: Integer): boolean;
    procedure Setminimo(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  minimo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property maximo: TXSDecimal  Index (IS_OPTN or IS_UNQL) read Fmaximo write Setmaximo stored maximo_Specified;
    property minimo: TXSDecimal  Index (IS_OPTN or IS_UNQL) read Fminimo write Setminimo stored minimo_Specified;
  end;



  // ************************************************************************ //
  // XML       : valePostal, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  valePostal = class(TRemotable)
  private
    FcidNoCidade: string;
    FcidNoCidade_Specified: boolean;
    FctcCoAadministrativo: string;
    FctcCoAadministrativo_Specified: boolean;
    FctcNuContrato: Int64;
    FctcNuContrato_Specified: boolean;
    FctcNuContratoEct: Int64;
    FctcNuContratoEct_Specified: boolean;
    FcvpEdBairro: string;
    FcvpEdBairro_Specified: boolean;
    FcvpEdCliente: string;
    FcvpEdCliente_Specified: boolean;
    FcvpEdComplemento: string;
    FcvpEdComplemento_Specified: boolean;
    FcvpEdNumero: string;
    FcvpEdNumero_Specified: boolean;
    FcvpNoCliente: string;
    FcvpNoCliente_Specified: boolean;
    FcvpNuCep: Int64;
    FcvpNuCep_Specified: boolean;
    FdescricaoErro: string;
    FdescricaoErro_Specified: boolean;
    FestSgEstado: string;
    FestSgEstado_Specified: boolean;
    FmonVarTarifaAdicional: Integer;
    FmonVarTarifaServico: Integer;
    FmonVarValorDescontos: Integer;
    FmonVarValorImposto: Integer;
    FprsCoProdutoServico: Int64;
    FprsCoProdutoServico_Specified: boolean;
    FpveNu: Int64;
    FpveNu_Specified: boolean;
    FpveOrgNuAgencia: Int64;
    FpveOrgNuAgencia_Specified: boolean;
    FpveOrgNuAgenciaDes: Int64;
    FpveOrgNuAgenciaDes_Specified: boolean;
    FpveOrgNuAgenciaOri: Int64;
    FpveOrgNuAgenciaOri_Specified: boolean;
    FretornaCodErro: Integer;
    FsitNoSituacao: string;
    FsitNoSituacao_Specified: boolean;
    FtlgTxDescricao: string;
    FtlgTxDescricao_Specified: boolean;
    FvapDhTransacao: TXSDateTime;
    FvapDhTransacao_Specified: boolean;
    FvapNuEtiquetaEncomenda: string;
    FvapNuEtiquetaEncomenda_Specified: boolean;
    FvapVrCobradoEct: Double;
    FvapVrCobradoEct_Specified: boolean;
    FvapVrNominal: Double;
    FvapVrNominal_Specified: boolean;
    procedure SetcidNoCidade(Index: Integer; const Astring: string);
    function  cidNoCidade_Specified(Index: Integer): boolean;
    procedure SetctcCoAadministrativo(Index: Integer; const Astring: string);
    function  ctcCoAadministrativo_Specified(Index: Integer): boolean;
    procedure SetctcNuContrato(Index: Integer; const AInt64: Int64);
    function  ctcNuContrato_Specified(Index: Integer): boolean;
    procedure SetctcNuContratoEct(Index: Integer; const AInt64: Int64);
    function  ctcNuContratoEct_Specified(Index: Integer): boolean;
    procedure SetcvpEdBairro(Index: Integer; const Astring: string);
    function  cvpEdBairro_Specified(Index: Integer): boolean;
    procedure SetcvpEdCliente(Index: Integer; const Astring: string);
    function  cvpEdCliente_Specified(Index: Integer): boolean;
    procedure SetcvpEdComplemento(Index: Integer; const Astring: string);
    function  cvpEdComplemento_Specified(Index: Integer): boolean;
    procedure SetcvpEdNumero(Index: Integer; const Astring: string);
    function  cvpEdNumero_Specified(Index: Integer): boolean;
    procedure SetcvpNoCliente(Index: Integer; const Astring: string);
    function  cvpNoCliente_Specified(Index: Integer): boolean;
    procedure SetcvpNuCep(Index: Integer; const AInt64: Int64);
    function  cvpNuCep_Specified(Index: Integer): boolean;
    procedure SetdescricaoErro(Index: Integer; const Astring: string);
    function  descricaoErro_Specified(Index: Integer): boolean;
    procedure SetestSgEstado(Index: Integer; const Astring: string);
    function  estSgEstado_Specified(Index: Integer): boolean;
    procedure SetprsCoProdutoServico(Index: Integer; const AInt64: Int64);
    function  prsCoProdutoServico_Specified(Index: Integer): boolean;
    procedure SetpveNu(Index: Integer; const AInt64: Int64);
    function  pveNu_Specified(Index: Integer): boolean;
    procedure SetpveOrgNuAgencia(Index: Integer; const AInt64: Int64);
    function  pveOrgNuAgencia_Specified(Index: Integer): boolean;
    procedure SetpveOrgNuAgenciaDes(Index: Integer; const AInt64: Int64);
    function  pveOrgNuAgenciaDes_Specified(Index: Integer): boolean;
    procedure SetpveOrgNuAgenciaOri(Index: Integer; const AInt64: Int64);
    function  pveOrgNuAgenciaOri_Specified(Index: Integer): boolean;
    procedure SetsitNoSituacao(Index: Integer; const Astring: string);
    function  sitNoSituacao_Specified(Index: Integer): boolean;
    procedure SettlgTxDescricao(Index: Integer; const Astring: string);
    function  tlgTxDescricao_Specified(Index: Integer): boolean;
    procedure SetvapDhTransacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  vapDhTransacao_Specified(Index: Integer): boolean;
    procedure SetvapNuEtiquetaEncomenda(Index: Integer; const Astring: string);
    function  vapNuEtiquetaEncomenda_Specified(Index: Integer): boolean;
    procedure SetvapVrCobradoEct(Index: Integer; const ADouble: Double);
    function  vapVrCobradoEct_Specified(Index: Integer): boolean;
    procedure SetvapVrNominal(Index: Integer; const ADouble: Double);
    function  vapVrNominal_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cidNoCidade:            string       Index (IS_OPTN or IS_UNQL) read FcidNoCidade write SetcidNoCidade stored cidNoCidade_Specified;
    property ctcCoAadministrativo:   string       Index (IS_OPTN or IS_UNQL) read FctcCoAadministrativo write SetctcCoAadministrativo stored ctcCoAadministrativo_Specified;
    property ctcNuContrato:          Int64        Index (IS_OPTN or IS_UNQL) read FctcNuContrato write SetctcNuContrato stored ctcNuContrato_Specified;
    property ctcNuContratoEct:       Int64        Index (IS_OPTN or IS_UNQL) read FctcNuContratoEct write SetctcNuContratoEct stored ctcNuContratoEct_Specified;
    property cvpEdBairro:            string       Index (IS_OPTN or IS_UNQL) read FcvpEdBairro write SetcvpEdBairro stored cvpEdBairro_Specified;
    property cvpEdCliente:           string       Index (IS_OPTN or IS_UNQL) read FcvpEdCliente write SetcvpEdCliente stored cvpEdCliente_Specified;
    property cvpEdComplemento:       string       Index (IS_OPTN or IS_UNQL) read FcvpEdComplemento write SetcvpEdComplemento stored cvpEdComplemento_Specified;
    property cvpEdNumero:            string       Index (IS_OPTN or IS_UNQL) read FcvpEdNumero write SetcvpEdNumero stored cvpEdNumero_Specified;
    property cvpNoCliente:           string       Index (IS_OPTN or IS_UNQL) read FcvpNoCliente write SetcvpNoCliente stored cvpNoCliente_Specified;
    property cvpNuCep:               Int64        Index (IS_OPTN or IS_UNQL) read FcvpNuCep write SetcvpNuCep stored cvpNuCep_Specified;
    property descricaoErro:          string       Index (IS_OPTN or IS_UNQL) read FdescricaoErro write SetdescricaoErro stored descricaoErro_Specified;
    property estSgEstado:            string       Index (IS_OPTN or IS_UNQL) read FestSgEstado write SetestSgEstado stored estSgEstado_Specified;
    property monVarTarifaAdicional:  Integer      Index (IS_UNQL) read FmonVarTarifaAdicional write FmonVarTarifaAdicional;
    property monVarTarifaServico:    Integer      Index (IS_UNQL) read FmonVarTarifaServico write FmonVarTarifaServico;
    property monVarValorDescontos:   Integer      Index (IS_UNQL) read FmonVarValorDescontos write FmonVarValorDescontos;
    property monVarValorImposto:     Integer      Index (IS_UNQL) read FmonVarValorImposto write FmonVarValorImposto;
    property prsCoProdutoServico:    Int64        Index (IS_OPTN or IS_UNQL) read FprsCoProdutoServico write SetprsCoProdutoServico stored prsCoProdutoServico_Specified;
    property pveNu:                  Int64        Index (IS_OPTN or IS_UNQL) read FpveNu write SetpveNu stored pveNu_Specified;
    property pveOrgNuAgencia:        Int64        Index (IS_OPTN or IS_UNQL) read FpveOrgNuAgencia write SetpveOrgNuAgencia stored pveOrgNuAgencia_Specified;
    property pveOrgNuAgenciaDes:     Int64        Index (IS_OPTN or IS_UNQL) read FpveOrgNuAgenciaDes write SetpveOrgNuAgenciaDes stored pveOrgNuAgenciaDes_Specified;
    property pveOrgNuAgenciaOri:     Int64        Index (IS_OPTN or IS_UNQL) read FpveOrgNuAgenciaOri write SetpveOrgNuAgenciaOri stored pveOrgNuAgenciaOri_Specified;
    property retornaCodErro:         Integer      Index (IS_UNQL) read FretornaCodErro write FretornaCodErro;
    property sitNoSituacao:          string       Index (IS_OPTN or IS_UNQL) read FsitNoSituacao write SetsitNoSituacao stored sitNoSituacao_Specified;
    property tlgTxDescricao:         string       Index (IS_OPTN or IS_UNQL) read FtlgTxDescricao write SettlgTxDescricao stored tlgTxDescricao_Specified;
    property vapDhTransacao:         TXSDateTime  Index (IS_OPTN or IS_UNQL) read FvapDhTransacao write SetvapDhTransacao stored vapDhTransacao_Specified;
    property vapNuEtiquetaEncomenda: string       Index (IS_OPTN or IS_UNQL) read FvapNuEtiquetaEncomenda write SetvapNuEtiquetaEncomenda stored vapNuEtiquetaEncomenda_Specified;
    property vapVrCobradoEct:        Double       Index (IS_OPTN or IS_UNQL) read FvapVrCobradoEct write SetvapVrCobradoEct stored vapVrCobradoEct_Specified;
    property vapVrNominal:           Double       Index (IS_OPTN or IS_UNQL) read FvapVrNominal write SetvapVrNominal stored vapVrNominal_Specified;
  end;



  // ************************************************************************ //
  // XML       : produto, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  produto = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fqtd: string;
    Fqtd_Specified: boolean;
    Ftipo: string;
    Ftipo_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setqtd(Index: Integer; const Astring: string);
    function  qtd_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const Astring: string);
    function  tipo_Specified(Index: Integer): boolean;
  published
    property codigo: string  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property qtd:    string  Index (IS_OPTN or IS_UNQL) read Fqtd write Setqtd stored qtd_Specified;
    property tipo:   string  Index (IS_OPTN or IS_UNQL) read Ftipo write Settipo stored tipo_Specified;
  end;

  buscaServicosValorDeclaradoResponse = array of string;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : coleta, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  coleta = class(TRemotable)
  private
    Fcklist: string;
    Fcklist_Specified: boolean;
    Fdescricao: string;
    Fdescricao_Specified: boolean;
    Fdocumento: buscaServicosValorDeclaradoResponse;
    Fdocumento_Specified: boolean;
    Fid_cliente: string;
    Fid_cliente_Specified: boolean;
    Fproduto: Array_Of_produto;
    Fproduto_Specified: boolean;
    Fremetente: remetente;
    Fremetente_Specified: boolean;
    Ftipo: string;
    Ftipo_Specified: boolean;
    Fvalor_declarado: string;
    Fvalor_declarado_Specified: boolean;
    procedure Setcklist(Index: Integer; const Astring: string);
    function  cklist_Specified(Index: Integer): boolean;
    procedure Setdescricao(Index: Integer; const Astring: string);
    function  descricao_Specified(Index: Integer): boolean;
    procedure Setdocumento(Index: Integer; const AbuscaServicosValorDeclaradoResponse: buscaServicosValorDeclaradoResponse);
    function  documento_Specified(Index: Integer): boolean;
    procedure Setid_cliente(Index: Integer; const Astring: string);
    function  id_cliente_Specified(Index: Integer): boolean;
    procedure Setproduto(Index: Integer; const AArray_Of_produto: Array_Of_produto);
    function  produto_Specified(Index: Integer): boolean;
    procedure Setremetente(Index: Integer; const Aremetente: remetente);
    function  remetente_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const Astring: string);
    function  tipo_Specified(Index: Integer): boolean;
    procedure Setvalor_declarado(Index: Integer; const Astring: string);
    function  valor_declarado_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cklist:          string                               Index (IS_OPTN or IS_UNQL) read Fcklist write Setcklist stored cklist_Specified;
    property descricao:       string                               Index (IS_OPTN or IS_UNQL) read Fdescricao write Setdescricao stored descricao_Specified;
    property documento:       buscaServicosValorDeclaradoResponse  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fdocumento write Setdocumento stored documento_Specified;
    property id_cliente:      string                               Index (IS_OPTN or IS_UNQL) read Fid_cliente write Setid_cliente stored id_cliente_Specified;
    property produto:         Array_Of_produto                     Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fproduto write Setproduto stored produto_Specified;
    property remetente:       remetente                            Index (IS_OPTN or IS_UNQL) read Fremetente write Setremetente stored remetente_Specified;
    property tipo:            string                               Index (IS_OPTN or IS_UNQL) read Ftipo write Settipo stored tipo_Specified;
    property valor_declarado: string                               Index (IS_OPTN or IS_UNQL) read Fvalor_declarado write Setvalor_declarado stored valor_declarado_Specified;
  end;



  // ************************************************************************ //
  // XML       : coletaReversa, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  coletaReversa = class(coleta)
  private
    Fag: string;
    Fag_Specified: boolean;
    Far: Integer;
    Far_Specified: boolean;
    Fcartao: string;
    Fcartao_Specified: boolean;
    Fnumero: Integer;
    Fnumero_Specified: boolean;
    Fobj_col: Array_Of_objeto;
    Fobj_col_Specified: boolean;
    Fservico_adicional: string;
    Fservico_adicional_Specified: boolean;
    procedure Setag(Index: Integer; const Astring: string);
    function  ag_Specified(Index: Integer): boolean;
    procedure Setar(Index: Integer; const AInteger: Integer);
    function  ar_Specified(Index: Integer): boolean;
    procedure Setcartao(Index: Integer; const Astring: string);
    function  cartao_Specified(Index: Integer): boolean;
    procedure Setnumero(Index: Integer; const AInteger: Integer);
    function  numero_Specified(Index: Integer): boolean;
    procedure Setobj_col(Index: Integer; const AArray_Of_objeto: Array_Of_objeto);
    function  obj_col_Specified(Index: Integer): boolean;
    procedure Setservico_adicional(Index: Integer; const Astring: string);
    function  servico_adicional_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ag:                string           Index (IS_OPTN or IS_UNQL) read Fag write Setag stored ag_Specified;
    property ar:                Integer          Index (IS_OPTN or IS_UNQL) read Far write Setar stored ar_Specified;
    property cartao:            string           Index (IS_OPTN or IS_UNQL) read Fcartao write Setcartao stored cartao_Specified;
    property numero:            Integer          Index (IS_OPTN or IS_UNQL) read Fnumero write Setnumero stored numero_Specified;
    property obj_col:           Array_Of_objeto  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fobj_col write Setobj_col stored obj_col_Specified;
    property servico_adicional: string           Index (IS_OPTN or IS_UNQL) read Fservico_adicional write Setservico_adicional stored servico_adicional_Specified;
  end;



  // ************************************************************************ //
  // XML       : coletaSimultanea, global, <complexType>
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // ************************************************************************ //
  coletaSimultanea = class(coleta)
  private
    Fobj: string;
    Fobj_Specified: boolean;
    Fobs: string;
    Fobs_Specified: boolean;
    procedure Setobj(Index: Integer; const Astring: string);
    function  obj_Specified(Index: Integer): boolean;
    procedure Setobs(Index: Integer; const Astring: string);
    function  obs_Specified(Index: Integer): boolean;
  published
    property obj: string  Index (IS_OPTN or IS_UNQL) read Fobj write Setobj stored obj_Specified;
    property obs: string  Index (IS_OPTN or IS_UNQL) read Fobs write Setobs stored obs_Specified;
  end;

  pesquisarEmbalagensPorServicoResponse = array of tipoEmbalagem;   { "http://cliente.bean.master.sigep.bsb.correios.com.br/"[Lit][GblCplx] }

  // ************************************************************************ //
  // Namespace : http://cliente.bean.master.sigep.bsb.correios.com.br/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : AtendeClienteServiceSoapBinding
  // service   : AtendeClienteService
  // port      : AtendeClientePort
  // URL       : https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente
  // ************************************************************************ //
  AtendeCliente = interface(IInvokable)
  ['{06395354-FEDE-FDC9-368D-51C37A49D0E0}']
    function  buscaServicosAdicionaisAtivos(const usuario: string; const senha: string): buscaServicosAdicionaisAtivosResponse; stdcall;
    function  fechaPlp(const xml: string; const idPlpCliente: Int64; const cartaoPostagem: string; const faixaEtiquetas: string; const usuario: string; const senha: string
                       ): Int64; stdcall;
    function  calculaTarifaServico(const codAdministrativo: string; const usuario: string; const senha: string; const codServico: string; const cepOrigem: string; const cepDestino: string; 
                                   const peso: string; const codFormato: Integer; const comprimento: Double; const altura: Double; const largura: Double; 
                                   const diametro: Double; const codMaoPropria: string; const valorDeclarado: Double; const codAvisoRecebimento: string): string; stdcall;
    function  validaPlp(const cliente: Int64; const numero: string; const diretoria: Int64; const cartao: string; const unidadePostagem: string; const servico: Int64; 
                        const servicosAdicionais: buscaServicosValorDeclaradoResponse; const usuario: string; const senha: string): Boolean; stdcall;
    function  VerificaSeTodosObjetosCancelados(const arg0: VerificaSeTodosObjetosCancelados): Boolean; stdcall;
    function  cancelarObjeto(const idPlp: Int64; const numeroEtiqueta: string; const usuario: string; const senha: string): Boolean; stdcall;
    function  pesquisarParametrosPorDescricao(const prefix: string): dimensaoTO; stdcall;
    function  atualizaPagamentoNaEntrega(const usuario: string; const senha: string): string; stdcall;
    function  obterClienteAtualizacao(const cnpjCliente: string; const usuario: string; const senha: string): TXSDateTime; stdcall;
    function  verificaDisponibilidadeServico(const codAdministrativo: Integer; const numeroServico: string; const cepOrigem: string; const cepDestino: string; const usuario: string; const senha: string
                                             ): string; stdcall;
    function  fechaPlpVariosServicos(const xml: string; const idPlpCliente: Int64; const cartaoPostagem: string; const listaEtiquetas: buscaServicosValorDeclaradoResponse; const usuario: string; const senha: string
                                     ): Int64; stdcall;
    function  geraDigitoVerificadorEtiquetas(const etiquetas: buscaServicosValorDeclaradoResponse; const usuario: string; const senha: string): geraDigitoVerificadorEtiquetasResponse; stdcall;
    function  obterEmbalagemLRS: obterEmbalagemLRSResponse; stdcall;
    function  validaEtiquetaPLP(const numeroEtiqueta: string; const idPlp: Int64; const usuario: string; const senha: string): Boolean; stdcall;
    function  buscaServicosValorDeclarado(const usuario: string; const senha: string): buscaServicosValorDeclaradoResponse; stdcall;
    function  consultaCEP(const cep: string): enderecoERP; stdcall;
    function  integrarUsuarioScol(const codAdministrativo: Integer; const usuario: string; const senha: string): Boolean; stdcall;
    function  pesquisarDimensoesServico(const codigo: string; const embalagem: string): dimensaoTO; stdcall;
    function  pesquisarEmbalagensPorServico(const codigo: string): pesquisarEmbalagensPorServicoResponse; stdcall;
    function  atualizaRemessaAgrupada(const usuario: string; const senha: string): string; stdcall;
    function  solicitaPLP(const idPlpMaster: Int64; const numEtiqueta: string; const usuario: string; const senha: string): string; stdcall;
    function  getStatusCartaoPostagem(const numeroCartaoPostagem: string; const usuario: string; const senha: string): statusCartao; stdcall;
    function  verificaModalTransporte(const codigoServico: string; const cepOrigem: string; const cepDestino: string; const usuario: string; const senha: string): string; stdcall;
    function  buscaDataAtual: TXSDateTime; stdcall;
    function  buscaTarifaVale(const codAdministrativo: string; const usuario: string; const senha: string; const codServico: string; const cepOrigem: string; const cepDestino: string; 
                              const peso: string; const codFormato: Integer; const comprimento: Double; const altura: Double; const largura: Double; 
                              const valorDeclarado: Double; const servicoAdicional: string): valePostal; stdcall;
    function  validarPostagemSimultanea(const codAdministrativo: Integer; const codigoServico: Integer; const idCartaoPostagem: string; const cepDestinatario: string; const coleta: coletaSimultanea; const usuario: string; 
                                        const senha: string): Boolean; stdcall;
    function  getStatusPLP(const arg0: VerificaSeTodosObjetosCancelados; const arg1: string): statusPlp; stdcall;
    function  pesquisarServicosAdicionais(const codigo: string): pesquisarServicosAdicionaisResponse; stdcall;
    function  buscaServicosXServicosAdicionais(const usuario: string; const senha: string): buscaServicosValorDeclaradoResponse; stdcall;
    function  cancelarPedidoScol(const codAdministrativo: string; const idPostagem: string; const tipo: string; const usuario: string; const senha: string): retornoCancelamento; stdcall;
    function  bloquearObjeto(const numeroEtiqueta: string; const idPlp: Int64; const tipoBloqueio: tipoBloqueio; const acao: acao; const usuario: string; const senha: string
                             ): string; stdcall;
    function  buscaContrato(const numero: string; const diretoria: Int64; const usuario: string; const senha: string): contratoERP; stdcall;
    function  solicitaEtiquetas(const tipoDestinatario: string; const identificador: string; const idServico: Int64; const qtdEtiquetas: Integer; const usuario: string; const senha: string
                                ): string; stdcall;
    function  solicitaXmlPlp(const idPlpMaster: Int64; const usuario: string; const senha: string): string; stdcall;
    function  validarPostagemReversa(const codAdministrativo: string; const codigoServico: string; const cepDestinatario: string; const idCartaoPostagem: string; const coleta: coletaReversa; const usuario: string; 
                                     const senha: string): Boolean; stdcall;
    function  buscaCliente(const idContrato: string; const idCartaoPostagem: string; const usuario: string; const senha: string): clienteERP; stdcall;
    function  buscaPagamentoEntrega(const usuario: string; const senha: string; const contrato: string; const dataInicio: string; const dataFim: string; const etiqueta: string
                                    ): string; stdcall;
    function  solicitarPostagemScol(const codAdministrativo: Integer; const xml: string; const usuario: string; const senha: string): string; stdcall;
    function  buscaServicos(const idContrato: string; const idCartaoPostagem: string; const usuario: string; const senha: string): buscaServicosResponse; stdcall;
    function  obterMensagemParametrizada(const id: SmallInt): mensagemParametrizadaTO; stdcall;
    function  buscaOpcoes(const listaObjetos: buscaServicosValorDeclaradoResponse; const tipoResultado: string; const usuario: string; const senha: string): string; stdcall;
  end;

function GetAtendeCliente(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): AtendeCliente;


implementation
  uses System.SysUtils;

function GetAtendeCliente(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): AtendeCliente;
const
  defWSDL = 'https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl';
  defURL  = 'https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente';
  defSvc  = 'AtendeClienteService';
  defPrt  = 'AtendeClientePort';
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
    Result := (RIO as AtendeCliente);
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


destructor enderecoERP.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FunidadesPostagem)-1 do
    System.SysUtils.FreeAndNil(FunidadesPostagem[I]);
  System.SetLength(FunidadesPostagem, 0);
  inherited Destroy;
end;

procedure enderecoERP.Setbairro(Index: Integer; const Astring: string);
begin
  Fbairro := Astring;
  Fbairro_Specified := True;
end;

function enderecoERP.bairro_Specified(Index: Integer): boolean;
begin
  Result := Fbairro_Specified;
end;

procedure enderecoERP.Setcep(Index: Integer; const Astring: string);
begin
  Fcep := Astring;
  Fcep_Specified := True;
end;

function enderecoERP.cep_Specified(Index: Integer): boolean;
begin
  Result := Fcep_Specified;
end;

procedure enderecoERP.Setcidade(Index: Integer; const Astring: string);
begin
  Fcidade := Astring;
  Fcidade_Specified := True;
end;

function enderecoERP.cidade_Specified(Index: Integer): boolean;
begin
  Result := Fcidade_Specified;
end;

procedure enderecoERP.Setcomplemento2(Index: Integer; const Astring: string);
begin
  Fcomplemento2 := Astring;
  Fcomplemento2_Specified := True;
end;

function enderecoERP.complemento2_Specified(Index: Integer): boolean;
begin
  Result := Fcomplemento2_Specified;
end;

procedure enderecoERP.Setend_(Index: Integer; const Astring: string);
begin
  Fend_ := Astring;
  Fend__Specified := True;
end;

function enderecoERP.end__Specified(Index: Integer): boolean;
begin
  Result := Fend__Specified;
end;

procedure enderecoERP.Setuf(Index: Integer; const Astring: string);
begin
  Fuf := Astring;
  Fuf_Specified := True;
end;

function enderecoERP.uf_Specified(Index: Integer): boolean;
begin
  Result := Fuf_Specified;
end;

procedure enderecoERP.SetunidadesPostagem(Index: Integer; const AArray_Of_unidadePostagemERP: Array_Of_unidadePostagemERP);
begin
  FunidadesPostagem := AArray_Of_unidadePostagemERP;
  FunidadesPostagem_Specified := True;
end;

function enderecoERP.unidadesPostagem_Specified(Index: Integer): boolean;
begin
  Result := FunidadesPostagem_Specified;
end;

procedure parametroMaster.SetprmTxParametro(Index: Integer; const Astring: string);
begin
  FprmTxParametro := Astring;
  FprmTxParametro_Specified := True;
end;

function parametroMaster.prmTxParametro_Specified(Index: Integer): boolean;
begin
  Result := FprmTxParametro_Specified;
end;

procedure parametroMaster.SetprmTxValor(Index: Integer; const Astring: string);
begin
  FprmTxValor := Astring;
  FprmTxValor_Specified := True;
end;

function parametroMaster.prmTxValor_Specified(Index: Integer): boolean;
begin
  Result := FprmTxValor_Specified;
end;

destructor unidadePostagemERP.Destroy;
begin
  System.SysUtils.FreeAndNil(Fendereco);
  inherited Destroy;
end;

procedure unidadePostagemERP.SetdiretoriaRegional(Index: Integer; const Astring: string);
begin
  FdiretoriaRegional := Astring;
  FdiretoriaRegional_Specified := True;
end;

function unidadePostagemERP.diretoriaRegional_Specified(Index: Integer): boolean;
begin
  Result := FdiretoriaRegional_Specified;
end;

procedure unidadePostagemERP.Setendereco(Index: Integer; const AenderecoERP: enderecoERP);
begin
  Fendereco := AenderecoERP;
  Fendereco_Specified := True;
end;

function unidadePostagemERP.endereco_Specified(Index: Integer): boolean;
begin
  Result := Fendereco_Specified;
end;

procedure unidadePostagemERP.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function unidadePostagemERP.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure unidadePostagemERP.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function unidadePostagemERP.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure unidadePostagemERP.Setstatus(Index: Integer; const Astring: string);
begin
  Fstatus := Astring;
  Fstatus_Specified := True;
end;

function unidadePostagemERP.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure unidadePostagemERP.Settipo(Index: Integer; const Astring: string);
begin
  Ftipo := Astring;
  Ftipo_Specified := True;
end;

function unidadePostagemERP.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

procedure contratoERPPK.Setnumero(Index: Integer; const Astring: string);
begin
  Fnumero := Astring;
  Fnumero_Specified := True;
end;

function contratoERPPK.numero_Specified(Index: Integer): boolean;
begin
  Result := Fnumero_Specified;
end;

procedure SQLException.SeterrorCode(Index: Integer; const AInteger: Integer);
begin
  FerrorCode := AInteger;
  FerrorCode_Specified := True;
end;

function SQLException.errorCode_Specified(Index: Integer): boolean;
begin
  Result := FerrorCode_Specified;
end;

procedure SQLException.SetsQLState(Index: Integer; const Astring: string);
begin
  FsQLState := Astring;
  FsQLState_Specified := True;
end;

function SQLException.sQLState_Specified(Index: Integer): boolean;
begin
  Result := FsQLState_Specified;
end;

procedure SQLException.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function SQLException.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure Exception.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure ErroMontagemRelatorio.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function ErroMontagemRelatorio.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure servicoAdicionalXML.Setcategoria(Index: Integer; const Astring: string);
begin
  Fcategoria := Astring;
  Fcategoria_Specified := True;
end;

function servicoAdicionalXML.categoria_Specified(Index: Integer): boolean;
begin
  Result := Fcategoria_Specified;
end;

procedure servicoAdicionalXML.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function servicoAdicionalXML.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure servicoAdicionalXML.Setdescricao(Index: Integer; const Astring: string);
begin
  Fdescricao := Astring;
  Fdescricao_Specified := True;
end;

function servicoAdicionalXML.descricao_Specified(Index: Integer): boolean;
begin
  Result := Fdescricao_Specified;
end;

procedure servicoAdicionalXML.SetmaximoValorDeclarado(Index: Integer; const ADouble: Double);
begin
  FmaximoValorDeclarado := ADouble;
  FmaximoValorDeclarado_Specified := True;
end;

function servicoAdicionalXML.maximoValorDeclarado_Specified(Index: Integer): boolean;
begin
  Result := FmaximoValorDeclarado_Specified;
end;

procedure servicoAdicionalXML.SetminimoValorDeclarado(Index: Integer; const ADouble: Double);
begin
  FminimoValorDeclarado := ADouble;
  FminimoValorDeclarado_Specified := True;
end;

function servicoAdicionalXML.minimoValorDeclarado_Specified(Index: Integer): boolean;
begin
  Result := FminimoValorDeclarado_Specified;
end;

procedure servicoAdicionalXML.Setsigla(Index: Integer; const Astring: string);
begin
  Fsigla := Astring;
  Fsigla_Specified := True;
end;

function servicoAdicionalXML.sigla_Specified(Index: Integer): boolean;
begin
  Result := Fsigla_Specified;
end;

destructor servicoSigep.Destroy;
begin
  System.SysUtils.FreeAndNil(Fchancela);
  System.SysUtils.FreeAndNil(FservicoERP);
  inherited Destroy;
end;

procedure servicoSigep.SetcategoriaServico(Index: Integer; const AcategoriaServico: categoriaServico);
begin
  FcategoriaServico := AcategoriaServico;
  FcategoriaServico_Specified := True;
end;

function servicoSigep.categoriaServico_Specified(Index: Integer): boolean;
begin
  Result := FcategoriaServico_Specified;
end;

procedure servicoSigep.Setchancela(Index: Integer; const AchancelaMaster: chancelaMaster);
begin
  Fchancela := AchancelaMaster;
  Fchancela_Specified := True;
end;

function servicoSigep.chancela_Specified(Index: Integer): boolean;
begin
  Result := Fchancela_Specified;
end;

procedure servicoSigep.Setdescricao(Index: Integer; const Astring: string);
begin
  Fdescricao := Astring;
  Fdescricao_Specified := True;
end;

function servicoSigep.descricao_Specified(Index: Integer): boolean;
begin
  Result := Fdescricao_Specified;
end;

procedure servicoSigep.SetexigeDimensoes(Index: Integer; const ABoolean: Boolean);
begin
  FexigeDimensoes := ABoolean;
  FexigeDimensoes_Specified := True;
end;

function servicoSigep.exigeDimensoes_Specified(Index: Integer): boolean;
begin
  Result := FexigeDimensoes_Specified;
end;

procedure servicoSigep.SetexigeValorCobrar(Index: Integer; const ABoolean: Boolean);
begin
  FexigeValorCobrar := ABoolean;
  FexigeValorCobrar_Specified := True;
end;

function servicoSigep.exigeValorCobrar_Specified(Index: Integer): boolean;
begin
  Result := FexigeValorCobrar_Specified;
end;

procedure servicoSigep.SetpagamentoEntrega(Index: Integer; const Astring: string);
begin
  FpagamentoEntrega := Astring;
  FpagamentoEntrega_Specified := True;
end;

function servicoSigep.pagamentoEntrega_Specified(Index: Integer): boolean;
begin
  Result := FpagamentoEntrega_Specified;
end;

procedure servicoSigep.SetremessaAgrupada(Index: Integer; const Astring: string);
begin
  FremessaAgrupada := Astring;
  FremessaAgrupada_Specified := True;
end;

function servicoSigep.remessaAgrupada_Specified(Index: Integer): boolean;
begin
  Result := FremessaAgrupada_Specified;
end;

procedure servicoSigep.Setrestricao(Index: Integer; const AsimNao: simNao);
begin
  Frestricao := AsimNao;
  Frestricao_Specified := True;
end;

function servicoSigep.restricao_Specified(Index: Integer): boolean;
begin
  Result := Frestricao_Specified;
end;

procedure servicoSigep.SetservicoERP(Index: Integer; const AservicoERP: servicoERP);
begin
  FservicoERP := AservicoERP;
  FservicoERP_Specified := True;
end;

function servicoSigep.servicoERP_Specified(Index: Integer): boolean;
begin
  Result := FservicoERP_Specified;
end;

procedure servicoSigep.SetssiCoCodigoPostal(Index: Integer; const Astring: string);
begin
  FssiCoCodigoPostal := Astring;
  FssiCoCodigoPostal_Specified := True;
end;

function servicoSigep.ssiCoCodigoPostal_Specified(Index: Integer): boolean;
begin
  Result := FssiCoCodigoPostal_Specified;
end;

destructor objetoPostal.Destroy;
begin
  System.SysUtils.FreeAndNil(FdataAtualizacaoCliente);
  System.SysUtils.FreeAndNil(FdataBloqueioObjeto);
  System.SysUtils.FreeAndNil(FdataCancelamentoEtiqueta);
  System.SysUtils.FreeAndNil(FdataInclusao);
  System.SysUtils.FreeAndNil(FobjetoPostalPK);
  System.SysUtils.FreeAndNil(FpreListaPostagem);
  inherited Destroy;
end;

procedure objetoPostal.SetcodigoEtiqueta(Index: Integer; const Astring: string);
begin
  FcodigoEtiqueta := Astring;
  FcodigoEtiqueta_Specified := True;
end;

function objetoPostal.codigoEtiqueta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoEtiqueta_Specified;
end;

procedure objetoPostal.SetdataAtualizacaoCliente(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacaoCliente := ATXSDateTime;
  FdataAtualizacaoCliente_Specified := True;
end;

function objetoPostal.dataAtualizacaoCliente_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacaoCliente_Specified;
end;

procedure objetoPostal.SetdataBloqueioObjeto(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataBloqueioObjeto := ATXSDateTime;
  FdataBloqueioObjeto_Specified := True;
end;

function objetoPostal.dataBloqueioObjeto_Specified(Index: Integer): boolean;
begin
  Result := FdataBloqueioObjeto_Specified;
end;

procedure objetoPostal.SetdataCancelamentoEtiqueta(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataCancelamentoEtiqueta := ATXSDateTime;
  FdataCancelamentoEtiqueta_Specified := True;
end;

function objetoPostal.dataCancelamentoEtiqueta_Specified(Index: Integer): boolean;
begin
  Result := FdataCancelamentoEtiqueta_Specified;
end;

procedure objetoPostal.SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataInclusao := ATXSDateTime;
  FdataInclusao_Specified := True;
end;

function objetoPostal.dataInclusao_Specified(Index: Integer): boolean;
begin
  Result := FdataInclusao_Specified;
end;

procedure objetoPostal.SetobjetoPostalPK(Index: Integer; const AobjetoPostalPK: objetoPostalPK);
begin
  FobjetoPostalPK := AobjetoPostalPK;
  FobjetoPostalPK_Specified := True;
end;

function objetoPostal.objetoPostalPK_Specified(Index: Integer): boolean;
begin
  Result := FobjetoPostalPK_Specified;
end;

procedure objetoPostal.SetplpNu(Index: Integer; const AInt64: Int64);
begin
  FplpNu := AInt64;
  FplpNu_Specified := True;
end;

function objetoPostal.plpNu_Specified(Index: Integer): boolean;
begin
  Result := FplpNu_Specified;
end;

procedure objetoPostal.SetpreListaPostagem(Index: Integer; const ApreListaPostagem: preListaPostagem);
begin
  FpreListaPostagem := ApreListaPostagem;
  FpreListaPostagem_Specified := True;
end;

function objetoPostal.preListaPostagem_Specified(Index: Integer): boolean;
begin
  Result := FpreListaPostagem_Specified;
end;

procedure objetoPostal.SetrestricaoAerea(Index: Integer; const AsimNao: simNao);
begin
  FrestricaoAerea := AsimNao;
  FrestricaoAerea_Specified := True;
end;

function objetoPostal.restricaoAerea_Specified(Index: Integer): boolean;
begin
  Result := FrestricaoAerea_Specified;
end;

procedure objetoPostal.SetstatusBloqueio(Index: Integer; const Astring: string);
begin
  FstatusBloqueio := Astring;
  FstatusBloqueio_Specified := True;
end;

function objetoPostal.statusBloqueio_Specified(Index: Integer): boolean;
begin
  Result := FstatusBloqueio_Specified;
end;

procedure objetoPostal.SetstatusEtiqueta(Index: Integer; const AstatusObjetoPostal: statusObjetoPostal);
begin
  FstatusEtiqueta := AstatusObjetoPostal;
  FstatusEtiqueta_Specified := True;
end;

function objetoPostal.statusEtiqueta_Specified(Index: Integer): boolean;
begin
  Result := FstatusEtiqueta_Specified;
end;

destructor usuarioInstalacao.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fparametros)-1 do
    System.SysUtils.FreeAndNil(Fparametros[I]);
  System.SetLength(Fparametros, 0);
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  System.SysUtils.FreeAndNil(FdataInclusao);
  System.SysUtils.FreeAndNil(FdataSenha);
  System.SysUtils.FreeAndNil(FgerenteMaster);
  inherited Destroy;
end;

procedure usuarioInstalacao.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function usuarioInstalacao.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure usuarioInstalacao.SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataInclusao := ATXSDateTime;
  FdataInclusao_Specified := True;
end;

function usuarioInstalacao.dataInclusao_Specified(Index: Integer): boolean;
begin
  Result := FdataInclusao_Specified;
end;

procedure usuarioInstalacao.SetdataSenha(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataSenha := ATXSDateTime;
  FdataSenha_Specified := True;
end;

function usuarioInstalacao.dataSenha_Specified(Index: Integer): boolean;
begin
  Result := FdataSenha_Specified;
end;

procedure usuarioInstalacao.SetgerenteMaster(Index: Integer; const AgerenteConta: gerenteConta);
begin
  FgerenteMaster := AgerenteConta;
  FgerenteMaster_Specified := True;
end;

function usuarioInstalacao.gerenteMaster_Specified(Index: Integer): boolean;
begin
  Result := FgerenteMaster_Specified;
end;

procedure usuarioInstalacao.SethashSenha(Index: Integer; const Astring: string);
begin
  FhashSenha := Astring;
  FhashSenha_Specified := True;
end;

function usuarioInstalacao.hashSenha_Specified(Index: Integer): boolean;
begin
  Result := FhashSenha_Specified;
end;

procedure usuarioInstalacao.Setid(Index: Integer; const AInt64: Int64);
begin
  Fid := AInt64;
  Fid_Specified := True;
end;

function usuarioInstalacao.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure usuarioInstalacao.Setlogin(Index: Integer; const Astring: string);
begin
  Flogin := Astring;
  Flogin_Specified := True;
end;

function usuarioInstalacao.login_Specified(Index: Integer): boolean;
begin
  Result := Flogin_Specified;
end;

procedure usuarioInstalacao.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function usuarioInstalacao.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure usuarioInstalacao.Setparametros(Index: Integer; const AArray_Of_parametroMaster: Array_Of_parametroMaster);
begin
  Fparametros := AArray_Of_parametroMaster;
  Fparametros_Specified := True;
end;

function usuarioInstalacao.parametros_Specified(Index: Integer): boolean;
begin
  Result := Fparametros_Specified;
end;

procedure usuarioInstalacao.Setsenha(Index: Integer; const Astring: string);
begin
  Fsenha := Astring;
  Fsenha_Specified := True;
end;

function usuarioInstalacao.senha_Specified(Index: Integer): boolean;
begin
  Result := Fsenha_Specified;
end;

procedure usuarioInstalacao.Setstatus(Index: Integer; const AstatusUsuario: statusUsuario);
begin
  Fstatus := AstatusUsuario;
  Fstatus_Specified := True;
end;

function usuarioInstalacao.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure usuarioInstalacao.Setvalidade(Index: Integer; const Astring: string);
begin
  Fvalidade := Astring;
  Fvalidade_Specified := True;
end;

function usuarioInstalacao.validade_Specified(Index: Integer): boolean;
begin
  Result := Fvalidade_Specified;
end;

destructor vigenciaERP.Destroy;
begin
  System.SysUtils.FreeAndNil(FdataFinal);
  System.SysUtils.FreeAndNil(FdataInicial);
  inherited Destroy;
end;

procedure vigenciaERP.SetdataFinal(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataFinal := ATXSDateTime;
  FdataFinal_Specified := True;
end;

function vigenciaERP.dataFinal_Specified(Index: Integer): boolean;
begin
  Result := FdataFinal_Specified;
end;

procedure vigenciaERP.SetdataInicial(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataInicial := ATXSDateTime;
  FdataInicial_Specified := True;
end;

function vigenciaERP.dataInicial_Specified(Index: Integer): boolean;
begin
  Result := FdataInicial_Specified;
end;

procedure vigenciaERP.SetdatajFim(Index: Integer; const AInteger: Integer);
begin
  FdatajFim := AInteger;
  FdatajFim_Specified := True;
end;

function vigenciaERP.datajFim_Specified(Index: Integer): boolean;
begin
  Result := FdatajFim_Specified;
end;

procedure vigenciaERP.SetdatajIni(Index: Integer; const AInteger: Integer);
begin
  FdatajIni := AInteger;
  FdatajIni_Specified := True;
end;

function vigenciaERP.datajIni_Specified(Index: Integer): boolean;
begin
  Result := FdatajIni_Specified;
end;

procedure vigenciaERP.Setid(Index: Integer; const AInt64: Int64);
begin
  Fid := AInt64;
  Fid_Specified := True;
end;

function vigenciaERP.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

destructor servicoAdicionalERP.Destroy;
begin
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  System.SysUtils.FreeAndNil(FvalorDeclarado);
  inherited Destroy;
end;

procedure servicoAdicionalERP.Setcategoria(Index: Integer; const Astring: string);
begin
  Fcategoria := Astring;
  Fcategoria_Specified := True;
end;

function servicoAdicionalERP.categoria_Specified(Index: Integer): boolean;
begin
  Result := Fcategoria_Specified;
end;

procedure servicoAdicionalERP.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function servicoAdicionalERP.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure servicoAdicionalERP.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function servicoAdicionalERP.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure servicoAdicionalERP.SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FdatajAtualizacao := AInteger;
  FdatajAtualizacao_Specified := True;
end;

function servicoAdicionalERP.datajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdatajAtualizacao_Specified;
end;

procedure servicoAdicionalERP.Setdescricao(Index: Integer; const Astring: string);
begin
  Fdescricao := Astring;
  Fdescricao_Specified := True;
end;

function servicoAdicionalERP.descricao_Specified(Index: Integer): boolean;
begin
  Result := Fdescricao_Specified;
end;

procedure servicoAdicionalERP.SethorajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FhorajAtualizacao := AInteger;
  FhorajAtualizacao_Specified := True;
end;

function servicoAdicionalERP.horajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FhorajAtualizacao_Specified;
end;

procedure servicoAdicionalERP.Setid(Index: Integer; const AInteger: Integer);
begin
  Fid := AInteger;
  Fid_Specified := True;
end;

function servicoAdicionalERP.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure servicoAdicionalERP.Setsigla(Index: Integer; const Astring: string);
begin
  Fsigla := Astring;
  Fsigla_Specified := True;
end;

function servicoAdicionalERP.sigla_Specified(Index: Integer): boolean;
begin
  Result := Fsigla_Specified;
end;

procedure servicoAdicionalERP.SetvalorDeclarado(Index: Integer; const AvalorDeclarado: valorDeclarado);
begin
  FvalorDeclarado := AvalorDeclarado;
  FvalorDeclarado_Specified := True;
end;

function servicoAdicionalERP.valorDeclarado_Specified(Index: Integer): boolean;
begin
  Result := FvalorDeclarado_Specified;
end;

destructor clienteERP.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fcontratos)-1 do
    System.SysUtils.FreeAndNil(Fcontratos[I]);
  System.SetLength(Fcontratos, 0);
  for I := 0 to System.Length(FgerenteConta)-1 do
    System.SysUtils.FreeAndNil(FgerenteConta[I]);
  System.SetLength(FgerenteConta, 0);
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  inherited Destroy;
end;

procedure clienteERP.Setcnpj(Index: Integer; const Astring: string);
begin
  Fcnpj := Astring;
  Fcnpj_Specified := True;
end;

function clienteERP.cnpj_Specified(Index: Integer): boolean;
begin
  Result := Fcnpj_Specified;
end;

procedure clienteERP.Setcontratos(Index: Integer; const AArray_Of_contratoERP: Array_Of_contratoERP);
begin
  Fcontratos := AArray_Of_contratoERP;
  Fcontratos_Specified := True;
end;

function clienteERP.contratos_Specified(Index: Integer): boolean;
begin
  Result := Fcontratos_Specified;
end;

procedure clienteERP.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function clienteERP.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure clienteERP.SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FdatajAtualizacao := AInteger;
  FdatajAtualizacao_Specified := True;
end;

function clienteERP.datajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdatajAtualizacao_Specified;
end;

procedure clienteERP.SetdescricaoStatusCliente(Index: Integer; const Astring: string);
begin
  FdescricaoStatusCliente := Astring;
  FdescricaoStatusCliente_Specified := True;
end;

function clienteERP.descricaoStatusCliente_Specified(Index: Integer): boolean;
begin
  Result := FdescricaoStatusCliente_Specified;
end;

procedure clienteERP.SetgerenteConta(Index: Integer; const AArray_Of_gerenteConta: Array_Of_gerenteConta);
begin
  FgerenteConta := AArray_Of_gerenteConta;
  FgerenteConta_Specified := True;
end;

function clienteERP.gerenteConta_Specified(Index: Integer): boolean;
begin
  Result := FgerenteConta_Specified;
end;

procedure clienteERP.SethorajAtualizacao(Index: Integer; const AInt64: Int64);
begin
  FhorajAtualizacao := AInt64;
  FhorajAtualizacao_Specified := True;
end;

function clienteERP.horajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FhorajAtualizacao_Specified;
end;

procedure clienteERP.SetinscricaoEstadual(Index: Integer; const Astring: string);
begin
  FinscricaoEstadual := Astring;
  FinscricaoEstadual_Specified := True;
end;

function clienteERP.inscricaoEstadual_Specified(Index: Integer): boolean;
begin
  Result := FinscricaoEstadual_Specified;
end;

procedure clienteERP.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function clienteERP.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure clienteERP.SetstatusCodigo(Index: Integer; const Astring: string);
begin
  FstatusCodigo := Astring;
  FstatusCodigo_Specified := True;
end;

function clienteERP.statusCodigo_Specified(Index: Integer): boolean;
begin
  Result := FstatusCodigo_Specified;
end;

destructor servicoERP.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FservicosAdicionais)-1 do
    System.SysUtils.FreeAndNil(FservicosAdicionais[I]);
  System.SetLength(FservicosAdicionais, 0);
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  System.SysUtils.FreeAndNil(FservicoSigep);
  System.SysUtils.FreeAndNil(Fvigencia);
  inherited Destroy;
end;

procedure servicoERP.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function servicoERP.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure servicoERP.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function servicoERP.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure servicoERP.SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FdatajAtualizacao := AInteger;
  FdatajAtualizacao_Specified := True;
end;

function servicoERP.datajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdatajAtualizacao_Specified;
end;

procedure servicoERP.Setdescricao(Index: Integer; const Astring: string);
begin
  Fdescricao := Astring;
  Fdescricao_Specified := True;
end;

function servicoERP.descricao_Specified(Index: Integer): boolean;
begin
  Result := Fdescricao_Specified;
end;

procedure servicoERP.SethorajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FhorajAtualizacao := AInteger;
  FhorajAtualizacao_Specified := True;
end;

function servicoERP.horajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FhorajAtualizacao_Specified;
end;

procedure servicoERP.SetservicoSigep(Index: Integer; const AservicoSigep: servicoSigep);
begin
  FservicoSigep := AservicoSigep;
  FservicoSigep_Specified := True;
end;

function servicoERP.servicoSigep_Specified(Index: Integer): boolean;
begin
  Result := FservicoSigep_Specified;
end;

procedure servicoERP.SetservicosAdicionais(Index: Integer; const AArray_Of_servicoAdicionalERP: Array_Of_servicoAdicionalERP);
begin
  FservicosAdicionais := AArray_Of_servicoAdicionalERP;
  FservicosAdicionais_Specified := True;
end;

function servicoERP.servicosAdicionais_Specified(Index: Integer): boolean;
begin
  Result := FservicosAdicionais_Specified;
end;

procedure servicoERP.Settipo1Codigo(Index: Integer; const Astring: string);
begin
  Ftipo1Codigo := Astring;
  Ftipo1Codigo_Specified := True;
end;

function servicoERP.tipo1Codigo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo1Codigo_Specified;
end;

procedure servicoERP.Settipo1Descricao(Index: Integer; const Astring: string);
begin
  Ftipo1Descricao := Astring;
  Ftipo1Descricao_Specified := True;
end;

function servicoERP.tipo1Descricao_Specified(Index: Integer): boolean;
begin
  Result := Ftipo1Descricao_Specified;
end;

procedure servicoERP.Settipo2Codigo(Index: Integer; const Astring: string);
begin
  Ftipo2Codigo := Astring;
  Ftipo2Codigo_Specified := True;
end;

function servicoERP.tipo2Codigo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo2Codigo_Specified;
end;

procedure servicoERP.Settipo2Descricao(Index: Integer; const Astring: string);
begin
  Ftipo2Descricao := Astring;
  Ftipo2Descricao_Specified := True;
end;

function servicoERP.tipo2Descricao_Specified(Index: Integer): boolean;
begin
  Result := Ftipo2Descricao_Specified;
end;

procedure servicoERP.Setvigencia(Index: Integer; const AvigenciaERP: vigenciaERP);
begin
  Fvigencia := AvigenciaERP;
  Fvigencia_Specified := True;
end;

function servicoERP.vigencia_Specified(Index: Integer): boolean;
begin
  Result := Fvigencia_Specified;
end;

destructor contratoERP.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcartoesPostagem)-1 do
    System.SysUtils.FreeAndNil(FcartoesPostagem[I]);
  System.SetLength(FcartoesPostagem, 0);
  System.SysUtils.FreeAndNil(Fcliente);
  System.SysUtils.FreeAndNil(FcontratoPK);
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  System.SysUtils.FreeAndNil(FdataVigenciaFim);
  System.SysUtils.FreeAndNil(FdataVigenciaInicio);
  System.SysUtils.FreeAndNil(FdiretoriaRegional);
  inherited Destroy;
end;

procedure contratoERP.SetcartoesPostagem(Index: Integer; const AArray_Of_cartaoPostagemERP: Array_Of_cartaoPostagemERP);
begin
  FcartoesPostagem := AArray_Of_cartaoPostagemERP;
  FcartoesPostagem_Specified := True;
end;

function contratoERP.cartoesPostagem_Specified(Index: Integer): boolean;
begin
  Result := FcartoesPostagem_Specified;
end;

procedure contratoERP.Setcliente(Index: Integer; const AclienteERP: clienteERP);
begin
  Fcliente := AclienteERP;
  Fcliente_Specified := True;
end;

function contratoERP.cliente_Specified(Index: Integer): boolean;
begin
  Result := Fcliente_Specified;
end;

procedure contratoERP.SetcodigoDiretoria(Index: Integer; const Astring: string);
begin
  FcodigoDiretoria := Astring;
  FcodigoDiretoria_Specified := True;
end;

function contratoERP.codigoDiretoria_Specified(Index: Integer): boolean;
begin
  Result := FcodigoDiretoria_Specified;
end;

procedure contratoERP.SetcontratoPK(Index: Integer; const AcontratoERPPK: contratoERPPK);
begin
  FcontratoPK := AcontratoERPPK;
  FcontratoPK_Specified := True;
end;

function contratoERP.contratoPK_Specified(Index: Integer): boolean;
begin
  Result := FcontratoPK_Specified;
end;

procedure contratoERP.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function contratoERP.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure contratoERP.SetdataAtualizacaoDDMMYYYY(Index: Integer; const Astring: string);
begin
  FdataAtualizacaoDDMMYYYY := Astring;
  FdataAtualizacaoDDMMYYYY_Specified := True;
end;

function contratoERP.dataAtualizacaoDDMMYYYY_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacaoDDMMYYYY_Specified;
end;

procedure contratoERP.SetdataVigenciaFim(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataVigenciaFim := ATXSDateTime;
  FdataVigenciaFim_Specified := True;
end;

function contratoERP.dataVigenciaFim_Specified(Index: Integer): boolean;
begin
  Result := FdataVigenciaFim_Specified;
end;

procedure contratoERP.SetdataVigenciaFimDDMMYYYY(Index: Integer; const Astring: string);
begin
  FdataVigenciaFimDDMMYYYY := Astring;
  FdataVigenciaFimDDMMYYYY_Specified := True;
end;

function contratoERP.dataVigenciaFimDDMMYYYY_Specified(Index: Integer): boolean;
begin
  Result := FdataVigenciaFimDDMMYYYY_Specified;
end;

procedure contratoERP.SetdataVigenciaInicio(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataVigenciaInicio := ATXSDateTime;
  FdataVigenciaInicio_Specified := True;
end;

function contratoERP.dataVigenciaInicio_Specified(Index: Integer): boolean;
begin
  Result := FdataVigenciaInicio_Specified;
end;

procedure contratoERP.SetdataVigenciaInicioDDMMYYYY(Index: Integer; const Astring: string);
begin
  FdataVigenciaInicioDDMMYYYY := Astring;
  FdataVigenciaInicioDDMMYYYY_Specified := True;
end;

function contratoERP.dataVigenciaInicioDDMMYYYY_Specified(Index: Integer): boolean;
begin
  Result := FdataVigenciaInicioDDMMYYYY_Specified;
end;

procedure contratoERP.SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FdatajAtualizacao := AInteger;
  FdatajAtualizacao_Specified := True;
end;

function contratoERP.datajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdatajAtualizacao_Specified;
end;

procedure contratoERP.SetdatajVigenciaFim(Index: Integer; const AInteger: Integer);
begin
  FdatajVigenciaFim := AInteger;
  FdatajVigenciaFim_Specified := True;
end;

function contratoERP.datajVigenciaFim_Specified(Index: Integer): boolean;
begin
  Result := FdatajVigenciaFim_Specified;
end;

procedure contratoERP.SetdatajVigenciaInicio(Index: Integer; const AInteger: Integer);
begin
  FdatajVigenciaInicio := AInteger;
  FdatajVigenciaInicio_Specified := True;
end;

function contratoERP.datajVigenciaInicio_Specified(Index: Integer): boolean;
begin
  Result := FdatajVigenciaInicio_Specified;
end;

procedure contratoERP.SetdescricaoDiretoriaRegional(Index: Integer; const Astring: string);
begin
  FdescricaoDiretoriaRegional := Astring;
  FdescricaoDiretoriaRegional_Specified := True;
end;

function contratoERP.descricaoDiretoriaRegional_Specified(Index: Integer): boolean;
begin
  Result := FdescricaoDiretoriaRegional_Specified;
end;

procedure contratoERP.SetdescricaoStatus(Index: Integer; const Astring: string);
begin
  FdescricaoStatus := Astring;
  FdescricaoStatus_Specified := True;
end;

function contratoERP.descricaoStatus_Specified(Index: Integer): boolean;
begin
  Result := FdescricaoStatus_Specified;
end;

procedure contratoERP.SetdiretoriaRegional(Index: Integer; const AunidadePostagemERP: unidadePostagemERP);
begin
  FdiretoriaRegional := AunidadePostagemERP;
  FdiretoriaRegional_Specified := True;
end;

function contratoERP.diretoriaRegional_Specified(Index: Integer): boolean;
begin
  Result := FdiretoriaRegional_Specified;
end;

procedure contratoERP.SethorajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FhorajAtualizacao := AInteger;
  FhorajAtualizacao_Specified := True;
end;

function contratoERP.horajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FhorajAtualizacao_Specified;
end;

procedure contratoERP.SetstatusCodigo(Index: Integer; const Astring: string);
begin
  FstatusCodigo := Astring;
  FstatusCodigo_Specified := True;
end;

function contratoERP.statusCodigo_Specified(Index: Integer): boolean;
begin
  Result := FstatusCodigo_Specified;
end;

destructor gerenteConta.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FclientesVisiveis)-1 do
    System.SysUtils.FreeAndNil(FclientesVisiveis[I]);
  System.SetLength(FclientesVisiveis, 0);
  for I := 0 to System.Length(FusuariosInstalacao)-1 do
    System.SysUtils.FreeAndNil(FusuariosInstalacao[I]);
  System.SetLength(FusuariosInstalacao, 0);
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  System.SysUtils.FreeAndNil(FdataInclusao);
  System.SysUtils.FreeAndNil(FdataSenha);
  inherited Destroy;
end;

procedure gerenteConta.SetclientesVisiveis(Index: Integer; const AArray_Of_clienteERP: Array_Of_clienteERP);
begin
  FclientesVisiveis := AArray_Of_clienteERP;
  FclientesVisiveis_Specified := True;
end;

function gerenteConta.clientesVisiveis_Specified(Index: Integer): boolean;
begin
  Result := FclientesVisiveis_Specified;
end;

procedure gerenteConta.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function gerenteConta.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure gerenteConta.SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataInclusao := ATXSDateTime;
  FdataInclusao_Specified := True;
end;

function gerenteConta.dataInclusao_Specified(Index: Integer): boolean;
begin
  Result := FdataInclusao_Specified;
end;

procedure gerenteConta.SetdataSenha(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataSenha := ATXSDateTime;
  FdataSenha_Specified := True;
end;

function gerenteConta.dataSenha_Specified(Index: Integer): boolean;
begin
  Result := FdataSenha_Specified;
end;

procedure gerenteConta.Setlogin(Index: Integer; const Astring: string);
begin
  Flogin := Astring;
  Flogin_Specified := True;
end;

function gerenteConta.login_Specified(Index: Integer): boolean;
begin
  Result := Flogin_Specified;
end;

procedure gerenteConta.Setmatricula(Index: Integer; const Astring: string);
begin
  Fmatricula := Astring;
  Fmatricula_Specified := True;
end;

function gerenteConta.matricula_Specified(Index: Integer): boolean;
begin
  Result := Fmatricula_Specified;
end;

procedure gerenteConta.Setsenha(Index: Integer; const Astring: string);
begin
  Fsenha := Astring;
  Fsenha_Specified := True;
end;

function gerenteConta.senha_Specified(Index: Integer): boolean;
begin
  Result := Fsenha_Specified;
end;

procedure gerenteConta.Setstatus(Index: Integer; const AstatusGerente: statusGerente);
begin
  Fstatus := AstatusGerente;
  Fstatus_Specified := True;
end;

function gerenteConta.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure gerenteConta.SettipoGerente(Index: Integer; const AtipoGerente: tipoGerente);
begin
  FtipoGerente := AtipoGerente;
  FtipoGerente_Specified := True;
end;

function gerenteConta.tipoGerente_Specified(Index: Integer): boolean;
begin
  Result := FtipoGerente_Specified;
end;

procedure gerenteConta.SetusuariosInstalacao(Index: Integer; const AArray_Of_usuarioInstalacao: Array_Of_usuarioInstalacao);
begin
  FusuariosInstalacao := AArray_Of_usuarioInstalacao;
  FusuariosInstalacao_Specified := True;
end;

function gerenteConta.usuariosInstalacao_Specified(Index: Integer): boolean;
begin
  Result := FusuariosInstalacao_Specified;
end;

procedure gerenteConta.Setvalidade(Index: Integer; const Astring: string);
begin
  Fvalidade := Astring;
  Fvalidade_Specified := True;
end;

function gerenteConta.validade_Specified(Index: Integer): boolean;
begin
  Result := Fvalidade_Specified;
end;

procedure objetoPostalPK.SetcodigoEtiqueta(Index: Integer; const Astring: string);
begin
  FcodigoEtiqueta := Astring;
  FcodigoEtiqueta_Specified := True;
end;

function objetoPostalPK.codigoEtiqueta_Specified(Index: Integer): boolean;
begin
  Result := FcodigoEtiqueta_Specified;
end;

destructor preListaPostagem.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FobjetosPostais)-1 do
    System.SysUtils.FreeAndNil(FobjetosPostais[I]);
  System.SetLength(FobjetosPostais, 0);
  System.SysUtils.FreeAndNil(FcartaoPostagem);
  System.SysUtils.FreeAndNil(FdataAtualizacaoCliente);
  System.SysUtils.FreeAndNil(FdataAtualizacaoSara);
  System.SysUtils.FreeAndNil(FdataFechamento);
  System.SysUtils.FreeAndNil(FdataPostagem);
  System.SysUtils.FreeAndNil(FdataPostagemSara);
  inherited Destroy;
end;

procedure preListaPostagem.SetcartaoPostagem(Index: Integer; const AcartaoPostagemERP: cartaoPostagemERP);
begin
  FcartaoPostagem := AcartaoPostagemERP;
  FcartaoPostagem_Specified := True;
end;

function preListaPostagem.cartaoPostagem_Specified(Index: Integer): boolean;
begin
  Result := FcartaoPostagem_Specified;
end;

procedure preListaPostagem.SetconteudoProibido(Index: Integer; const AsimNao: simNao);
begin
  FconteudoProibido := AsimNao;
  FconteudoProibido_Specified := True;
end;

function preListaPostagem.conteudoProibido_Specified(Index: Integer): boolean;
begin
  Result := FconteudoProibido_Specified;
end;

procedure preListaPostagem.SetdataAtualizacaoCliente(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacaoCliente := ATXSDateTime;
  FdataAtualizacaoCliente_Specified := True;
end;

function preListaPostagem.dataAtualizacaoCliente_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacaoCliente_Specified;
end;

procedure preListaPostagem.SetdataAtualizacaoSara(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacaoSara := ATXSDateTime;
  FdataAtualizacaoSara_Specified := True;
end;

function preListaPostagem.dataAtualizacaoSara_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacaoSara_Specified;
end;

procedure preListaPostagem.SetdataFechamento(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataFechamento := ATXSDateTime;
  FdataFechamento_Specified := True;
end;

function preListaPostagem.dataFechamento_Specified(Index: Integer): boolean;
begin
  Result := FdataFechamento_Specified;
end;

procedure preListaPostagem.SetdataPostagem(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataPostagem := ATXSDateTime;
  FdataPostagem_Specified := True;
end;

function preListaPostagem.dataPostagem_Specified(Index: Integer): boolean;
begin
  Result := FdataPostagem_Specified;
end;

procedure preListaPostagem.SetdataPostagemSara(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataPostagemSara := ATXSDateTime;
  FdataPostagemSara_Specified := True;
end;

function preListaPostagem.dataPostagemSara_Specified(Index: Integer): boolean;
begin
  Result := FdataPostagemSara_Specified;
end;

procedure preListaPostagem.SetobjetosPostais(Index: Integer; const AVerificaSeTodosObjetosCancelados: VerificaSeTodosObjetosCancelados);
begin
  FobjetosPostais := AVerificaSeTodosObjetosCancelados;
  FobjetosPostais_Specified := True;
end;

function preListaPostagem.objetosPostais_Specified(Index: Integer): boolean;
begin
  Result := FobjetosPostais_Specified;
end;

procedure preListaPostagem.SetplpXml(Index: Integer; const AArray_Of_unsignedShort: Array_Of_unsignedShort);
begin
  FplpXml := AArray_Of_unsignedShort;
  FplpXml_Specified := True;
end;

function preListaPostagem.plpXml_Specified(Index: Integer): boolean;
begin
  Result := FplpXml_Specified;
end;

procedure preListaPostagem.SetplpXmlRetorno(Index: Integer; const AArray_Of_unsignedShort: Array_Of_unsignedShort);
begin
  FplpXmlRetorno := AArray_Of_unsignedShort;
  FplpXmlRetorno_Specified := True;
end;

function preListaPostagem.plpXmlRetorno_Specified(Index: Integer): boolean;
begin
  Result := FplpXmlRetorno_Specified;
end;

procedure preListaPostagem.Setstatus(Index: Integer; const AstatusPlp: statusPlp);
begin
  Fstatus := AstatusPlp;
  Fstatus_Specified := True;
end;

function preListaPostagem.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure objetoSimplificado.Setdatahora_cancelamento(Index: Integer; const Astring: string);
begin
  Fdatahora_cancelamento := Astring;
  Fdatahora_cancelamento_Specified := True;
end;

function objetoSimplificado.datahora_cancelamento_Specified(Index: Integer): boolean;
begin
  Result := Fdatahora_cancelamento_Specified;
end;

procedure objetoSimplificado.Setnumero_pedido(Index: Integer; const AInteger: Integer);
begin
  Fnumero_pedido := AInteger;
  Fnumero_pedido_Specified := True;
end;

function objetoSimplificado.numero_pedido_Specified(Index: Integer): boolean;
begin
  Result := Fnumero_pedido_Specified;
end;

procedure objetoSimplificado.Setstatus_pedido(Index: Integer; const Astring: string);
begin
  Fstatus_pedido := Astring;
  Fstatus_pedido_Specified := True;
end;

function objetoSimplificado.status_pedido_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_pedido_Specified;
end;

procedure pessoa.Setbairro(Index: Integer; const Astring: string);
begin
  Fbairro := Astring;
  Fbairro_Specified := True;
end;

function pessoa.bairro_Specified(Index: Integer): boolean;
begin
  Result := Fbairro_Specified;
end;

procedure pessoa.Setcep(Index: Integer; const Astring: string);
begin
  Fcep := Astring;
  Fcep_Specified := True;
end;

function pessoa.cep_Specified(Index: Integer): boolean;
begin
  Result := Fcep_Specified;
end;

procedure pessoa.Setcidade(Index: Integer; const Astring: string);
begin
  Fcidade := Astring;
  Fcidade_Specified := True;
end;

function pessoa.cidade_Specified(Index: Integer): boolean;
begin
  Result := Fcidade_Specified;
end;

procedure pessoa.Setcomplemento(Index: Integer; const Astring: string);
begin
  Fcomplemento := Astring;
  Fcomplemento_Specified := True;
end;

function pessoa.complemento_Specified(Index: Integer): boolean;
begin
  Result := Fcomplemento_Specified;
end;

procedure pessoa.Setddd(Index: Integer; const Astring: string);
begin
  Fddd := Astring;
  Fddd_Specified := True;
end;

function pessoa.ddd_Specified(Index: Integer): boolean;
begin
  Result := Fddd_Specified;
end;

procedure pessoa.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function pessoa.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure pessoa.Setlogradouro(Index: Integer; const Astring: string);
begin
  Flogradouro := Astring;
  Flogradouro_Specified := True;
end;

function pessoa.logradouro_Specified(Index: Integer): boolean;
begin
  Result := Flogradouro_Specified;
end;

procedure pessoa.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function pessoa.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure pessoa.Setnumero(Index: Integer; const Astring: string);
begin
  Fnumero := Astring;
  Fnumero_Specified := True;
end;

function pessoa.numero_Specified(Index: Integer): boolean;
begin
  Result := Fnumero_Specified;
end;

procedure pessoa.Setreferencia(Index: Integer; const Astring: string);
begin
  Freferencia := Astring;
  Freferencia_Specified := True;
end;

function pessoa.referencia_Specified(Index: Integer): boolean;
begin
  Result := Freferencia_Specified;
end;

procedure pessoa.Settelefone(Index: Integer; const Astring: string);
begin
  Ftelefone := Astring;
  Ftelefone_Specified := True;
end;

function pessoa.telefone_Specified(Index: Integer): boolean;
begin
  Result := Ftelefone_Specified;
end;

procedure pessoa.Setuf(Index: Integer; const Astring: string);
begin
  Fuf := Astring;
  Fuf_Specified := True;
end;

function pessoa.uf_Specified(Index: Integer): boolean;
begin
  Result := Fuf_Specified;
end;

procedure servicoAdicionalTO.Setcategoria(Index: Integer; const Astring: string);
begin
  Fcategoria := Astring;
  Fcategoria_Specified := True;
end;

function servicoAdicionalTO.categoria_Specified(Index: Integer): boolean;
begin
  Result := Fcategoria_Specified;
end;

procedure servicoAdicionalTO.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function servicoAdicionalTO.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure servicoAdicionalTO.Setsigla(Index: Integer; const Astring: string);
begin
  Fsigla := Astring;
  Fsigla_Specified := True;
end;

function servicoAdicionalTO.sigla_Specified(Index: Integer): boolean;
begin
  Result := Fsigla_Specified;
end;

procedure servicoAdicionalTO.Settipo(Index: Integer; const Astring: string);
begin
  Ftipo := Astring;
  Ftipo_Specified := True;
end;

function servicoAdicionalTO.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

destructor retornoCancelamento.Destroy;
begin
  System.SysUtils.FreeAndNil(Fobjeto_postal);
  inherited Destroy;
end;

procedure retornoCancelamento.Setcod_erro(Index: Integer; const Astring: string);
begin
  Fcod_erro := Astring;
  Fcod_erro_Specified := True;
end;

function retornoCancelamento.cod_erro_Specified(Index: Integer): boolean;
begin
  Result := Fcod_erro_Specified;
end;

procedure retornoCancelamento.Setcodigo_administrativo(Index: Integer; const Astring: string);
begin
  Fcodigo_administrativo := Astring;
  Fcodigo_administrativo_Specified := True;
end;

function retornoCancelamento.codigo_administrativo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_administrativo_Specified;
end;

procedure retornoCancelamento.Setdata(Index: Integer; const Astring: string);
begin
  Fdata := Astring;
  Fdata_Specified := True;
end;

function retornoCancelamento.data_Specified(Index: Integer): boolean;
begin
  Result := Fdata_Specified;
end;

procedure retornoCancelamento.Sethora(Index: Integer; const Astring: string);
begin
  Fhora := Astring;
  Fhora_Specified := True;
end;

function retornoCancelamento.hora_Specified(Index: Integer): boolean;
begin
  Result := Fhora_Specified;
end;

procedure retornoCancelamento.Setmsg_erro(Index: Integer; const Astring: string);
begin
  Fmsg_erro := Astring;
  Fmsg_erro_Specified := True;
end;

function retornoCancelamento.msg_erro_Specified(Index: Integer): boolean;
begin
  Result := Fmsg_erro_Specified;
end;

procedure retornoCancelamento.Setobjeto_postal(Index: Integer; const AobjetoSimplificado: objetoSimplificado);
begin
  Fobjeto_postal := AobjetoSimplificado;
  Fobjeto_postal_Specified := True;
end;

function retornoCancelamento.objeto_postal_Specified(Index: Integer): boolean;
begin
  Result := Fobjeto_postal_Specified;
end;

procedure SQLException2.SeterrorCode(Index: Integer; const AInteger: Integer);
begin
  FerrorCode := AInteger;
  FerrorCode_Specified := True;
end;

function SQLException2.errorCode_Specified(Index: Integer): boolean;
begin
  Result := FerrorCode_Specified;
end;

procedure SQLException2.SetsQLState(Index: Integer; const Astring: string);
begin
  FsQLState := Astring;
  FsQLState_Specified := True;
end;

function SQLException2.sQLState_Specified(Index: Integer): boolean;
begin
  Result := FsQLState_Specified;
end;

procedure SQLException2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function SQLException2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure Exception2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure ErroMontagemRelatorio2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function ErroMontagemRelatorio2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure objeto.Setdesc(Index: Integer; const Astring: string);
begin
  Fdesc := Astring;
  Fdesc_Specified := True;
end;

function objeto.desc_Specified(Index: Integer): boolean;
begin
  Result := Fdesc_Specified;
end;

procedure objeto.Setentrega(Index: Integer; const Astring: string);
begin
  Fentrega := Astring;
  Fentrega_Specified := True;
end;

function objeto.entrega_Specified(Index: Integer): boolean;
begin
  Result := Fentrega_Specified;
end;

procedure objeto.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function objeto.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure objeto.Setitem(Index: Integer; const Astring: string);
begin
  Fitem := Astring;
  Fitem_Specified := True;
end;

function objeto.item_Specified(Index: Integer): boolean;
begin
  Result := Fitem_Specified;
end;

procedure objeto.Setnum(Index: Integer; const Astring: string);
begin
  Fnum := Astring;
  Fnum_Specified := True;
end;

function objeto.num_Specified(Index: Integer): boolean;
begin
  Result := Fnum_Specified;
end;

destructor cartaoPostagemERP.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fcontratos)-1 do
    System.SysUtils.FreeAndNil(Fcontratos[I]);
  System.SetLength(Fcontratos, 0);
  for I := 0 to System.Length(Fservicos)-1 do
    System.SysUtils.FreeAndNil(Fservicos[I]);
  System.SetLength(Fservicos, 0);
  for I := 0 to System.Length(FunidadesPostagem)-1 do
    System.SysUtils.FreeAndNil(FunidadesPostagem[I]);
  System.SetLength(FunidadesPostagem, 0);
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  System.SysUtils.FreeAndNil(FdataVigenciaFim);
  System.SysUtils.FreeAndNil(FdataVigenciaInicio);
  inherited Destroy;
end;

procedure cartaoPostagemERP.SetcodigoAdministrativo(Index: Integer; const Astring: string);
begin
  FcodigoAdministrativo := Astring;
  FcodigoAdministrativo_Specified := True;
end;

function cartaoPostagemERP.codigoAdministrativo_Specified(Index: Integer): boolean;
begin
  Result := FcodigoAdministrativo_Specified;
end;

procedure cartaoPostagemERP.Setcontratos(Index: Integer; const AArray_Of_contratoERP: Array_Of_contratoERP);
begin
  Fcontratos := AArray_Of_contratoERP;
  Fcontratos_Specified := True;
end;

function cartaoPostagemERP.contratos_Specified(Index: Integer): boolean;
begin
  Result := Fcontratos_Specified;
end;

procedure cartaoPostagemERP.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function cartaoPostagemERP.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure cartaoPostagemERP.SetdataVigenciaFim(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataVigenciaFim := ATXSDateTime;
  FdataVigenciaFim_Specified := True;
end;

function cartaoPostagemERP.dataVigenciaFim_Specified(Index: Integer): boolean;
begin
  Result := FdataVigenciaFim_Specified;
end;

procedure cartaoPostagemERP.SetdataVigenciaInicio(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataVigenciaInicio := ATXSDateTime;
  FdataVigenciaInicio_Specified := True;
end;

function cartaoPostagemERP.dataVigenciaInicio_Specified(Index: Integer): boolean;
begin
  Result := FdataVigenciaInicio_Specified;
end;

procedure cartaoPostagemERP.SetdatajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FdatajAtualizacao := AInteger;
  FdatajAtualizacao_Specified := True;
end;

function cartaoPostagemERP.datajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdatajAtualizacao_Specified;
end;

procedure cartaoPostagemERP.SetdatajVigenciaFim(Index: Integer; const AInteger: Integer);
begin
  FdatajVigenciaFim := AInteger;
  FdatajVigenciaFim_Specified := True;
end;

function cartaoPostagemERP.datajVigenciaFim_Specified(Index: Integer): boolean;
begin
  Result := FdatajVigenciaFim_Specified;
end;

procedure cartaoPostagemERP.SetdatajVigenciaInicio(Index: Integer; const AInteger: Integer);
begin
  FdatajVigenciaInicio := AInteger;
  FdatajVigenciaInicio_Specified := True;
end;

function cartaoPostagemERP.datajVigenciaInicio_Specified(Index: Integer): boolean;
begin
  Result := FdatajVigenciaInicio_Specified;
end;

procedure cartaoPostagemERP.SetdescricaoStatusCartao(Index: Integer; const Astring: string);
begin
  FdescricaoStatusCartao := Astring;
  FdescricaoStatusCartao_Specified := True;
end;

function cartaoPostagemERP.descricaoStatusCartao_Specified(Index: Integer): boolean;
begin
  Result := FdescricaoStatusCartao_Specified;
end;

procedure cartaoPostagemERP.SetdescricaoUnidadePostagemGenerica(Index: Integer; const Astring: string);
begin
  FdescricaoUnidadePostagemGenerica := Astring;
  FdescricaoUnidadePostagemGenerica_Specified := True;
end;

function cartaoPostagemERP.descricaoUnidadePostagemGenerica_Specified(Index: Integer): boolean;
begin
  Result := FdescricaoUnidadePostagemGenerica_Specified;
end;

procedure cartaoPostagemERP.SethorajAtualizacao(Index: Integer; const AInteger: Integer);
begin
  FhorajAtualizacao := AInteger;
  FhorajAtualizacao_Specified := True;
end;

function cartaoPostagemERP.horajAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FhorajAtualizacao_Specified;
end;

procedure cartaoPostagemERP.Setnumero(Index: Integer; const Astring: string);
begin
  Fnumero := Astring;
  Fnumero_Specified := True;
end;

function cartaoPostagemERP.numero_Specified(Index: Integer): boolean;
begin
  Result := Fnumero_Specified;
end;

procedure cartaoPostagemERP.Setservicos(Index: Integer; const AbuscaServicosResponse: buscaServicosResponse);
begin
  Fservicos := AbuscaServicosResponse;
  Fservicos_Specified := True;
end;

function cartaoPostagemERP.servicos_Specified(Index: Integer): boolean;
begin
  Result := Fservicos_Specified;
end;

procedure cartaoPostagemERP.SetstatusCartaoPostagem(Index: Integer; const Astring: string);
begin
  FstatusCartaoPostagem := Astring;
  FstatusCartaoPostagem_Specified := True;
end;

function cartaoPostagemERP.statusCartaoPostagem_Specified(Index: Integer): boolean;
begin
  Result := FstatusCartaoPostagem_Specified;
end;

procedure cartaoPostagemERP.SetstatusCodigo(Index: Integer; const Astring: string);
begin
  FstatusCodigo := Astring;
  FstatusCodigo_Specified := True;
end;

function cartaoPostagemERP.statusCodigo_Specified(Index: Integer): boolean;
begin
  Result := FstatusCodigo_Specified;
end;

procedure cartaoPostagemERP.SetunidadeGenerica(Index: Integer; const Astring: string);
begin
  FunidadeGenerica := Astring;
  FunidadeGenerica_Specified := True;
end;

function cartaoPostagemERP.unidadeGenerica_Specified(Index: Integer): boolean;
begin
  Result := FunidadeGenerica_Specified;
end;

procedure cartaoPostagemERP.SetunidadesPostagem(Index: Integer; const AArray_Of_unidadePostagemERP: Array_Of_unidadePostagemERP);
begin
  FunidadesPostagem := AArray_Of_unidadePostagemERP;
  FunidadesPostagem_Specified := True;
end;

function cartaoPostagemERP.unidadesPostagem_Specified(Index: Integer): boolean;
begin
  Result := FunidadesPostagem_Specified;
end;

procedure mensagemParametrizadaTO.Setmensagem(Index: Integer; const Astring: string);
begin
  Fmensagem := Astring;
  Fmensagem_Specified := True;
end;

function mensagemParametrizadaTO.mensagem_Specified(Index: Integer): boolean;
begin
  Result := Fmensagem_Specified;
end;

procedure mensagemParametrizadaTO.Settipo(Index: Integer; const AtipoMensagem: tipoMensagem);
begin
  Ftipo := AtipoMensagem;
  Ftipo_Specified := True;
end;

function mensagemParametrizadaTO.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

procedure mensagemParametrizadaTO.Settitulo(Index: Integer; const Astring: string);
begin
  Ftitulo := Astring;
  Ftitulo_Specified := True;
end;

function mensagemParametrizadaTO.titulo_Specified(Index: Integer): boolean;
begin
  Result := Ftitulo_Specified;
end;

procedure remetente.Setcelular(Index: Integer; const Astring: string);
begin
  Fcelular := Astring;
  Fcelular_Specified := True;
end;

function remetente.celular_Specified(Index: Integer): boolean;
begin
  Result := Fcelular_Specified;
end;

procedure remetente.Setddd_celular(Index: Integer; const Astring: string);
begin
  Fddd_celular := Astring;
  Fddd_celular_Specified := True;
end;

function remetente.ddd_celular_Specified(Index: Integer): boolean;
begin
  Result := Fddd_celular_Specified;
end;

procedure remetente.Setidentificacao(Index: Integer; const Astring: string);
begin
  Fidentificacao := Astring;
  Fidentificacao_Specified := True;
end;

function remetente.identificacao_Specified(Index: Integer): boolean;
begin
  Result := Fidentificacao_Specified;
end;

procedure remetente.Setsms(Index: Integer; const Astring: string);
begin
  Fsms := Astring;
  Fsms_Specified := True;
end;

function remetente.sms_Specified(Index: Integer): boolean;
begin
  Result := Fsms_Specified;
end;

procedure embalagemLRSMaster.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function embalagemLRSMaster.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure embalagemLRSMaster.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function embalagemLRSMaster.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure embalagemLRSMaster.Settipo(Index: Integer; const Astring: string);
begin
  Ftipo := Astring;
  Ftipo_Specified := True;
end;

function embalagemLRSMaster.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

destructor chancelaMaster.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FservicosSigep)-1 do
    System.SysUtils.FreeAndNil(FservicosSigep[I]);
  System.SetLength(FservicosSigep, 0);
  System.SysUtils.FreeAndNil(FdataAtualizacao);
  inherited Destroy;
end;

procedure chancelaMaster.Setativo(Index: Integer; const AsimNao: simNao);
begin
  Fativo := AsimNao;
  Fativo_Specified := True;
end;

function chancelaMaster.ativo_Specified(Index: Integer): boolean;
begin
  Result := Fativo_Specified;
end;

procedure chancelaMaster.Setchancela(Index: Integer; const AArray: TArray<System.Byte>);
begin
  Fchancela := AArray;
  Fchancela_Specified := True;
end;

function chancelaMaster.chancela_Specified(Index: Integer): boolean;
begin
  Result := Fchancela_Specified;
end;

procedure chancelaMaster.SetdataAtualizacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAtualizacao := ATXSDateTime;
  FdataAtualizacao_Specified := True;
end;

function chancelaMaster.dataAtualizacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAtualizacao_Specified;
end;

procedure chancelaMaster.Setdescricao(Index: Integer; const Astring: string);
begin
  Fdescricao := Astring;
  Fdescricao_Specified := True;
end;

function chancelaMaster.descricao_Specified(Index: Integer): boolean;
begin
  Result := Fdescricao_Specified;
end;

procedure chancelaMaster.Setid(Index: Integer; const AInt64: Int64);
begin
  Fid := AInt64;
  Fid_Specified := True;
end;

function chancelaMaster.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure chancelaMaster.SetservicosSigep(Index: Integer; const AArray_Of_servicoSigep: Array_Of_servicoSigep);
begin
  FservicosSigep := AArray_Of_servicoSigep;
  FservicosSigep_Specified := True;
end;

function chancelaMaster.servicosSigep_Specified(Index: Integer): boolean;
begin
  Result := FservicosSigep_Specified;
end;

procedure valorDeclarado.Setmaximo(Index: Integer; const ADouble: Double);
begin
  Fmaximo := ADouble;
  Fmaximo_Specified := True;
end;

function valorDeclarado.maximo_Specified(Index: Integer): boolean;
begin
  Result := Fmaximo_Specified;
end;

procedure valorDeclarado.Setminimo(Index: Integer; const ADouble: Double);
begin
  Fminimo := ADouble;
  Fminimo_Specified := True;
end;

function valorDeclarado.minimo_Specified(Index: Integer): boolean;
begin
  Result := Fminimo_Specified;
end;

destructor dimensaoTO.Destroy;
begin
  System.SysUtils.FreeAndNil(Faltura);
  System.SysUtils.FreeAndNil(Fcomprimento);
  System.SysUtils.FreeAndNil(Fdiametro);
  System.SysUtils.FreeAndNil(Flargura);
  System.SysUtils.FreeAndNil(Fpeso);
  System.SysUtils.FreeAndNil(Fsoma);
  inherited Destroy;
end;

procedure dimensaoTO.Setaltura(Index: Integer; const AmedidaTO: medidaTO);
begin
  Faltura := AmedidaTO;
  Faltura_Specified := True;
end;

function dimensaoTO.altura_Specified(Index: Integer): boolean;
begin
  Result := Faltura_Specified;
end;

procedure dimensaoTO.Setcomprimento(Index: Integer; const AmedidaTO: medidaTO);
begin
  Fcomprimento := AmedidaTO;
  Fcomprimento_Specified := True;
end;

function dimensaoTO.comprimento_Specified(Index: Integer): boolean;
begin
  Result := Fcomprimento_Specified;
end;

procedure dimensaoTO.Setdiametro(Index: Integer; const AmedidaTO: medidaTO);
begin
  Fdiametro := AmedidaTO;
  Fdiametro_Specified := True;
end;

function dimensaoTO.diametro_Specified(Index: Integer): boolean;
begin
  Result := Fdiametro_Specified;
end;

procedure dimensaoTO.Setlargura(Index: Integer; const AmedidaTO: medidaTO);
begin
  Flargura := AmedidaTO;
  Flargura_Specified := True;
end;

function dimensaoTO.largura_Specified(Index: Integer): boolean;
begin
  Result := Flargura_Specified;
end;

procedure dimensaoTO.Setpeso(Index: Integer; const AmedidaTO: medidaTO);
begin
  Fpeso := AmedidaTO;
  Fpeso_Specified := True;
end;

function dimensaoTO.peso_Specified(Index: Integer): boolean;
begin
  Result := Fpeso_Specified;
end;

procedure dimensaoTO.Setsoma(Index: Integer; const AmedidaTO: medidaTO);
begin
  Fsoma := AmedidaTO;
  Fsoma_Specified := True;
end;

function dimensaoTO.soma_Specified(Index: Integer): boolean;
begin
  Result := Fsoma_Specified;
end;

destructor medidaTO.Destroy;
begin
  System.SysUtils.FreeAndNil(Fmaximo);
  System.SysUtils.FreeAndNil(Fminimo);
  inherited Destroy;
end;

procedure medidaTO.Setmaximo(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  Fmaximo := ATXSDecimal;
  Fmaximo_Specified := True;
end;

function medidaTO.maximo_Specified(Index: Integer): boolean;
begin
  Result := Fmaximo_Specified;
end;

procedure medidaTO.Setminimo(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  Fminimo := ATXSDecimal;
  Fminimo_Specified := True;
end;

function medidaTO.minimo_Specified(Index: Integer): boolean;
begin
  Result := Fminimo_Specified;
end;

destructor valePostal.Destroy;
begin
  System.SysUtils.FreeAndNil(FvapDhTransacao);
  inherited Destroy;
end;

procedure valePostal.SetcidNoCidade(Index: Integer; const Astring: string);
begin
  FcidNoCidade := Astring;
  FcidNoCidade_Specified := True;
end;

function valePostal.cidNoCidade_Specified(Index: Integer): boolean;
begin
  Result := FcidNoCidade_Specified;
end;

procedure valePostal.SetctcCoAadministrativo(Index: Integer; const Astring: string);
begin
  FctcCoAadministrativo := Astring;
  FctcCoAadministrativo_Specified := True;
end;

function valePostal.ctcCoAadministrativo_Specified(Index: Integer): boolean;
begin
  Result := FctcCoAadministrativo_Specified;
end;

procedure valePostal.SetctcNuContrato(Index: Integer; const AInt64: Int64);
begin
  FctcNuContrato := AInt64;
  FctcNuContrato_Specified := True;
end;

function valePostal.ctcNuContrato_Specified(Index: Integer): boolean;
begin
  Result := FctcNuContrato_Specified;
end;

procedure valePostal.SetctcNuContratoEct(Index: Integer; const AInt64: Int64);
begin
  FctcNuContratoEct := AInt64;
  FctcNuContratoEct_Specified := True;
end;

function valePostal.ctcNuContratoEct_Specified(Index: Integer): boolean;
begin
  Result := FctcNuContratoEct_Specified;
end;

procedure valePostal.SetcvpEdBairro(Index: Integer; const Astring: string);
begin
  FcvpEdBairro := Astring;
  FcvpEdBairro_Specified := True;
end;

function valePostal.cvpEdBairro_Specified(Index: Integer): boolean;
begin
  Result := FcvpEdBairro_Specified;
end;

procedure valePostal.SetcvpEdCliente(Index: Integer; const Astring: string);
begin
  FcvpEdCliente := Astring;
  FcvpEdCliente_Specified := True;
end;

function valePostal.cvpEdCliente_Specified(Index: Integer): boolean;
begin
  Result := FcvpEdCliente_Specified;
end;

procedure valePostal.SetcvpEdComplemento(Index: Integer; const Astring: string);
begin
  FcvpEdComplemento := Astring;
  FcvpEdComplemento_Specified := True;
end;

function valePostal.cvpEdComplemento_Specified(Index: Integer): boolean;
begin
  Result := FcvpEdComplemento_Specified;
end;

procedure valePostal.SetcvpEdNumero(Index: Integer; const Astring: string);
begin
  FcvpEdNumero := Astring;
  FcvpEdNumero_Specified := True;
end;

function valePostal.cvpEdNumero_Specified(Index: Integer): boolean;
begin
  Result := FcvpEdNumero_Specified;
end;

procedure valePostal.SetcvpNoCliente(Index: Integer; const Astring: string);
begin
  FcvpNoCliente := Astring;
  FcvpNoCliente_Specified := True;
end;

function valePostal.cvpNoCliente_Specified(Index: Integer): boolean;
begin
  Result := FcvpNoCliente_Specified;
end;

procedure valePostal.SetcvpNuCep(Index: Integer; const AInt64: Int64);
begin
  FcvpNuCep := AInt64;
  FcvpNuCep_Specified := True;
end;

function valePostal.cvpNuCep_Specified(Index: Integer): boolean;
begin
  Result := FcvpNuCep_Specified;
end;

procedure valePostal.SetdescricaoErro(Index: Integer; const Astring: string);
begin
  FdescricaoErro := Astring;
  FdescricaoErro_Specified := True;
end;

function valePostal.descricaoErro_Specified(Index: Integer): boolean;
begin
  Result := FdescricaoErro_Specified;
end;

procedure valePostal.SetestSgEstado(Index: Integer; const Astring: string);
begin
  FestSgEstado := Astring;
  FestSgEstado_Specified := True;
end;

function valePostal.estSgEstado_Specified(Index: Integer): boolean;
begin
  Result := FestSgEstado_Specified;
end;

procedure valePostal.SetprsCoProdutoServico(Index: Integer; const AInt64: Int64);
begin
  FprsCoProdutoServico := AInt64;
  FprsCoProdutoServico_Specified := True;
end;

function valePostal.prsCoProdutoServico_Specified(Index: Integer): boolean;
begin
  Result := FprsCoProdutoServico_Specified;
end;

procedure valePostal.SetpveNu(Index: Integer; const AInt64: Int64);
begin
  FpveNu := AInt64;
  FpveNu_Specified := True;
end;

function valePostal.pveNu_Specified(Index: Integer): boolean;
begin
  Result := FpveNu_Specified;
end;

procedure valePostal.SetpveOrgNuAgencia(Index: Integer; const AInt64: Int64);
begin
  FpveOrgNuAgencia := AInt64;
  FpveOrgNuAgencia_Specified := True;
end;

function valePostal.pveOrgNuAgencia_Specified(Index: Integer): boolean;
begin
  Result := FpveOrgNuAgencia_Specified;
end;

procedure valePostal.SetpveOrgNuAgenciaDes(Index: Integer; const AInt64: Int64);
begin
  FpveOrgNuAgenciaDes := AInt64;
  FpveOrgNuAgenciaDes_Specified := True;
end;

function valePostal.pveOrgNuAgenciaDes_Specified(Index: Integer): boolean;
begin
  Result := FpveOrgNuAgenciaDes_Specified;
end;

procedure valePostal.SetpveOrgNuAgenciaOri(Index: Integer; const AInt64: Int64);
begin
  FpveOrgNuAgenciaOri := AInt64;
  FpveOrgNuAgenciaOri_Specified := True;
end;

function valePostal.pveOrgNuAgenciaOri_Specified(Index: Integer): boolean;
begin
  Result := FpveOrgNuAgenciaOri_Specified;
end;

procedure valePostal.SetsitNoSituacao(Index: Integer; const Astring: string);
begin
  FsitNoSituacao := Astring;
  FsitNoSituacao_Specified := True;
end;

function valePostal.sitNoSituacao_Specified(Index: Integer): boolean;
begin
  Result := FsitNoSituacao_Specified;
end;

procedure valePostal.SettlgTxDescricao(Index: Integer; const Astring: string);
begin
  FtlgTxDescricao := Astring;
  FtlgTxDescricao_Specified := True;
end;

function valePostal.tlgTxDescricao_Specified(Index: Integer): boolean;
begin
  Result := FtlgTxDescricao_Specified;
end;

procedure valePostal.SetvapDhTransacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FvapDhTransacao := ATXSDateTime;
  FvapDhTransacao_Specified := True;
end;

function valePostal.vapDhTransacao_Specified(Index: Integer): boolean;
begin
  Result := FvapDhTransacao_Specified;
end;

procedure valePostal.SetvapNuEtiquetaEncomenda(Index: Integer; const Astring: string);
begin
  FvapNuEtiquetaEncomenda := Astring;
  FvapNuEtiquetaEncomenda_Specified := True;
end;

function valePostal.vapNuEtiquetaEncomenda_Specified(Index: Integer): boolean;
begin
  Result := FvapNuEtiquetaEncomenda_Specified;
end;

procedure valePostal.SetvapVrCobradoEct(Index: Integer; const ADouble: Double);
begin
  FvapVrCobradoEct := ADouble;
  FvapVrCobradoEct_Specified := True;
end;

function valePostal.vapVrCobradoEct_Specified(Index: Integer): boolean;
begin
  Result := FvapVrCobradoEct_Specified;
end;

procedure valePostal.SetvapVrNominal(Index: Integer; const ADouble: Double);
begin
  FvapVrNominal := ADouble;
  FvapVrNominal_Specified := True;
end;

function valePostal.vapVrNominal_Specified(Index: Integer): boolean;
begin
  Result := FvapVrNominal_Specified;
end;

procedure produto.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function produto.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure produto.Setqtd(Index: Integer; const Astring: string);
begin
  Fqtd := Astring;
  Fqtd_Specified := True;
end;

function produto.qtd_Specified(Index: Integer): boolean;
begin
  Result := Fqtd_Specified;
end;

procedure produto.Settipo(Index: Integer; const Astring: string);
begin
  Ftipo := Astring;
  Ftipo_Specified := True;
end;

function produto.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

destructor coleta.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproduto)-1 do
    System.SysUtils.FreeAndNil(Fproduto[I]);
  System.SetLength(Fproduto, 0);
  System.SysUtils.FreeAndNil(Fremetente);
  inherited Destroy;
end;

procedure coleta.Setcklist(Index: Integer; const Astring: string);
begin
  Fcklist := Astring;
  Fcklist_Specified := True;
end;

function coleta.cklist_Specified(Index: Integer): boolean;
begin
  Result := Fcklist_Specified;
end;

procedure coleta.Setdescricao(Index: Integer; const Astring: string);
begin
  Fdescricao := Astring;
  Fdescricao_Specified := True;
end;

function coleta.descricao_Specified(Index: Integer): boolean;
begin
  Result := Fdescricao_Specified;
end;

procedure coleta.Setdocumento(Index: Integer; const AbuscaServicosValorDeclaradoResponse: buscaServicosValorDeclaradoResponse);
begin
  Fdocumento := AbuscaServicosValorDeclaradoResponse;
  Fdocumento_Specified := True;
end;

function coleta.documento_Specified(Index: Integer): boolean;
begin
  Result := Fdocumento_Specified;
end;

procedure coleta.Setid_cliente(Index: Integer; const Astring: string);
begin
  Fid_cliente := Astring;
  Fid_cliente_Specified := True;
end;

function coleta.id_cliente_Specified(Index: Integer): boolean;
begin
  Result := Fid_cliente_Specified;
end;

procedure coleta.Setproduto(Index: Integer; const AArray_Of_produto: Array_Of_produto);
begin
  Fproduto := AArray_Of_produto;
  Fproduto_Specified := True;
end;

function coleta.produto_Specified(Index: Integer): boolean;
begin
  Result := Fproduto_Specified;
end;

procedure coleta.Setremetente(Index: Integer; const Aremetente: remetente);
begin
  Fremetente := Aremetente;
  Fremetente_Specified := True;
end;

function coleta.remetente_Specified(Index: Integer): boolean;
begin
  Result := Fremetente_Specified;
end;

procedure coleta.Settipo(Index: Integer; const Astring: string);
begin
  Ftipo := Astring;
  Ftipo_Specified := True;
end;

function coleta.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

procedure coleta.Setvalor_declarado(Index: Integer; const Astring: string);
begin
  Fvalor_declarado := Astring;
  Fvalor_declarado_Specified := True;
end;

function coleta.valor_declarado_Specified(Index: Integer): boolean;
begin
  Result := Fvalor_declarado_Specified;
end;

destructor coletaReversa.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fobj_col)-1 do
    System.SysUtils.FreeAndNil(Fobj_col[I]);
  System.SetLength(Fobj_col, 0);
  inherited Destroy;
end;

procedure coletaReversa.Setag(Index: Integer; const Astring: string);
begin
  Fag := Astring;
  Fag_Specified := True;
end;

function coletaReversa.ag_Specified(Index: Integer): boolean;
begin
  Result := Fag_Specified;
end;

procedure coletaReversa.Setar(Index: Integer; const AInteger: Integer);
begin
  Far := AInteger;
  Far_Specified := True;
end;

function coletaReversa.ar_Specified(Index: Integer): boolean;
begin
  Result := Far_Specified;
end;

procedure coletaReversa.Setcartao(Index: Integer; const Astring: string);
begin
  Fcartao := Astring;
  Fcartao_Specified := True;
end;

function coletaReversa.cartao_Specified(Index: Integer): boolean;
begin
  Result := Fcartao_Specified;
end;

procedure coletaReversa.Setnumero(Index: Integer; const AInteger: Integer);
begin
  Fnumero := AInteger;
  Fnumero_Specified := True;
end;

function coletaReversa.numero_Specified(Index: Integer): boolean;
begin
  Result := Fnumero_Specified;
end;

procedure coletaReversa.Setobj_col(Index: Integer; const AArray_Of_objeto: Array_Of_objeto);
begin
  Fobj_col := AArray_Of_objeto;
  Fobj_col_Specified := True;
end;

function coletaReversa.obj_col_Specified(Index: Integer): boolean;
begin
  Result := Fobj_col_Specified;
end;

procedure coletaReversa.Setservico_adicional(Index: Integer; const Astring: string);
begin
  Fservico_adicional := Astring;
  Fservico_adicional_Specified := True;
end;

function coletaReversa.servico_adicional_Specified(Index: Integer): boolean;
begin
  Result := Fservico_adicional_Specified;
end;

procedure coletaSimultanea.Setobj(Index: Integer; const Astring: string);
begin
  Fobj := Astring;
  Fobj_Specified := True;
end;

function coletaSimultanea.obj_Specified(Index: Integer): boolean;
begin
  Result := Fobj_Specified;
end;

procedure coletaSimultanea.Setobs(Index: Integer; const Astring: string);
begin
  Fobs := Astring;
  Fobs_Specified := True;
end;

function coletaSimultanea.obs_Specified(Index: Integer): boolean;
begin
  Result := Fobs_Specified;
end;

initialization
  { AtendeCliente }
  InvRegistry.RegisterInterface(TypeInfo(AtendeCliente), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(AtendeCliente), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(AtendeCliente), ioDocument);
  { AtendeCliente.buscaServicosAdicionaisAtivos }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaServicosAdicionaisAtivos', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosAdicionaisAtivos', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosAdicionaisAtivos', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosAdicionaisAtivos', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.fechaPlp }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'fechaPlp', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlp', 'xml', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlp', 'idPlpCliente', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlp', 'cartaoPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlp', 'faixaEtiquetas', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlp', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlp', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlp', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.calculaTarifaServico }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'codServico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'cepOrigem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'cepDestino', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'peso', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'codFormato', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'comprimento', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'altura', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'largura', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'diametro', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'codMaoPropria', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'valorDeclarado', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'codAvisoRecebimento', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'calculaTarifaServico', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.validaPlp }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'validaPlp', '',
                                 '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'cliente', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'numero', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'diretoria', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'cartao', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'unidadePostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'servico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'servicosAdicionais', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaPlp', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.VerificaSeTodosObjetosCancelados }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'VerificaSeTodosObjetosCancelados', '',
                                 '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'VerificaSeTodosObjetosCancelados', 'arg0', '',
                                '[ArrayItemName="arg0"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'VerificaSeTodosObjetosCancelados', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.cancelarObjeto }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'cancelarObjeto', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarObjeto', 'idPlp', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarObjeto', 'numeroEtiqueta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarObjeto', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarObjeto', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarObjeto', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.pesquisarParametrosPorDescricao }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'pesquisarParametrosPorDescricao', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarParametrosPorDescricao', 'prefix', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarParametrosPorDescricao', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.atualizaPagamentoNaEntrega }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'atualizaPagamentoNaEntrega', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'atualizaPagamentoNaEntrega', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'atualizaPagamentoNaEntrega', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'atualizaPagamentoNaEntrega', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.obterClienteAtualizacao }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'obterClienteAtualizacao', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'obterClienteAtualizacao', 'cnpjCliente', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'obterClienteAtualizacao', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'obterClienteAtualizacao', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'obterClienteAtualizacao', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.verificaDisponibilidadeServico }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', 'numeroServico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', 'cepOrigem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', 'cepDestino', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaDisponibilidadeServico', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.fechaPlpVariosServicos }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', 'xml', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', 'idPlpCliente', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', 'cartaoPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', 'listaEtiquetas', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'fechaPlpVariosServicos', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.geraDigitoVerificadorEtiquetas }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'geraDigitoVerificadorEtiquetas', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'geraDigitoVerificadorEtiquetas', 'etiquetas', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'geraDigitoVerificadorEtiquetas', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'geraDigitoVerificadorEtiquetas', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'geraDigitoVerificadorEtiquetas', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.obterEmbalagemLRS }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'obterEmbalagemLRS', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'obterEmbalagemLRS', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.validaEtiquetaPLP }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'validaEtiquetaPLP', '',
                                 '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaEtiquetaPLP', 'numeroEtiqueta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaEtiquetaPLP', 'idPlp', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaEtiquetaPLP', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaEtiquetaPLP', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validaEtiquetaPLP', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaServicosValorDeclarado }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaServicosValorDeclarado', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosValorDeclarado', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosValorDeclarado', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosValorDeclarado', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.consultaCEP }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'consultaCEP', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'consultaCEP', 'cep', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'consultaCEP', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.integrarUsuarioScol }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'integrarUsuarioScol', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'integrarUsuarioScol', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'integrarUsuarioScol', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'integrarUsuarioScol', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'integrarUsuarioScol', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.pesquisarDimensoesServico }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'pesquisarDimensoesServico', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarDimensoesServico', 'codigo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarDimensoesServico', 'embalagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarDimensoesServico', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.pesquisarEmbalagensPorServico }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'pesquisarEmbalagensPorServico', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarEmbalagensPorServico', 'codigo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarEmbalagensPorServico', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.atualizaRemessaAgrupada }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'atualizaRemessaAgrupada', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'atualizaRemessaAgrupada', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'atualizaRemessaAgrupada', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'atualizaRemessaAgrupada', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.solicitaPLP }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'solicitaPLP', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaPLP', 'idPlpMaster', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaPLP', 'numEtiqueta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaPLP', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaPLP', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaPLP', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.getStatusCartaoPostagem }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'getStatusCartaoPostagem', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'getStatusCartaoPostagem', 'numeroCartaoPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'getStatusCartaoPostagem', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'getStatusCartaoPostagem', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'getStatusCartaoPostagem', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.verificaModalTransporte }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'verificaModalTransporte', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaModalTransporte', 'codigoServico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaModalTransporte', 'cepOrigem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaModalTransporte', 'cepDestino', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaModalTransporte', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaModalTransporte', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'verificaModalTransporte', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaDataAtual }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaDataAtual', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaDataAtual', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaTarifaVale }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'codServico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'cepOrigem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'cepDestino', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'peso', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'codFormato', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'comprimento', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'altura', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'largura', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'valorDeclarado', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'servicoAdicional', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaTarifaVale', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.validarPostagemSimultanea }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'codigoServico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'idCartaoPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'cepDestinatario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'coleta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemSimultanea', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.getStatusPLP }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'getStatusPLP', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'getStatusPLP', 'arg0', '',
                                '[ArrayItemName="arg0"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'getStatusPLP', 'arg1', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'getStatusPLP', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.pesquisarServicosAdicionais }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'pesquisarServicosAdicionais', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarServicosAdicionais', 'codigo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'pesquisarServicosAdicionais', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.buscaServicosXServicosAdicionais }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaServicosXServicosAdicionais', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosXServicosAdicionais', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosXServicosAdicionais', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicosXServicosAdicionais', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.cancelarPedidoScol }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'cancelarPedidoScol', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarPedidoScol', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarPedidoScol', 'idPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarPedidoScol', 'tipo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarPedidoScol', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarPedidoScol', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'cancelarPedidoScol', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.bloquearObjeto }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', 'numeroEtiqueta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', 'idPlp', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', 'tipoBloqueio', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', 'acao', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'bloquearObjeto', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaContrato }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaContrato', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaContrato', 'numero', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaContrato', 'diretoria', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaContrato', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaContrato', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaContrato', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.solicitaEtiquetas }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', 'tipoDestinatario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', 'identificador', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', 'idServico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', 'qtdEtiquetas', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaEtiquetas', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.solicitaXmlPlp }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'solicitaXmlPlp', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaXmlPlp', 'idPlpMaster', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaXmlPlp', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaXmlPlp', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitaXmlPlp', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.validarPostagemReversa }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'codigoServico', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'cepDestinatario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'idCartaoPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'coleta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'validarPostagemReversa', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaCliente }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaCliente', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaCliente', 'idContrato', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaCliente', 'idCartaoPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaCliente', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaCliente', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaCliente', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaPagamentoEntrega }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', 'contrato', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', 'dataInicio', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', 'dataFim', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', 'etiqueta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaPagamentoEntrega', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.solicitarPostagemScol }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'solicitarPostagemScol', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitarPostagemScol', 'codAdministrativo', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitarPostagemScol', 'xml', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitarPostagemScol', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitarPostagemScol', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'solicitarPostagemScol', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaServicos }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaServicos', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicos', 'idContrato', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicos', 'idCartaoPostagem', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicos', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicos', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaServicos', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { AtendeCliente.obterMensagemParametrizada }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'obterMensagemParametrizada', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'obterMensagemParametrizada', 'id', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'obterMensagemParametrizada', 'return', '',
                                '', IS_UNQL);
  { AtendeCliente.buscaOpcoes }
  InvRegistry.RegisterMethodInfo(TypeInfo(AtendeCliente), 'buscaOpcoes', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaOpcoes', 'listaObjetos', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaOpcoes', 'tipoResultado', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaOpcoes', 'usuario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaOpcoes', 'senha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(AtendeCliente), 'buscaOpcoes', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_clienteERP), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_clienteERP');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_objeto), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_objeto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_produto), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_produto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_servicoSigep), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_servicoSigep');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_parametroMaster), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_parametroMaster');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_usuarioInstalacao), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_usuarioInstalacao');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_gerenteConta), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_gerenteConta');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_servicoAdicionalERP), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_servicoAdicionalERP');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_cartaoPostagemERP), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_cartaoPostagemERP');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_unidadePostagemERP), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_unidadePostagemERP');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_contratoERP), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Array_Of_contratoERP');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusGerente), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'statusGerente');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoGerente), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'tipoGerente');
  RemClassRegistry.RegisterXSInfo(TypeInfo(categoriaServico), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'categoriaServico');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusUsuario), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'statusUsuario');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusPlp), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'statusPlp');
  RemClassRegistry.RegisterXSInfo(TypeInfo(VerificaSeTodosObjetosCancelados), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'VerificaSeTodosObjetosCancelados');
  RemClassRegistry.RegisterXSClass(enderecoERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'enderecoERP');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(enderecoERP), 'end_', '[ExtName="end"]');
  RemClassRegistry.RegisterXSClass(parametroMaster, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'parametroMaster');
  RemClassRegistry.RegisterXSClass(unidadePostagemERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'unidadePostagemERP');
  RemClassRegistry.RegisterXSClass(contratoERPPK, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'contratoERPPK');
  RemClassRegistry.RegisterXSClass(SQLException, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'SQLException');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SQLException), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(Exception, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(ErroMontagemRelatorio, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'ErroMontagemRelatorio');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ErroMontagemRelatorio), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(SigepClienteException, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'SigepClienteException');
  RemClassRegistry.RegisterSerializeOptions(SigepClienteException, [xoSimpleTypeWrapper]);
  RemClassRegistry.RegisterXSClass(AutenticacaoException, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'AutenticacaoException');
  RemClassRegistry.RegisterSerializeOptions(AutenticacaoException, [xoSimpleTypeWrapper]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(buscaServicosAdicionaisAtivosResponse), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'buscaServicosAdicionaisAtivosResponse');
  RemClassRegistry.RegisterXSClass(servicoAdicionalXML, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'servicoAdicionalXML');
  RemClassRegistry.RegisterXSInfo(TypeInfo(simNao), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'simNao');
  RemClassRegistry.RegisterXSClass(servicoSigep, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'servicoSigep');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusObjetoPostal), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'statusObjetoPostal');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_unsignedShort), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_unsignedShort');
  RemClassRegistry.RegisterXSClass(objetoPostal, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'objetoPostal');
  RemClassRegistry.RegisterXSClass(usuarioInstalacao, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'usuarioInstalacao');
  RemClassRegistry.RegisterXSClass(vigenciaERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'vigenciaERP');
  RemClassRegistry.RegisterXSClass(servicoAdicionalERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'servicoAdicionalERP');
  RemClassRegistry.RegisterXSClass(clienteERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'clienteERP');
  RemClassRegistry.RegisterXSClass(servicoERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'servicoERP');
  RemClassRegistry.RegisterXSClass(contratoERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'contratoERP');
  RemClassRegistry.RegisterXSClass(gerenteConta, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'gerenteConta');
  RemClassRegistry.RegisterXSClass(objetoPostalPK, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'objetoPostalPK');
  RemClassRegistry.RegisterXSClass(preListaPostagem, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'preListaPostagem');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(preListaPostagem), 'objetosPostais', '[ArrayItemName="arg0"]');
  RemClassRegistry.RegisterXSClass(objetoSimplificado, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'objetoSimplificado');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoBloqueio), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'tipoBloqueio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(acao), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'acao');
  RemClassRegistry.RegisterXSClass(pessoa, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'pessoa');
  RemClassRegistry.RegisterXSInfo(TypeInfo(pesquisarServicosAdicionaisResponse), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'pesquisarServicosAdicionaisResponse');
  RemClassRegistry.RegisterXSClass(servicoAdicionalTO, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'servicoAdicionalTO');
  RemClassRegistry.RegisterXSClass(retornoCancelamento, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'retornoCancelamento');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoMensagem), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'tipoMensagem');
  RemClassRegistry.RegisterXSClass(SQLException2, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'SQLException2', 'SQLException');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SQLException2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(Exception2, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'Exception2', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(ErroMontagemRelatorio2, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'ErroMontagemRelatorio2', 'ErroMontagemRelatorio');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ErroMontagemRelatorio2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(objeto, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'objeto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(buscaServicosResponse), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'buscaServicosResponse');
  RemClassRegistry.RegisterXSClass(cartaoPostagemERP, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'cartaoPostagemERP');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(cartaoPostagemERP), 'servicos', '[ArrayItemName="return"]');
  RemClassRegistry.RegisterXSClass(mensagemParametrizadaTO, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'mensagemParametrizadaTO');
  RemClassRegistry.RegisterXSClass(remetente, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'remetente');
  RemClassRegistry.RegisterXSInfo(TypeInfo(geraDigitoVerificadorEtiquetasResponse), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'geraDigitoVerificadorEtiquetasResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(obterEmbalagemLRSResponse), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'obterEmbalagemLRSResponse');
  RemClassRegistry.RegisterXSClass(embalagemLRSMaster, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'embalagemLRSMaster');
  RemClassRegistry.RegisterXSClass(chancelaMaster, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'chancelaMaster');
  RemClassRegistry.RegisterXSClass(valorDeclarado, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'valorDeclarado');
  RemClassRegistry.RegisterXSClass(dimensaoTO, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'dimensaoTO');
  RemClassRegistry.RegisterXSClass(medidaTO, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'medidaTO');
  RemClassRegistry.RegisterXSClass(valePostal, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'valePostal');
  RemClassRegistry.RegisterXSClass(produto, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'produto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(buscaServicosValorDeclaradoResponse), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'buscaServicosValorDeclaradoResponse');
  RemClassRegistry.RegisterXSClass(coleta, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'coleta');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(coleta), 'documento', '[ArrayItemName="return"]');
  RemClassRegistry.RegisterXSClass(coletaReversa, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'coletaReversa');
  RemClassRegistry.RegisterXSClass(coletaSimultanea, 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'coletaSimultanea');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoEmbalagem), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'tipoEmbalagem');
  RemClassRegistry.RegisterXSInfo(TypeInfo(pesquisarEmbalagensPorServicoResponse), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'pesquisarEmbalagensPorServicoResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusCartao), 'http://cliente.bean.master.sigep.bsb.correios.com.br/', 'statusCartao');

end.