Rails.application.routes.draw do
  resources :tasks
  resources :diaries
  resources :interns
  resources :works
  get 'contact/works'=> 'works#contact'
  post'contact/works' => 'works#contact'
  get'login'   => 'sessions#new'
  post'login'   => 'sessions#create'
  get 'about/works'=> 'works#about'
  post 'about/works'=> 'works#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
