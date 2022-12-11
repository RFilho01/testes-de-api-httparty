require 'faker'

FactoryGirl.define do
  factory :usuario, class: UsuarioModel do
    nome { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password}
    administrador { ['true', 'false'].sample }
  end
end
