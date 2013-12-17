class Task < ActiveRecord::Base
	validates :summary, presence: true
end
