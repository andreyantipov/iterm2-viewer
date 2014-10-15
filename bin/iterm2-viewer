#!/usr/bin/env ruby
# encoding: UTF-8

require 'base64'
require 'mime/types'

module Viewer

  class << self
    attr_accessor :configuration, :show
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :viewport

    #defaults
    def initialize
      @viewport =
        {
          width:  "auto",
          height: "auto",
          keep_aspect_ratio: true
        }
    end
  end

  # interface class
  def self.show(arguments)
    Base.new arguments if arguments.any?
  end

  class Base

    def initialize(routes)
      # display objects
      routes.each do |object|
        if exist? object
          display Media.new object
        end
      end
    end

    def exist?(object)
        File.file? object
    end

    class Media < String

      attr_reader :renderable, :data

      def initialize(data)
        super(data)
        @data ||= construct
      end

      def construct
        if renderable?
          source = open self
          Base64.encode64(source.read)
        else
          nil
        end
      end

      def kind
        MIME::Types.of(self).first.media_type
      end

      def type
        MIME::Types.of(self).first.sub_type
      end

      def type_renderable?
         Type.const_get kind.capitalize
      rescue NameError
        false
      end

      def kind_renderable?
        type_renderable? ? (Type.const_get(kind.capitalize)::MIME.include? type) : false
      end
      alias_method :renderable?, :kind_renderable?

      module Type
        module Image
          MIME = ['jpeg','jpg','png','tiff','gif']
        end
      end
    end

      # TODO: Add options support
      def display(object)
        # http://iterm2.com/images.html
        # based on https://raw.githubusercontent.com/gnachman/iTerm2/master/tests/imgcat
        puts "\033]1337;File=;inline=1:#{object.data}\a\n" if object.renderable?
      end
    end
end

# override defaults
Viewer.configure do |config|
  config.viewport[:width] = 10
end

# run application with shell parameters
Viewer.show ARGV
