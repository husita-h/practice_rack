class ApplicationController < Sinatra::Base
  # helpers ApplicationHelper

  configure :production, :development do
    set :views, "app/views"
    enable :logging
    # file = File.new("log/rack.log", "a+")
    # file.sync = true
    # use Rack::CommonLogger, file
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
