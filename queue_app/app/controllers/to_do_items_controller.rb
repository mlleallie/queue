class ToDoItemsController < ApplicationController

#require "cgi"

  def new

    @todo = ToDoItem.new
    #@id = params[:list_id]

  end

  def create

    @todo = ToDoItem.new
    @todo.item = params["to_do_item"][:item]
    @todo.list_id = params["to_do_item"][:list_id]
    @todo.save

    #@id = cgi.list_id

    redirect_to :back

  end

end
