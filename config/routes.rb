Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      #EndPoints Controller postits_controller
      get 'postit/search/:id', to: 'postits#search'
      get 'postit/all_postits', to: 'postits#all_postits'
      post 'postit/create', to: 'postits#create'
      delete 'postit/destroy/:id', to: 'postits#destroy'
    end
  end
end
