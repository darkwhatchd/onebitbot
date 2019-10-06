<<<<<<< HEAD
# frozen_string_literal: true

require 'rspec'
require 'rack/test'
require 'ffaker'
require 'pg_search'
require_relative '../app.rb'

Dir['./spec/support/**/*.rb'].each { |f| require f }
Dir['./app/services/**/*.rb'].each { |file| require file }

set :environment, :test

module RSpecMixin
  include Rack::Test::Methods

=======
require 'rspec'
require 'rack/test'
require 'ffaker'
require "pg_search"
require_relative '../app.rb'
 
Dir["./spec/support/**/*.rb"].each { |f| require f }
Dir["./app/services/**/*.rb"].each {|file| require file }
 
set :environment, :test
 
module RSpecMixin
  include Rack::Test::Methods
 
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
  def app
    App
  end
end
<<<<<<< HEAD

=======
 
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
RSpec.configure do |c|
  c.include RSpecMixin
  ActiveRecord::Base.logger = nil
  ENV['LOG'] == true
end
