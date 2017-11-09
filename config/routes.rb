Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
=begin
 utilizando o namespace ele acrescenta a url api e v1
 ficando dessa forma:
 localhost:3000/api/v1
=end

