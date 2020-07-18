object DataModule2: TDataModule2
  OldCreateOrder = False
  Encoding = esUtf8
  Height = 432
  Width = 635
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\PROJETOS\GitHub\trunk\Servidores de Aplica'#231#245'es\Dados' +
        '\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 160
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 
      'D:\PROJETOS\GitHub\trunk\Servidores de Aplica'#231#245'es\Dados\fbclient' +
      '.dll'
    Left = 272
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 384
    Top = 16
  end
  object DWServerEvents1: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odOUT
            ObjectValue = ovString
            ParamName = 'result'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'teste'
        OnReplyEvent = DWServerEvents1EventstesteReplyEvent
      end
      item
        Routes = [crAll]
        DWParams = <
          item
            TypeObject = toObject
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'id'
            Encoded = True
          end
          item
            TypeObject = toObject
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'nome'
            Encoded = True
          end
          item
            TypeObject = toObject
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'idade'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'cliente'
        OnReplyEventByType = DWServerEvents1EventsclienteReplyEventByType
      end>
    Left = 160
    Top = 120
  end
  object RESTDWPoolerDB1: TRESTDWPoolerDB
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 264
    Top = 120
  end
  object FDQryAux: TFDQuery
    Connection = FDConnection1
    Left = 496
    Top = 16
  end
end
