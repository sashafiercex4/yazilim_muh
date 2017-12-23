Rails.application.routes.draw do
 
 get "hakkimda" => "home#hakkimda", as: :hakkimda
 get "iletisim" => "home#iletisim", as: :iletisim 

  root "posts#index"
  devise_for :users
  resources :posts do
    member do
      put "like", to: "posts#like"
      put "unlike", to: "posts#unlike"
    end
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
