class ClientInfoService < Sinatra::Base

  get "/beacons" do
    json Models::ClientInfo.all.to_json
  end

  post "/beacons" do
    @client_info = Models::ClientInfo.create(cookie: params[:cookie])
    json @client_info.to_json
  end
end