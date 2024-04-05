unit orm.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtId: TEdit;
    edtName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    btnInsertSimpleOrm: TButton;
    btnUpdateSimpleOrm: TButton;
    btnDeleteSimpleOrm: TButton;
    btnFindSimpleOrm: TButton;
    GroupBox2: TGroupBox;
    btnInsertORMBr: TButton;
    btnUpdateORMBr: TButton;
    btnDeleteORMBr: TButton;
    btnFindORMBr: TButton;

    procedure btnFindSimpleOrmClick(Sender: TObject);
    procedure btnFindORMBrClick(Sender: TObject);

    procedure btnInsertSimpleOrmClick(Sender: TObject);
    procedure btnInsertORMBrClick(Sender: TObject);

    procedure btnDeleteSimpleOrmClick(Sender: TObject);
    procedure btnDeleteORMBrClick(Sender: TObject);

    procedure btnUpdateSimpleOrmClick(Sender: TObject);
    procedure btnUpdateORMBrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  orm.controller.dto.impl.usuario.simpleorm,
  orm.controller.dto.impl.usuario.ormbr;

{$R *.dfm}

//DELETE

procedure TfrmPrincipal.btnDeleteSimpleOrmClick(Sender: TObject);
begin
  try
    TUsuarioDTOSimpleORM
      .New
      .Id(StrToInt(edtId.Text))
      .Build
      .Delete;

    ShowMessage('Registro excluído com sucesso (SimpleORM)!');
  except
    on e: exception do
      raise Exception.Create('Error: ' + e.Message);
  end;
end;

procedure TfrmPrincipal.btnDeleteORMBrClick(Sender: TObject);
begin
  try
    TUsuarioDTOORMBr
      .New
      .Id(StrToInt(edtId.Text))
      .Build
      .Delete;

    ShowMessage('Registro excluído com sucesso (ORMBr)!');
  except
    on e: exception do
      raise Exception.Create('Error: ' + e.Message);
  end;
end;

//FIND

procedure TfrmPrincipal.btnFindORMBrClick(Sender: TObject);
begin
  var LUsuario :=
    TUsuarioDTOORMBr
      .New
      .Build
      .ListById(StrToIntDef(edtId.Text,0))
      .This;

  edtName.Text := LUsuario.Name;
end;

procedure TfrmPrincipal.btnFindSimpleOrmClick(Sender: TObject);
begin
  var LUsuario :=
    TUsuarioDTOSimpleORM
      .New
      .Build
      .ListById(StrToIntDef(edtId.Text,0))
      .This;

  edtName.Text := LUsuario.Name;
end;

// INSERT

procedure TfrmPrincipal.btnInsertORMBrClick(Sender: TObject);
begin
  try
    TUsuarioDTOORMBr
      .New
      .Id(StrToInt(edtId.Text))
      .Name(edtName.Text)
      .Build
      .Insert;

    ShowMessage('Registro incluído com sucesso (ORMBr)!');
  except
    on e: exception do
      raise Exception.Create('Error: ' + e.Message);
  end;
end;

procedure TfrmPrincipal.btnInsertSimpleOrmClick(Sender: TObject);
begin
  try
    TUsuarioDTOSimpleORM
      .New
      .Id(StrToInt(edtId.Text))
      .Name(edtName.Text)
      .Build
      .Insert;

    ShowMessage('Registro incluído com sucesso (SimpleORM)!');
  except
    on e: exception do
      raise Exception.Create('Error: ' + e.Message);
  end;
end;

//UPDATE

procedure TfrmPrincipal.btnUpdateORMBrClick(Sender: TObject);
begin
  try
    var LController := TUsuarioDTOORMBr.New;
    //Busca registro da base
    var LUsuario :=
      LController.Build.ListById(StrToInt(edtId.Text)).This;
    LController.Build.Modify(LUsuario);

    LUsuario.Name := edtName.Text;

    LController
      .Build
      .Update;

    ShowMessage('Registro atualizado com sucesso (ORMBr)!');
  except
    on e: exception do
      raise Exception.Create('Error: ' + e.Message);
  end;
end;

procedure TfrmPrincipal.btnUpdateSimpleOrmClick(Sender: TObject);
begin
  try
    TUsuarioDTOSimpleORM
      .New
      .Id(StrToInt(edtId.Text))
      .Name(edtName.Text)
      .Build
      .Update;

    ShowMessage('Registro atualizado com sucesso (SimpleORM)!');
  except
    on e: exception do
      raise Exception.Create('Error: ' + e.Message);
  end;
end;

end.
