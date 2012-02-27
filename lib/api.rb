class API < Grape::API
  # version 'v1', :using => :header, :vendor => 'sample', :format => :json
  version 'v1', :using => :path, :vendor => 'sample', :format => :json

  resource :crypto do

    get :encode do
      crypto = Crypto.new
      { origin: params[:value], encoded_value: crypto.encode(params[:value]) }
    end
  end

end