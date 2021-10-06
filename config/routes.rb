Rails.application.routes.draw do
  get 'contacts/new', to: 'contacts#new'
  get 'contacts/confirm', to: 'contacts#confirm'
  get 'contacts/create', to: 'contacts#create'
  get 'contacts/complete', to: 'contacts#complete'
  get 'firstpage', to: 'firstpage#index'
  post 'firstpage/post', to: 'firstpage#post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
