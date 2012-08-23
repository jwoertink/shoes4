require 'shoes/common_methods'

module Shoes
  
  # This class is pretty close to a TextBlock with a few small exceptions
  # This class doesn't output text, but only alters text.
  # It should take any object that responds_to to_s
  class TextFragment 
    include Shoes::CommonMethods
    
    attr_reader  :gui, :blk, :parent, :text
    alias_method :to_s, :text
    
    def initialize(parent, text, opts={})
      @parent = parent
      @app = opts[:app]
      @text = text
      @gui = Shoes.configuration.backend_for(self, @parent.gui)
      @parent.add_child(self)
    end
    
    def set_style(widget, index)
      @gui.set_style(widget, index)
    end
    
  end
  
  # This class handles "bold" text
  # Not sure if this should stay here. Just copying how Slot hold Flow and Stack for now.
  class Strong < TextFragment
    
    def initialize(parent, text, opts={})
      super(parent, text, opts)
    end
    
  end
  
end