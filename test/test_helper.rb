require "minitest/autorun"
require 'minitest/unit'
require 'minitest/pride'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require File.expand_path('../../lib/iterm2/viewer.rb', __FILE__)
