# frozen_string_literal: true

require 'json'
require 'sinatra'
require 'sinatra/activerecord'

require './config/database'

Dir['./app/models/*.rb'].each { |file| require file }
Dir['./app/services/**/*.rb'].each { |file| require file }

class App < Sinatra::Base
  configure do
    enable :logging
    file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
    file.sync = true
    use Rack::CommonLogger, file
  end

  get '/' do
    puts 'Ola'
    'Hello world!'
  end

  post '/webhook' do
    $stdout.sync = true
    logger.info 'hello'
    request.body.rewind
    result = JSON.parse(request.body.read)['queryResult']

    if result['contexts'].present?
      response = InterpretService.call(result['action'], result['contexts'][0]['parameters'])
    else
      response = InterpretService.call(result['action'], result['parameters'])
    end
    content_type :json, charset: 'utf-8'
    {
      "fulfillmentText": response,
      "payload": {
        "telegram": {
          "text": response,
          "parse_mode": 'Markdown'
        }
      }
    }.to_json
  end
end
