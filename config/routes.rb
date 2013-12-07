AwaydayApp::Application.routes.draw do
  resources :speakers


  resources :rooms


  resources :sessions


  get "pages/home"

  get "pages/emergency"

  get "pages/directions"
  root to: "pages#home"
end
