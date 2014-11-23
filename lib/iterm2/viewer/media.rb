module Iterm2
  module Viewer
    # Create a new media object
    class Media < String
      # Dependency
      require 'mime/types'
      require 'base64'

      # Validate and construct media object
      #
      # @param object [String] need to prepare to render
      def initialize(object)
        # Raise error if file doesn't exist
        fail ArgumentError, 'file doesn\'t exist' unless File.file? object

        # Get file MIME
        @mime ||= MIME::Types.of(object).first

        # Raise error if file type isn't supported
        fail TypeError, 'file type isn\'t supported' unless renderable?

        # construct object and inject blob into parent class
        super(construct object)
      end

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
      # Detect current type such as (.png, .pdf, .txt)
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
