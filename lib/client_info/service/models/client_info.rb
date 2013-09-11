if defined?(Rails)
  Mongoid.load!(File.join(Rails.root, "config", "mongoid.yml"), Rails.env.to_sym)
else
 Mongoid.load!(File.dirname(__FILE__) + "/../config/mongoid.yml", :development)
end

module Models
  class ClientInfo
    include Mongoid::Document
    include Mongoid::Timestamps

    store_in collection: "client_infos"

    field :timezone                 ,type: Integer
    field :created_at               ,type: String
    field :updated_at               ,type: String
    field :cart_id                  ,type: String
    field :shop_id                  ,type: String
    field :forwarded_ip             ,type: String
    field :lat                      ,type: Integer
    field :ping_duration            ,type: Integer
    field :session_id               ,type: String
    field :user_agent               ,type: String
    field :ip                       ,type: String
    field :last_hop                 ,type: String
    field :href                     ,type: String
    field :riskified_cookie         ,type: String
    field :initial_cookie_state     ,type: String
    field :color_depth              ,type: Integer
  end
end