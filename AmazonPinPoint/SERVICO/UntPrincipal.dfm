object LifeVetSMS: TLifeVetSMS
  OldCreateOrder = False
  DisplayName = 'LifeVetSMS'
  BeforeInstall = ServiceBeforeInstall
  AfterInstall = ServiceAfterInstall
  OnStart = ServiceStart
  Height = 404
  Width = 471
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'Protocol=TCPIP'
      'Server=localhost'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 120
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 32
  end
  object Timer: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = TimerTimer
    Left = 344
    Top = 40
  end
end
