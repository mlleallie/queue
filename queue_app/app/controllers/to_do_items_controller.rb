class ToDoItemsController < ApplicationController

def show
  @items = ToDoItem.all
  @id = params["list"]
end

end
