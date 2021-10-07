Rails.application.routes.draw do

  
  resource :contacts, only: %i[new create]
  resource :users, only: %i[new create]

  # resource :contact, only: %i[new create] do
  #   collection do
  #     match :confirm, via: %i[post patch]
  #     get :complete
  #   end
  # end


  # get 'contacts/new', to: 'contacts#new'
  # get 'contacts/confirm', to: 'contacts#confirm'
  # get 'contacts/create', to: 'contacts#create'
  # get 'contacts/complete', to: 'contacts#complete'
  get 'firstpage', to: 'firstpage#index'
  get 'firstpagepost', to: 'firstpage#post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
