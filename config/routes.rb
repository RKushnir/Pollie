Pollie::Application.routes.draw do
  resources :polls, :path => 'poll', :only => [:index, :show]
end
