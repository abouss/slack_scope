require 'sinatra'
require 'json'
require 'sinatra/multi_route'
from pars

route :get, :post, '/' do
	print params
	return {text: "SUP"}.to_json

end
