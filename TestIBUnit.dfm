object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 220
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 0
    Top = 0
    Width = 784
    Height = 220
    Align = alClient
    DataSource = dsEmp
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EMP_NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIRST_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LAST_NAME'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHONE_EXT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HIRE_DATE'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOB_CODE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALARY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FULL_NAME'
        Visible = True
      end>
  end
  object conEmployee: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=ON')
    Connected = True
    HostName = 'localhost'
    Port = 3050
    Database = 
      'C:\Program Files\Firebird\Firebird_3_0\examples\empbuild\EMPLOYE' +
      'E.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebirdd-3.0'
    LibraryLocation = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 32
    Top = 24
  end
  object zqryEmp: TZQuery
    Connection = conEmployee
    Active = True
    SQL.Strings = (
      'select * from employee order by emp_no asc;')
    Params = <>
    Left = 32
    Top = 80
    object smlntfldEmpEMP_NO: TSmallintField
      DisplayLabel = 'EMP No.'
      FieldName = 'EMP_NO'
      Required = True
    end
    object wdstrngfldEmpFIRST_NAME: TWideStringField
      DisplayLabel = 'FIRSTNAME'
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 15
    end
    object wdstrngfldEmpLAST_NAME: TWideStringField
      DisplayLabel = 'LASTNAME'
      FieldName = 'LAST_NAME'
      Required = True
    end
    object wdstrngfldEmpPHONE_EXT: TWideStringField
      FieldName = 'PHONE_EXT'
      Size = 4
    end
    object dtmfldEmpHIRE_DATE: TDateTimeField
      FieldName = 'HIRE_DATE'
      Required = True
    end
    object wdstrngfldEmpDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 3
    end
    object wdstrngfldEmpJOB_CODE: TWideStringField
      FieldName = 'JOB_CODE'
      Required = True
      Size = 5
    end
    object smlntfldEmpJOB_GRADE: TSmallintField
      FieldName = 'JOB_GRADE'
      Required = True
    end
    object wdstrngfldEmpJOB_COUNTRY: TWideStringField
      FieldName = 'JOB_COUNTRY'
      Required = True
      Size = 15
    end
    object fltfldEmpSALARY: TFloatField
      FieldName = 'SALARY'
      Required = True
    end
    object wdstrngfldEmpFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 37
    end
  end
  object dsEmp: TDataSource
    DataSet = zqryEmp
    Left = 32
    Top = 136
  end
end
