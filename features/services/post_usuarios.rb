module Rest
  class Usuarios
    include HTTParty

    headers 'accept' =>  'application/json', 'Content-Type' => 'application/json'
    base_uri CONFIG['base_uri']

    def post_usuario(payload)
      self.class.post('/usuarios', body: payload.to_json)
    end
  end
end
