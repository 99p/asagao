Rails.application.routes.draw do
  root 'top#index'
  get "about" => "top#about", as: "about"

  1.upto(18) do |n|
    get "lesson/step#{n}(/:name)" => "lesson#step#{n}"
  end

  ## resources :members
  # get "members" => 'members#idnex'
  # get "members/:id" => 'members#show'
  # get "members/:id/new" => 'members#new'
  # get "members/:id/edit" => 'members#edit'
  # post "members" => 'members#create'
  # patch "members" => 'members#update'
  # delete "members" => 'members#destroy'

  # # resourcesネスト
  # get "members/:member_id/entries/" => 'entries#index'
  # get "members/:member_id/entries/:id" => 'entries#show'
  # get "members/:member_id/entries/:id/new" => 'entries#new'
  # get "members/:member_id/entries/:id/edit" => 'entries#edit'
  # post "members/:member_id/entries/" => 'entries#create'
  # patch "members/:member_id/entries/" => 'entries#update'
  # delete "members/:member_id/entries/" => 'entries#delete'

  resources :members do
    get "search", on: :collection
    resources :entries, only: [:index]
  end

  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
  resource :password, only: [:show, :edit, :update]

  resources :articles
  resources :entries
end
