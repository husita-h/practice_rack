class ApplicationController < Sinatra::Base
  helpers Sinatra::Cookies
  register Sinatra::ConfigFile
  config_file "config/config.yml"

  # register Sinatra::Cors
  # set :allow_origin, "http://localhost:5173/"
  # set :allow_methods, "GET,HEAD,POST"
  # # set :allow_headers, "content-type,if-modified-since"
  # # set :expose_headers, "location,link"

  configure :production, :development do
    set :views, "app/views"
    enable :logging
    # file = File.new("log/rack.log", "a+")
    # file.sync = true
    # use Rack::CommonLogger, file
  end

  configure :development do
    register Sinatra::Reloader
  end

  # logger = Logger.new(STDOUT).tap do |logger|
  #   logger.formatter = proc do |severity, datetime, _progname, msg|
  #     "[#{datetime} #{severity}] #{msg}\n"
  #   end
  # end

  get "/" do
    erb :index
  end
end
