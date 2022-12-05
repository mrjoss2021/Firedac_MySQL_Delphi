object FrmSupplier: TFrmSupplier
  Left = 0
  Top = 0
  Caption = 'FrmSupplier'
  ClientHeight = 324
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 143
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 24
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 72
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 72
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 72
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 72
      Top = 104
      Width = 31
      Height = 13
      Caption = 'Label4'
    end
    object ekodesup: TEdit
      Left = 168
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'ekodesup'
    end
    object enama: TEdit
      Left = 168
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'enama'
    end
    object ealamat: TEdit
      Left = 168
      Top = 62
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'ealamat'
    end
    object etelepon: TEdit
      Left = 168
      Top = 89
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'etelepon'
    end
    object eprusahaan: TEdit
      Left = 168
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'eprusahaan'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 143
    Width = 510
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 41
    object Button1: TButton
      Left = 40
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'delete'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 184
    Width = 510
    Height = 140
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 160
    Top = 216
  end
  object FDQuery1: TFDQuery
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'select * from tsupplier')
    Left = 240
    Top = 208
  end
  object Qproses: TFDQuery
    Left = 304
    Top = 216
  end
end
