require 'bundler/setup'
Bundler.require(:default)

require 'mongoid'

require 'sinatra'
require 'json'
require 'sinatra/json'

require File.dirname(__FILE__) + "/lib/client_info/service/models/client_info.rb"
require File.dirname(__FILE__) + "/lib/client_info/service/client_info_service.rb"
 
map '/' do
  run ClientInfoService
end