class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])

  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    @list = List.find(params[:list_id])
    redirect_to list_path(@list)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :bookmark_id, :movie_id)
  end

end
