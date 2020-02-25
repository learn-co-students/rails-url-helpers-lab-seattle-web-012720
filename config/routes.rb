Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:activate, :index, :show]
    # resources :students, only: [:smoke] 
  # namespace :students do
  #   resources :index, :show, :activate
  # end
  
  # get "/student", to: "students#index"
  # get "/student", to: "students#show"
  # get "/students", to: "students#index"
  # get "/students/:id", to: "students#show"
  get "/students/:id/activate", to: "students#activate", :as => :activate_student
  post "/students/:id/activate", to: "students#activate"

    # resources :students [:activate]



end
