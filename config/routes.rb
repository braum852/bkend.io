Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :events, only: %i[index show create destroy update]
    end
  end
end

# api_v1_events GET    /api/v1/events(.:format)                                                                          api/v1/events#index
# POST   /api/v1/events(.:format)                                                                          api/v1/events#create
# api_v1_event GET    /api/v1/events/:id(.:format)                                                                      api/v1/events#show
# PATCH  /api/v1/events/:id(.:format)                                                                      api/v1/events#update
# PUT    /api/v1/events/:id(.:format)                                                                      api/v1/events#update
# DELETE /api/v1/events/:id(.:format)                                                                      api/v1/events#destroy