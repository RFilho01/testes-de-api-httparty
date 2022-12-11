Dado('que tenho uma massa configurada para o endpoint Usuarios.post para o cenário {string}') do |type|
  @usuario ||= OpenStruct.new
  @usuario.payload = type.eql?('positivo') ? build(:usuario).usuario_payload : { }
end

Quando('enviar uma requisição para o endpoint Usuarios.post') do
  @usuario.response = usuarios.post_usuario(@usuario.payload)
rescue StardardError => e
  @usuario.error = e
end

Entao('Validar o retorno do endpoint Usuarios.post para o cenário {string}') do |type|
  expect(@usuario.error).to be_nil

  if type.eql?('positivo')
    expect(@usuario.response.code).to eql 201
    expect(@usuario.response['message']).to eql('Cadastro realizado com sucesso')
    expect(@usuario.response['_id']).to be_an(String)
  else
    expect(@usuario.response.code).to eql 400
  end
end