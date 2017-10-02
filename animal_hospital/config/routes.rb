Rails.application.routes.draw do
  
  scope path: "api" do
    resources :animals_hospital
  end 


end
