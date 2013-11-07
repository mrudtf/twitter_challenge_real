TwitterChallengeReal::Application.routes.draw do

  root :to => 'tweets#index', :via => :get
  match '/' => 'tweets#create', :via => :post
end
