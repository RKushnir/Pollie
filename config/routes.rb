Pollie::Application.routes.draw do
  root :to => 'polls#index'
  resources :polls, :path => 'poll', :only => [:index, :show]
end
