class FiguresController < ApplicationController
  
  
  get '/' do
    erb :index
  end
 
  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/new' do
    #binding.pry
    @new_figure= Figure.create(params[:figure])
    if params[:title][:name] != ""
      @new_title = Title.create(params[:title])
    end
    if params[:landmark][:name] != ""
      @new_landmark = Title.new
      @new_landmark.name = params[:landmark][:name]
      @new_landmark.year_completed = params[:landmark][:year]
      @new_landmark.save
    end
  end





  # post '/edit' do
  # end











end
