class ToDoItemsController < ApplicationController


  def new

    @todo= ToDoItem.new

  end

  def create

    @todo = ToDoItem.new
    @todo.item = params["to_do_item"]["item"]
    @todo.save
    @show_to_do = @todo.list_id

    redirect_to :back

  end

end
