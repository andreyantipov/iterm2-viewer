require 'test_helper'

# Testing media object
class Media < Minitest::Test
  def object_will_not_created_with_unsupported_type
    skip 'this test will pass later'
  end

  def object_will_be_rendered_with_supported_type
    skip 'this test will pass later'
  end
end
