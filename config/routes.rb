Rails.application.routes.draw do
  scope "(:locale)", locale: /en|es/ do
    devise_for :admins
    resources :projects, except: [:show] do
      resources :pictures, only: [:new, :create, :destroy]
     end 
    resources "contacts", only: [:create]
    root 'home#index'
  end
end
