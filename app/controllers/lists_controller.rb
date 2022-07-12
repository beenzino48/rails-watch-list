class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      # if a list is made incorrectly it will return to the browser
      render :new
    end
  end

  def new
    @list = List.new
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
