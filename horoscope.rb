require 'sinatra'
require 'json'
require 'sinatra/multi_route'

get '/' do
  "Hello World!"
end

route :get, :post, '/' do

	return {text: "SUP"}.to_json

end
