require 'factory_bot'
require 'faker'
require 'httparty'
require 'rspec'
require 'pry'

require_relative 'spec_helper/spec_helper'
require_relative 'data/models/usuario_model'
require_relative 'data/lib/factories'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yaml")

World(REST, FactoryBot::Syntax::Methods)
