require 'test_helper'

class TasksControllerTest < ActionController::TestCase
	test "has a 'new' action" do
		get :new
	end

	test "'create' action creates a new task" do
		assert_difference 'Task.count' do
			post :create, task: { summary: "A sample task" }
		end
	end
end
