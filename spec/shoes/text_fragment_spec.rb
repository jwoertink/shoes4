require 'shoes/spec_helper'

describe Shoes::TextFragment do
  let(:mock_gui) { mock([:set_font, :update_text, :hidden, :new]) }
  let(:mock_parent) { mock(:gui => mock_gui, :add_child => "ok") }

  
end