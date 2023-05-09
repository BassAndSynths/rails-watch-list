class BookmarksController < ApplicationController

  def all
    @all = Bookmark.all
  end

  def show
    render 'lists/show', status: :unprocessable_entity
  end
end
