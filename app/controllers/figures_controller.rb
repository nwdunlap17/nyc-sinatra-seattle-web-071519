class FiguresController < ApplicationController
  
  
  get '/' do
    erb :index
  end
 
  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/new' do
    @new_figure= Title.new(params[:name])
  end





  # post '/edit' do
  # end











end
