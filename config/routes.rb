Rails.application.routes.draw do
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      get "/search", to: "books#search"
    end
  end
end
