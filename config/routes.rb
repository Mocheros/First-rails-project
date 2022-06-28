Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  root "home#index"
  get "/home", to: "home#index"
  get "/mecze", to: "mecze#index", as: "mecze"
  get "/konto", to: "home#konto"
  get "/mecze/:id/gospodarze", to: "sklady#gospodarze", as: "gospodarze"
  get "/mecze/:id/goscie", to: "sklady#goscie", as: "goscie"
  get "/mecze/:id/bramkigosp", to: "bramki#gosp"
  get "/mecze/:id/bramkigosc", to: "bramki#gosc"
  get "/mecze/:id/kartki", to: "mecze#kartki"
  get "/mecze/:id/kartkazgosp", to: "kartkaz#gosp"
  get "/mecze/:id/kartkazgosc", to: "kartkaz#gosc"
  get "/mecze/:id/kartkacgosp", to: "kartkac#gosp"
  get "/mecze/:id/kartkacgosc", to: "kartkac#gosc"
  get "/mecze/:id/statystyki", to: "mecze#statystyki"
  get "/gole", to: "bramki#index"
  get "/mecze/:id/bramki", to: "bramki#new"
  get "/home", to: "home#index"
  get "/tabela", to: "tabela#index", as: "tabela"
  get "/strzelcy", to: "strzelcy#index", as: "strzelcy"
  get "/kolejki", to: "kolejki#index", as: "kolejki"
  #get "/mecze/:id/sklady", to: "mecze#sklady", as: "sklady"
  #get "/mecz/:id/wynik", to: "sklady#wynik", as: "wynik"
  #get "/mecze/show/:id", to: "mecze#show", as: "mecz"
  get "/druzyny", to: "druzyny#index", as: "druzyny"
  #get "/druzyny/:id/zawodnik", to: "druzyny#zawodnik", as: "zawodnik"
  get "/zawodnicy", to: "zawodnicy#index", as: "zawodnicy"
  #get "/druzyny/:id", to: "druzyny#show"

  

  resources :users, only: [:new, :create, :home, :admin]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :mecze, :controller => "mecze", :path => "mecze" do
    resources :gospodarze, :controller => "sklady"
    resources :goscie, :controller => "sklady"
    resources :statystyki, :controller => "mecze"
    resources :bramkigosp, :controller => "bramki"
    resources :bramkigosc, :controller => "bramki"
    resources :kartkazgosp, :controller => "kartkaz"
    resources :kartkazgosc, :controller => "kartkaz"
    resources :kartkacgosp, :controller => "kartkac"
    resources :kartkacgosc, :controller => "kartkac"
  end
  resources :zawodniks, :controller => "zawodnicy", :path => "zawodnicy"
  resources :druzyny
  resources :zespols, :controller => "druzyny", :path => "druzyny"
  resources :kolejki
  resources :sklady
  resources :home

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
