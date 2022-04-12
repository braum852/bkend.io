Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :events, only: %i[index show create destroy update]
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end

# api_v1_events GET    /api/v1/events(.:format)                                                                          api/v1/events#index
# POST   /api/v1/events(.:format)                                                                          api/v1/events#create
# api_v1_event GET    /api/v1/events/:id(.:format)                                                                      api/v1/events#show
# PATCH  /api/v1/events/:id(.:format)                                                                      api/v1/events#update
# PUT    /api/v1/events/:id(.:format)                                                                      api/v1/events#update
# DELETE /api/v1/events/:id(.:format)                                                                      api/v1/events#destroy

# api_v1_users POST   /api/v1/users(.:format)                                                                           api/v1/users#create
# api_v1_login POST   /api/v1/login(.:format)                                                                           api/v1/auth#create
# api_v1_profile GET    /api/v1/profile(.:format)                                                                         api/v1/users#profile