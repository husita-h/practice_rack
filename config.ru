require "sinatra/base"
# require "rack"

Dir.glob("./app/controllers/*.rb").each { |file| require file }

use SubController
run ApplicationController
# ApplicationController.run!
