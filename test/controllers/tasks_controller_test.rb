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

	test "'update' saves changes to a task" do
		new_summary = "This is a changed summary"
		task = tasks(:one)
		put :update, id: task, task: { summary: new_summary }

		after = Task.find(task.id)
		assert_equal new_summary, after.summary
	end
end
