require 'pg'
require 'active_record'

# local db name
# :database => "ebaylistings"

configure :development do

 ActiveRecord::Base.establish_connection(
   :adapter => "postgresql",
   :database => "ebaylistings"
 )
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter => "postgresql",
   :host => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end



if defined?(Sinatra)
  # Fix an issue with sinatra and Active Record where connections are left open
  after do
    ActiveRecord::Base.connection.close
  end
end
