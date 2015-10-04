require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "ebaylistings"
)

if defined?(Sinatra)
  # Fix an issue with sinatra and Active Record where connections are left open
  after do
    ActiveRecord::Base.connection.close
  end
end
