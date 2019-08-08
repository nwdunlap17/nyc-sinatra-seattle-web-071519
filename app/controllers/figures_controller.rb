class FiguresController < ApplicationController
  
  
  get '/' do
    erb :new
  end

  post '/new' do
    @new_figure= Figure.new(params[:name])
  end







end
