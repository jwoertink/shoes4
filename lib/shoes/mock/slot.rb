module Shoes
  module Mock
    class Slot
      include Shoes::ElementMethods
      
      def initialize(parent, opts={}, &blk)
      end
      
      def add_child(element)
      end
      
      def positioning(x, y, max)
      end
      
      def contents_alignment(slot)
      end
      
    end
    
    #class Flow < Slot; end
    class Stack < Slot; end
  end
end