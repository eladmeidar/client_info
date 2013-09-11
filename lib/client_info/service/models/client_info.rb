if defined?(Rails)
  Mongoid.load!(File.join(Rails.root, "config", "mongoid.yml"), Rails.env.to_sym)
else
 Mongoid.load!(File.dirname(__FILE__) + "/../config/mongoid.yml", :development)
end

module Models
  class ClientInfo
    include Mongoid::Document
    include Mongoid::Timestamps
    
    field :cookie,          type: String
  end
end