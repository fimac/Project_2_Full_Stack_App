Rails.application.routes.draw do

  get 'engineers/index'

  get 'engineers/show'

  get 'engineers/new'

  get 'engineers/edit'

get "/" => "pages#home"

get '/about' => "pages#about"

resources :engineers

end
