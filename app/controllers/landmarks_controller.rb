class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
    erb :'landmarks/index'
  end
  
  get '/landmarks/new' do
      erb :'landmarks/new'
  end
  post '/landmarks' do
      @landmark = Landmark.create(params[:landmark])
      redirect "/landmarks/#{@landmark.id}"
  end
  patch '/landmarks' do
      @landmark = Landmark.find(params[:id])
      @landmark.update(params[:landmark])
      redirect "/landmarks/#{@landmark.id}"
  end
  
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end
  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end
end
