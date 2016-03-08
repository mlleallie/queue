class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @todos = @list.to_do_items
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new
    @list.title = params["list"]["title"]
    @list.save

    redirect_to @list
  end

  def destroy

    List.find(params[:id]).destroy
    @lists = List.all
    redirect_to '/lists'
  end


end
