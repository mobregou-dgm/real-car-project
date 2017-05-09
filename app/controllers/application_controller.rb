require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
 end  
 
 post '/results' do 
   @stats = CarsProject.new(params[:car], params[:part]) 
   erb :results
   end  
   
end      