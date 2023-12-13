require "test_helper"

class TodosRequestTest < ActionDispatch::IntegrationTest
  test "should return status 200 when get request to /todos" do
    get '/todos'
    assert_response 200
  end

  test "should redirect when post request to /todos" do
    post '/todos', params: { todo: { title: "test todo" } }
    assert_response 302
    assert_redirected_to root_url
  end
end
