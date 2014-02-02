require 'spec_helper'

describe TasksController do
  describe 'POST #create' do
    it 'creates a new task' do
      expect {
        post :create, task: { summary: "A sample task" }
      }.to change(Task, :count).by(1)
    end
  end

  describe 'PUT #update' do
    it "saves changes to a task" do
      new_summary = "This is a changed summary"
      task = Task.create(summary: 'An original summary')

      put :update, id: task.id, task: { summary: new_summary }

      task.reload
      expect(task.summary).to eq(new_summary)
    end
  end

end
