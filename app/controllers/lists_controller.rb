class ListsController < ApplicationController

  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
    # @bookmark = Bookmark.new
    # @review = Review.new(list: @list)
  end
end
