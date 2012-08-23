require 'shoes/spec_helper'

describe Shoes::Strong do
  let(:mock_gui) { mock([:set_font, :update_text, :hidden, :new]) }
  let(:mock_parent) { mock(:gui => mock_gui, :add_child => "ok") }
  subject { Shoes::Strong.new(mock_parent, {}) }

  it "should be a Strong class" do
    subject.class.should == Shoes::Strong
  end
  
  it "should respond to text" do
    subject.should respond_to :text
  end
  
end