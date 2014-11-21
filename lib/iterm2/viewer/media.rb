module Iterm2
  module Viewer
    # Create a new media object
    class Media
      # Dependency
      require 'mime/types'
      require 'base64'

      # Validate and construct media object
      #
      # @param object [String] file path which are need to open
      def initialize(object)
        @mime ||= MIME::Types.of(object).first

        # Raise error an error if file type isn't supported
        fail TypeError unless renderable?

        @data ||= renderable? ? construct(object) : nil
      end

      # @return [Symbol] data return base64 string of file
      attr_reader :data

      # Construct base64 blob from binary
      #
      # @param object [String] file path which are need to open
      # @return [String] base64 data of binary file
      def construct(object)
        Base64.encode64(open(object).read)
      end

      # Helper method.
      # Detect current kind such as (application, image, document)
      #
      # @return [String] current kind of file
      def kind
        @mime.media_type.to_sym
      end

      # Helper method.
      # Detect current type such as (.png, .pdf, .txt) and so on of se
      #
      # @return [String] current type of file
      def type
        @mime.sub_type
      end

      # Determine whether type is renderable
      # @note Renderable Types and MIME's listed below in supported_types method
      # @return [Boolean]
      def renderable?
        supported_types.key?(kind) && supported_types[kind].include?(type)
      end

      # Renderable types and kinds
      def supported_types
        {
          image: %w(jpeg jpg png tiff gif)
        }
      end
    end
  end
end
