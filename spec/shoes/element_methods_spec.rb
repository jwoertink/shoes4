require 'shoes/spec_helper'

describe Shoes::ElementMethods do
  let(:mock_gui) { mock([:set_font, :update_text, :hidden, :new]) }
  let(:mock_parent) { mock(:gui => mock_gui, :add_child => "ok") }
  
  context "strong" do
    it "should return a Strong object" do
      mock_stack do
        strong("test").class.should == Shoes::Strong
      end
    end
  end
  
  def mock_stack(opts={}, &blk)
    Shoes::Stack.new(mock_parent, opts, &blk)
  end
  
end