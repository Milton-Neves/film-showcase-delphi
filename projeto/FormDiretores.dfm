object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 320
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 152
    Width = 240
    Height = 25
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 208
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 352
    Top = 16
    Width = 145
    Height = 23
    DataSource = DataSourceFilmes
    KeyField = 'Id'
    ListField = 'Nome'
    TabOrder = 3
  end
  object SQLQueryFilmes: TSQLQuery
    Params = <>
    SQL.Strings = (
      'SELECT Id, Nome FROM cartaz')
    Left = 488
    Top = 72
  end
  object DataSetProviderFilmes: TDataSetProvider
    DataSet = SQLQueryFilmes
    Left = 488
    Top = 152
  end
  object ClientDataSetFilmes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 488
    Top = 232
  end
  object DataSourceFilmes: TDataSource
    DataSet = ClientDataSetFilmes
    Left = 488
    Top = 336
  end
end
