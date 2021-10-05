Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/confirm'
  get 'contacts/create'
  get 'contacts/complete'
  get 'firstpage', to: 'firstpage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
