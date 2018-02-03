Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'users' => 'users#index'
# post 'post' => 'users#create'
resources :users do
        resources :memos
    end
end
