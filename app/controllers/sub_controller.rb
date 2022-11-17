class SubController < ApplicationController
  get "/sub" do
    data = { foo: "bar" }
    json data
  end
end
