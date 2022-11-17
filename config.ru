require "sinatra/base"
require "sinatra/cors"
require "sinatra/cookies" # https://sinatrarb.com/contrib/cookies.html
require "sinatra/config_file" # https://sinatrarb.com/contrib/config_file
require "sinatra/json"
require "sinatra/reloader"
require "dotenv/load"

Dir.glob("./app/controllers/*.rb").each { |file| require file }

use SubController
run ApplicationController
# ApplicationController.run!
