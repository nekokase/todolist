require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { category_id: @task.category_id, complete_div: @task.complete_div, do_miniute: @task.do_miniute, end_date: @task.end_date, name: @task.name, order: @task.order, start_date: @task.start_date, user_id: @task.user_id, want_id: @task.want_id }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { category_id: @task.category_id, complete_div: @task.complete_div, do_miniute: @task.do_miniute, end_date: @task.end_date, name: @task.name, order: @task.order, start_date: @task.start_date, user_id: @task.user_id, want_id: @task.want_id }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
