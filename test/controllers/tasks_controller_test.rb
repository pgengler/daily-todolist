require 'test_helper'

class TasksControllerTest < ActionController::TestCase
	test "'new' action displays form" do
		get :new
		assert_select 'form'
	end

	test "'create' action creates a new task" do
		assert_difference 'Task.count' do
			post :create, task: { summary: "A sample task" }
		end
	end

	test "'edit' action shows a form" do
		get :edit, id: tasks(:one)
		assert_select 'form'
	end

	test "'index' view lists all tasks" do
		get :index
		assert_select 'li.task', Task.count
	end
end
