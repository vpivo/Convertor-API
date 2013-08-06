TextConverter::Application.routes.draw do
  resources :converters, except: [:new, :edit]
  root to: 'public#index'
end
