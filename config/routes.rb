Rails.application.routes.draw do
  root "dynamic#home"
  get 'static/team', to: "static#team"
  get 'static/contact', to: "static#contact"
  get 'dynamic/home', to: "dynamic#home"
  get 'home/:first_name', to: 'dynamic#home_first_name'
  get 'gossip/:i', to: 'dynamic#gossip'
  get 'gossip/user/:i', to: 'dynamic#user'
end