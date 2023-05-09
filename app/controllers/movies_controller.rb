class MoviesController < ApplicationController

  def index
    @index = Movie.all
  end
end
