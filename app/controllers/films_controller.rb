class FilmsController < ApplicationController

  def index
    # @category = Category.find(params[:category_id])
    @films = Film.all
  end


end
