require 'shoes/spec_helper'

describe Shoes::TextFragment do
  let(:mock_gui) { mock([:set_font, :update_text, :hidden, :new]) }
  let(:mock_parent) { mock(:gui => mock_gui, :add_child => "ok") }
  
  context "Strong" do
    before(:each) do
      @strong = Shoes::Strong.new(mock_parent, {})
    end
    it "should be a Strong class" do
      @strong.class.should == Shoes::Strong
    end
    
  end
  
end