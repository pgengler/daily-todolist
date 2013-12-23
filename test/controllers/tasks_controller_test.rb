require 'test_helper'

class TasksControllerTest < ActionController::TestCase
	test "has a 'new' action" do
		get :new
	end
end
