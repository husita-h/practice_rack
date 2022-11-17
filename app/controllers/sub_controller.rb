class SubController < ApplicationController
  get "/sub" do
    id = ENV["ID"]
    pass = ENV["PASSWORD"]
    data = { id:, pass: }
    json data
  end
end
