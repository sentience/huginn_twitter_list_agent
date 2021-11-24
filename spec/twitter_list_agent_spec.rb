require 'rails_helper'
require 'huginn_agent/spec_helper'

describe Agents::TwitterListAgent do
  before(:each) do
    @valid_options = Agents::TwitterListAgent.new.default_options
    @checker = Agents::TwitterListAgent.new(:name => "TwitterListAgent", :options => @valid_options)
    @checker.user = users(:bob)
    @checker.save!
  end

  pending "add specs here"
end
