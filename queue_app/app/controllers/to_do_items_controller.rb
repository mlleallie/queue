class ToDoItemsController < ApplicationController


  def new

    @todo= ToDoItem.new

  end

  def create

    @todo = ToDoItem.new
    @todo.item = params["todo"]["item"]
    @todo.list_id = params["todo"]["list_id"]
    @todo.save

    redirect_to :back

  end

end
