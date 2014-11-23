require 'test_helper'

describe Iterm2::Viewer::Render do
  it 'renderer will not be created without media object as argument' do
    assert_raises ArgumentError do
      Iterm2::Viewer::Render.new
    end
  end

  it 'renderer will not be initialized  with incorrect object argument' do
    assert_raises ArgumentError do
      Iterm2::Viewer::Render.new 'String'
    end
  end

  it 'render will be initialized if object type will be correct' do
    file =  File.absolute_path(File.dirname(__FILE__) + '../../../../support/supported.png')
    media = Iterm2::Viewer::Media.new(file)

    Iterm2::Viewer::Render.new(media).wont_be_nil
  end
end
