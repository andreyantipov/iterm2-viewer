module Iterm2
  module Viewer
    # Render new object in terminal
    # @param object [Iterm2::Viewer::Entity]
    class Render
      def initialize(object)
        raise ArgumentError, "incorrect media file" unless object.is_a? Iterm2::Viewer::Media
        # @see  http://iterm2.com/images.html
        # @note based on https://raw.githubusercontent.com/gnachman/iTerm2/master/tests/imgcat
        puts "\033]1337;File=;inline=1:#{object.data}\a\n"
      end
    end
  end
end
