Haunt::Application.routes.draw do
  
  resources :devices do
    resources :waypoints
  end

end
