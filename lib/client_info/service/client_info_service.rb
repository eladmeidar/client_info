class ClientInfoService < Sinatra::Base

  get "/" do
    json Models::ClientInfo.all.to_json
  end

  post "/beacon" do
    @client_info = Models::ClientInfo.create(cookie: params[:cookie])
    json @client_info.to_json
  end
end