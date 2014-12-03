json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :cnpj, :nire, :nome, :data_constituicao, :endereco, :uf, :cidade, :cep
  json.url empresa_url(empresa, format: :json)
end
