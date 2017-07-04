Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"
  resources :comments, :only => [:create]

  get 'sfc_pages/:page' => "pages#show"
  get 'sfc_pages/:page/edit' => "pages#edit"
  get 'comments/:id' => "comments#show"

end
