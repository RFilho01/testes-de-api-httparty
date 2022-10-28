class UsuarioModel
  attr_accessor :nome, :email, :password, :administrador

  def usuario_payload
    {
      nome: @nome,
      email: @email,
      password: @password,
      administrador: @administrador
    }
  end
end
