require 'spec_helper'

describe "Routing to polls" do
  it "routes /poll to polls#index" do
    { :get => "/poll" }.should route_to(
      :controller => "polls",
      :action => "index"
    )
  end

  it "routes /poll/:id to polls#show" do
    { :get => "/poll/1" }.should route_to(
      :controller => "polls",
      :action => "show",
      :id => "1"
    )
  end
end
