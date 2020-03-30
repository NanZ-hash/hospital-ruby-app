Rails.application.routes.draw do
  get 'patients/new', to:'patients#new'
  post 'patients' , to: 'patients#create'
  get 'patients/:id', to:'patients#show' , as: 'patient'
  get 'patients' ,to:'patients#index'


  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
