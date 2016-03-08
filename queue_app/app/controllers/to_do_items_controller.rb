class ToDoItemsController < ApplicationController

def show
  @items = ToDoItem.all
end

end
