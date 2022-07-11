class BookmarksController < ApplicationController
  # before_action :set_bookmark, only: :destroy
  # before_action :set_list, only: [:new, :create]

  def new
    @list = List.find(params[:list_id])
    @movies = Movie.all
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    # @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    raise
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  # def set_bookmark
  #   @bookmark = Bookmark.find(params[:id])
  # end

  # def set_list
  #   @list = List.find(params[:list_id])
  # end
end

# create_table "bookmarks", force: :cascade do |t|
#   t.text "comment"
#   t.bigint "list_id", null: false
#   t.bigint "movie_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["list_id"], name: "index_bookmarks_on_list_id"
#   t.index ["movie_id"], name: "index_bookmarks_on_movie_id"
# end
