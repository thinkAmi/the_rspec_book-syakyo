require 'spec_helper'

describe Message do
  before(:each) do
    @message = Message.new(:title => "foo", :text => "bar")
  end

  it "is valid with valid attributes" do
    Message.new(:title => "foo", :text => "bar").should be_valid
  end

  it "is not valid without a title" do
    message = Message.new :title => nil
    message.should_not be_valid
  end

  it "is not valid without text" do
    message = Message.new :text => nil, :title => "foo"
    message.should_not be_valid
  end

  it "is not valid without a recipient"
end
