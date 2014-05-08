require 'spec_helper'

describe "default" do
  it "should go to the welcome page" do
    expect(:get => "/").to route_to(:controller => "welcome",:action => "index")
  end
end