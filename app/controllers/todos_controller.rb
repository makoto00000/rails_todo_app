class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end
end
