require 'json'
require 'sinatra'
require 'sinatra/activerecord'
<<<<<<< HEAD

require './config/database'

Dir["./app/models/*.rb"].each { |file| require file }
Dir["./app/services/**/*.rb"].each { |file| require file }

=======
 
require './config/database'
 
Dir["./app/models/*.rb"].each {|file| require file }
Dir["./app/services/**/*.rb"].each {|file| require file }
 
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
class App < Sinatra::Base
 
  get '/' do
    'Hello world!'   
  end
<<<<<<< HEAD

  post '/webhook' do
    request.body.rewind
    result = JSON.parse(request.body.read)["queryResult"]

=======
 
  post '/webhook' do
    request.body.rewind
    result = JSON.parse(request.body.read)["queryResult"]
 
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
    if result["contexts"].present?
      response = InterpretService.call(result["action"], result["contexts"][0]["parameters"])
    else
      response = InterpretService.call(result["action"], result["parameters"])
    end
<<<<<<< HEAD

=======
 
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
    content_type :json, charset: 'utf-8'
    {
      "payload": {
        "telegram": {
          "text": response,
          "parse_mode": "Markdown"
        }
      }
    }.to_json
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
