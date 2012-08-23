module Shoes
  module Swt
    class TextFragment
      include Common::Child
      attr_accessor :style, :widget
      
      # Need the widget or text element to apply this new style to
      def initialize(dsl, parent)
        @dsl = dsl
        @parent = parent
        @style = ::Swt::Custom::StyleRange.new
      end
      
      def set_substring(index)
        @style.start = index
        @style.length = @dsl.text.length
      end
      
      def set_style(widget, index)
        @widget = widget
        #This number needs to be the index of @dsl.text in @widget.text
        # can't just do a simple regex in case there's a string like
        # para("test", "test", strong("test"), "test", "test")
        set_substring(index) 
        @widget.style_range = @style
      end
      
      def width
        @widget.size.x
      end
      
      def height
        @widget.size.y
      end
      
      def move(left, top)
        @widget.set_location(left, top) unless @widget.disposed?
      end
      
    end
    
    class Strong < TextFragment
      
      def initialize(dsl, parent)
        super(dsl, parent)
        @style.fontStyle = ::Swt::SWT::BOLD
      end
      
    end
  end
end