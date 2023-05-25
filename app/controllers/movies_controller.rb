class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @moive = Movie.find()
  end
end
