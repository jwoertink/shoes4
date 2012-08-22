module Shoes
  
  # This class is pretty close to a TextBlock with a few small exceptions
  # This class doesn't output text, but only alters text.
  # It should take any object that responds_to to_s
  class TextFragment 
    include Shoes::CommonMethods
    
    attr_reader  :gui, :blk, :parent, :text
    attr_accessor :kind
    alias_method :to_s, :text
    
    def initialize(parent, text, opts={})
      @parent = parent
      @kind = opts[:kind]
      @app = opts[:app]
      @text = text
    end
    
  end
  
end