require 'shoes/common_methods'

module Shoes
  
  # This class is pretty close to a TextBlock with a few small exceptions
  # The Style class doesn't output text, but only alters text.
  # 
  # Shoes::Style.new("hello", :kind => :strong) #=>  
  class Style #< Swt::Custom::StyleRange
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
        
    def style
      case @kind
      when :strong
        #Swt::SWT::BOLD
      when :em
        #Swt::SWT::ITALIC
      end
    end
    
  end
  
end