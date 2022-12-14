Dado('que tenho uma massa configurada para o endpoint Usuarios.post para o cenário {string}') do |type|
  @usuarios ||= OpenStruct.new
  @usuarios.payload = type.eql?('positivo') ? build(:usuario).usuario_payload : { }
end

Quando('enviar uma requisição para o endpoint Usuarios.post') do
  @usuarios.response = usuarios.post_usuario(@usuarios.payload)
end

Entao('Validar o retorno do endpoint Usuarios.post para o cenário {string}') do |type|
  if type.eql?('positivo')
    expect(@usuarios.response.code).to eql 201
    expect(@usuarios.response['message']).to be_an(String)
    expect(@usuarios.response['_id']).to be_an(String)
  else
    expect(@usuarios.response.code).to eql 400
  end
end
