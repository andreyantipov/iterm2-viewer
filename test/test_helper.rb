if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'
require File.expand_path('../../lib/iterm2/viewer.rb', __FILE__)

