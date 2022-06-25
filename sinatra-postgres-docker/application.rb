require './config/boot'

require 'sinatra/activerecord'
# require './config/environments'

# mudar isso de lugar
current_dir = Dir.pwd
Dir["#{current_dir}/app/models/*.rb"].each { |file| require file }

class Application < Sinatra::Base
  get '/' do
    "Hello World 2"
  end

  get '/articles' do
    @articles = Article.all.to_json
  end
end
