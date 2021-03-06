module Shoes
  module Swt
    class Image
      include Common::Child
      include Common::Move
      include Common::Resource

      attr_reader :parent, :real, :dsl, :container, :paint_callback, :width, :height

      def initialize(dsl, parent, blk)
        @dsl = dsl
        @parent = parent
        @blk = blk
        @left, @top = @dsl.left, @dsl.top
        @container = @parent.real

        @real = ::Swt::Graphics::Image.new(::Swt.display, @dsl.file_path)
        @width, @height = @real.getImageData.width, @real.getImageData.height
        
        parent.dsl.contents << @dsl
        
        @paint_callback = lambda do |event|
          gc = event.gc
          gcs_reset gc
          gc.drawImage @real, @left, @top
        end
        @container.add_paint_listener(@paint_callback)
      end
    end
  end
end
