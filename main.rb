# frozen_string_literal: true

require "sinatra/base"
require "sinatra/contrib/all"
require "logger"
require "pry"
require "sinatra/json"

class Main < Sinatra::Base
  configure do
    file = File.new("log/rack.log", "a+")
    file.sync = true
    use Rack::CommonLogger, file
  end

  logger = Logger.new(STDOUT).tap do |logger|
    logger.formatter = proc do |severity, datetime, _progname, msg|
      "[#{datetime} #{severity}] #{msg}\n"
    end
  end

  get "/" do
    logger.info
  end
end

Main.run!
