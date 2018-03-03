unit TestIBUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Data.DB, Vcl.Grids, Vcl.DBGrids, ZDataset, ZAbstractRODataset,
  ZAbstractDataset;

type
  TForm1 = class(TForm)
    conEmployee: TZConnection;
    zqryEmp: TZQuery;
    dsEmp: TDataSource;
    dbgrd1: TDBGrid;
    smlntfldEmpEMP_NO: TSmallintField;
    wdstrngfldEmpFIRST_NAME: TWideStringField;
    wdstrngfldEmpLAST_NAME: TWideStringField;
    wdstrngfldEmpPHONE_EXT: TWideStringField;
    dtmfldEmpHIRE_DATE: TDateTimeField;
    wdstrngfldEmpDEPT_NO: TWideStringField;
    wdstrngfldEmpJOB_CODE: TWideStringField;
    smlntfldEmpJOB_GRADE: TSmallintField;
    wdstrngfldEmpJOB_COUNTRY: TWideStringField;
    fltfldEmpSALARY: TFloatField;
    wdstrngfldEmpFULL_NAME: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
