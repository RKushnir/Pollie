require 'spec_helper'

describe PollsController do
  describe "#index" do
    it "loads the list of polls" do
      polls = [Poll.new, Poll.new]
      Poll.should_receive(:all).and_return(polls)
      get :index
      assigns[:polls].should eq polls
    end
  end

  describe "#show" do
    it "loads the current poll" do
      poll = Poll.new
      Poll.should_receive(:find).with('1').and_return(poll)
      get :show, :id => '1'
      assigns[:poll].should eq poll
    end
  end
end
