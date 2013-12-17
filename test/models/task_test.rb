require 'test_helper'

class TaskTest < ActiveSupport::TestCase
	test "requires a summary" do
		assert_raises ActiveRecord::RecordInvalid do
			Task.create!
		end
	end
end
