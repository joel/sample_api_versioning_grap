SampleApiVersioningGrape::Application.routes.draw do
  
  resources :crypto, :only => [:encode, :decode] do
    collection do
      get :encode
      get :decode
    end
  end
  
end
