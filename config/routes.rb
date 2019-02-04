Rails.application.routes.draw do
  get 'static/team', to: "static#team"
  get 'static/contact', to: "static#contact"
  get 'dynamic/home', to: "dynamic#show_all"
  # get '/home/:first_name', to: 'dynamic#home_first_name'
end