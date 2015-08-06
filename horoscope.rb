require 'sinatra'
require 'json'

get '/' do
  "Hello World!"
end

route :get, :post, '/' do
	text = params[:text].sub("horoscope me ", "")
	return {text: "SUP"}.to_json