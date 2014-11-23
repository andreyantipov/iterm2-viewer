require 'test_helper'

describe Iterm2::Viewer::Media do
    it 'media will not be created without route argument' do
      assert_raises ArgumentError do
        Iterm2::Viewer::Media.new
      end
    end

    it 'media will not be created with incorrect route argument' do
      assert_raises ArgumentError do
        Iterm2::Viewer::Media.new 'String'
      end
    end

    it 'media will be created if route and mime argument is correct' do
      file =  File.absolute_path(__dir__ + '/../../../media/supported.png')
      Iterm2::Viewer::Media.new(file).wont_be_empty
    end
end
