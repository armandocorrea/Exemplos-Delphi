object ServiceDelphi: TServiceDelphi
  OldCreateOrder = False
  DisplayName = 'MeuServicoDelphi'
  AfterInstall = ServiceAfterInstall
  OnStart = ServiceStart
  Height = 274
  Width = 329
  object Timer: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerTimer
    Left = 40
    Top = 32
  end
end
