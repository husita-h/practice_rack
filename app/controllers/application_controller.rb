class ApplicationController < Sinatra::Base
  helpers Sinatra::Cookies
  register Sinatra::ConfigFile
  config_file "config/config.yml"

  register Sinatra::Cors
  set :allow_origin, ENV["FRONTEND"]
  set :allow_methods, "GET,HEAD,POST"
  # set :allow_headers, "content-type,if-modified-since"
  # set :expose_headers, "location,link"

  configure :production, :development do
    enable :logging
    # file = File.new("log/rack.log", "a+")
    # file.sync = true
    # use Rack::CommonLogger, file
  end

  configure :development do
    register Sinatra::Reloader
  end

  use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == 'foo' && password == 'bar'
  end

  get '/' do
    "secret"
  end
end
