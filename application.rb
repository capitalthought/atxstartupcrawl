require_relative 'environment'

module StartupCrawl
  
  class App < Sinatra::Base
    
    set :static, true
    set :public, 'public'
      
    configure :development do
      require 'sinatra/reloader'
      register Sinatra::Reloader
    end
    
    get '/' do
      erb :index
    end
    
    get '/master.css' do
      content_type 'text/css', :charset => 'utf-8'
      scss :master
    end
    
  end
  
end
