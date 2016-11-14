Rails.application.routes.draw do

  get 'models/:model_slug/model_types', to: 'model_types#index'

  post "models/:model_slug/model_types_price/:model_type_slug" => "model_types#create"
end
