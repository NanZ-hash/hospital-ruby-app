Rails.application.routes.draw do
  get 'patients/new', to:'patients#new'
  post 'patients' , to: 'patients#create'
  get 'patients' ,to:'patients#index'
  delete 'patients/:id' , to: 'patients#destroy'
  get 'patients/:id/edit', to:'patients#edit' ,as: 'edit_patient'
  get 'patients/:id', to:'patients#show' , as: 'patient'
  patch 'patients/:id' , to: 'patients#update'
  put 'patients/:id' , to: 'patients#update'



  
 

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
