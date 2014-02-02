require 'spec_helper'

describe Task do
  describe '#create!' do
    it "requires a summary" do
      expect {
        Task.create!
      }.to raise_exception ActiveRecord::RecordInvalid
    end
  end
end
