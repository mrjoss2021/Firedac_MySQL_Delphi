object Dm: TDm
  OldCreateOrder = False
  Height = 192
  Width = 323
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=webservice'
      'User_Name=root'
      'Server=localhost'
      'DriverID=Connector')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    BeforeConnect = FDConnection1BeforeConnect
    Left = 64
    Top = 40
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    DriverID = 'Connector'
    Left = 192
    Top = 40
  end
end
