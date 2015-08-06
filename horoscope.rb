require 'sinatra'
require 'json'

get '/' do
  "Hello World!"
end

route :get, :post, '/' do

	{text: "SUP"}.to_json

end
