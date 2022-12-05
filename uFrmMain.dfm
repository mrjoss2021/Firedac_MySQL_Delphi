object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 182
    Width = 447
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 500
      end
      item
        Width = 500
      end>
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 72
    object System1: TMenuItem
      Caption = 'System'
    end
    object Master1: TMenuItem
      Caption = 'Master'
      object DataSupplier1: TMenuItem
        Caption = 'Data Supplier'
        OnClick = DataSupplier1Click
      end
    end
  end
end
