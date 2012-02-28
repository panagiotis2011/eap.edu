Rails.application.config.middleware.use OmniAuth::Builder do
require 'openid/store/filesystem'

  provider :twitter, 'HWeGxTH2ysMmPnQUhbsQg', 'ud2YQ1u9PByzQsfGE2OF2khrC3vR4RIw6Oxpju5b948', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :facebook, '280314415372452', 'c52f299262ca93acb4871685b8e7771e'
  provider :github, 'CLIENT ID', 'SECRET', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'openid'
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :openid, :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'yahoo', :identifier => 'yahoo.com'

end
