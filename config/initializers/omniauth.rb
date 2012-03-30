Rails.application.config.middleware.use OmniAuth::Builder do
require 'openid/store/filesystem'

  provider :github, 'CLIENT ID', 'SECRET', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'openid'
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'yahoo', :identifier => 'yahoo.com'

  if Rails.env.development?
  provider :twitter, 'OFwqZ9VRfYZT0BCO8f1Xxg', 'XaLr9oWtI5V6b515vmM9UM6S8vQVpROTsk8DQGHcdTA', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :facebook, '338155269553812', '580211ee842609e26b73b9a7ad6df291'

  elsif Rails.env.production?
     provider :twitter, 'OFwqZ9VRfYZT0BCO8f1Xxg', 'XaLr9oWtI5V6b515vmM9UM6S8vQVpROTsk8DQGHcdTA'
     provider :facebook, '280314415372452', 'c52f299262ca93acb4871685b8e7771e'
  end  
end
