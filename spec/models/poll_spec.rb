require 'spec_helper'

describe Poll do
  before :each do
    @polls = [
      Poll.new(:id => 1, :question => 'Some question', :answers => ['one', 'two', 'three']),
      Poll.new(:id => 2, :question => 'Some other question', :answers => ['four', 'five', 'six']),
    ]

    PollsLoader.any_instance.stub(:load_all_polls => @polls)
  end

  describe ".all" do
    it "returns list of all polls" do
      Poll.all.should eq @polls
    end
  end

  describe ".find" do
    it "finds the poll by id" do
      Poll.find(1).id.should eq @polls[0].id
    end

    it "raises PollNotFoundError if there's no matching poll" do
      lambda { Poll.find(100500) }.should raise_error PollNotFoundError
    end
  end
end
