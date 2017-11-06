Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # configura o middleware inserindo antes o rack::cors, permitindo
  # que qualquer origem chame a API.
  allow do
    origins '*' # qualquer origem chama a API
    resource '*', # qualquer resource pode ser chamado dessa API
      headers: :any, # qualquer header pode ser chamado
      expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'], # é necessario expor nos headers
      methods: [:get, :post, :put, :patch, :delete, :options, :head] # methodos liberados
  end
end