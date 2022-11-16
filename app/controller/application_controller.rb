class ApplicationController < Sinatra::Base
  # helpers ApplicationHelper

  set :views, File.expand_path("../view", __dir__)

  configure :production, :development do
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
    logger.info
  end
end
