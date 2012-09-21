Haunt::Application.routes.draw do
  
  resources :devices do
    member { get :nearby }
    resources :waypoints
  end

end
