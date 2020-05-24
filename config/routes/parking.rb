scope module: :parking, defaults: { format: :json } do

  resources :parking, only: [] do
    collection do
      get :index, controller: '/api/v1/parking'
      post :create, controller: '/api/v1/parking'
    end

    member do
      get :show
      post :out, controller: '/api/v1/parking'
      post :pay, controller: '/api/v1/parking'
    end
  end

end