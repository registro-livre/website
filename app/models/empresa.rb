class Empresa 
  include Neo4j::ActiveNode
  property :cnpj, type: String
  property :nire, type: String
  property :nome, type: String
  property :data_constituicao, type: Date
  property :endereco, type: String
  property :uf, type: String
  property :cidade, type: String
  property :cep, type: String

end
