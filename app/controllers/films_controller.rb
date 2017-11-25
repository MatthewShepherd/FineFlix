class FilmsController < ApplicationController

  def index
    # @category = Category.find(params[:category_id])
    # @films = Film.find(params[:id])
  # if @films.nil?
    @films = Film.all
  #   render "index"
    # end
  end

  def show
    @film = Film.find(params[:id])
    @category = @film.category
  end


end


