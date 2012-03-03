Rails.application.config.middleware.use OmniAuth::Builder do
require 'openid/store/filesystem'

  provider :twitter, 'OFwqZ9VRfYZT0BCO8f1Xxg', 'XaLr9oWtI5V6b515vmM9UM6S8vQVpROTsk8DQGHcdTA', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :facebook, '338155269553812', '580211ee842609e26b73b9a7ad6df291'
  provider :github, 'CLIENT ID', 'SECRET', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'openid'
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'yahoo', :identifier => 'yahoo.com'

end
