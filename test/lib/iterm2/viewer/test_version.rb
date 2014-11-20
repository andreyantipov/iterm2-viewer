require 'test_helper'

describe Iterm2::Viewer do
    it "must be defined" do
          Iterm2::Viewer::VERSION.wont_be_nil
    end
end
