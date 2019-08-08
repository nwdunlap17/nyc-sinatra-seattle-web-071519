class FiguresController < ApplicationController
  
  
  get '/' do
    erb :index
  end
 
  get '/new' do
    erb :new
  end

  post '/new' do
    @new_figure= Title.new(params[:name])
  end

  



  # post '/edit' do
  # end











end
