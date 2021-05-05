Rails.application.routes.draw do
  get 'people/index'
  get 'people/', to:'people#index'
  get 'people/add'
  post 'people/add', to: 'people#create'
  get 'people/:id', to: 'people#show'

  get 'dengonban/index', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  get 'dengonban/index'
  post 'dengonban/index'

  get 'helo/index'
  get 'helo', to: 'helo#index'
  post 'helo', to: 'helo#inddex'
  post 'helo/index'
  get 'helo/other'
end
