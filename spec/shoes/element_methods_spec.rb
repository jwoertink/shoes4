require 'shoes/spec_helper'
require 'shoes/element_methods'
include Shoes::ElementMethods

describe Shoes::ElementMethods do
  let(:mock_gui) { mock(:set_font, :update_text, :hidden, :new) }
  let(:mock_parent) { mock(:gui => "mock gui", :add_child => "ok") }
  let(:new_stack) { Shoes::Stack.new(mock_parent, {}) }
  
  context "para" do

    it "should return a TextBlock object" do
      new_stack do
        para("test").should be_kind_of Shoes::TextBlock
      end
    end
    
    it "should take any number of text arguments"
    it "should take a hash of style options"
  end
  
end