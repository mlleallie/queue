class ToDoItemsController < ApplicationController

  def new
    @todo = ToDoItem.new
    @list_id = params[:list_id]

  end

  def create

    @todo = ToDoItem.new
    @todo.item = params["to_do_item"][:item]
    @todo.list_id = params["to_do_item"][:list_id]
    @todo.save

    redirect_to list_path(@todo.list_id)

  end

  def destroy
    @item = ToDoItem.find(params[:id])
    @item.destroy
    redirect_to :back
  end

end
