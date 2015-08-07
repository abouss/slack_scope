require 'sinatra'
require 'json'
require 'sinatra/multi_route'
from pars

route :get, :post, '/' do

	return {text: params}.to_json

end
