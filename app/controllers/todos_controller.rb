class TodosController < ApplicationController
    
    def index
        render plain: Todo.to_displayable_list
    end

    def show
        id = params[:id]
        todo = Todo.find(id)
        render plain: todo.to_displayable_string
    end
end