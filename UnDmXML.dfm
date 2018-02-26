object DmXML: TDmXML
  OldCreateOrder = False
  Height = 182
  Width = 169
  object XMLTransformProvider: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Users\Edward Nascimento\Dev\mockdata\ToDp.xtr'
    TransformWrite.TransformationFile = 'C:\Users\Edward Nascimento\Dev\mockdata\ToDp.xtr'
    Left = 63
    Top = 96
  end
  object CdsXML: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider'
    Left = 63
    Top = 32
  end
end
