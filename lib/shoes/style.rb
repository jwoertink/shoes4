# require 'shoes/common_methods'
# 
# module Shoes
#   
#   # This class is pretty close to a TextBlock with a few small exceptions
#   # The Style class doesn't output text, but only alters text.
#   # 
#   # Shoes::Style.new("hello", :kind => :strong) #=>  
#   class Style
#     include Shoes::CommonMethods
#     
#     attr_accessor :kind
#     
#     def initialize(parent, text, opts={})
#       @parent = parent
#       @kind = opts[:kind]
#       @app = opts[:app]
#       @text = text
#     end
#     
#   end
#   
# end