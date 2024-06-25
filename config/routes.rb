Rails.application.routes.draw do

  resources :documents, only: [:index, :create]
  get "documents_download", to: "documents#download"

end
