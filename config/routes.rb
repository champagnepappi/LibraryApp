Rails.application.routes.draw do

 root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'support' => 'static_pages#support'

  get 'signup' => 'users#new'
end
