require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

require 'pry' # for debugging

# connect to db
require_relative 'db/connection'

# load models
require_relative 'models/item'

# Load specific routes
require_relative 'controllers/items'
