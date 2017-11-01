# responsavel por adicionar o factory girl no rspec
# funciona como um initializer esse arquivo
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end