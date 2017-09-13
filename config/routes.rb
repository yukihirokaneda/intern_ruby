Rails.application.routes.draw do
  resources :tasks
  resources :diaries
  resources :interns
  resources :works
  get 'works/:id' => 'works#contact'
  post'works/contact' => 'works#contact'
  get'login'   => 'sessions#new'
  post'login'   => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
