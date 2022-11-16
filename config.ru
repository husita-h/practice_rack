require "sinatra/base"

Dir.glob("./app/controller/*.rb").each { |file| require file }

# run ApplicationController
ApplicationController.run!
