require "test_helper"

class TodoTest < ActiveSupport::TestCase
  
  test "invalid task when title is blank" do
    todo = Todo.new(title: "")
    assert_not todo.valid?
  end

  test "valid task when title has been entered" do
    todo = Todo.new(title: "valid")
    assert todo.valid?
  end


end
