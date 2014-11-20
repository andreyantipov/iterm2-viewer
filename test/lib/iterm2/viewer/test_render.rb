require 'test_helper'

class Render < Minitest::Test

  def test_that_object_will_not_render_until_argument_isnt_set
    assert_raises ArgumentError do
      Render.new
    end
  end

  def test_that_object_will_not_rendered_with_wrong_type_of_object
      #assert_raises ArgumentError do
      #  Render.new "wrong type of object"
      #end
      skip "todo: need to be fixed"
  end

  def test_that_object_will_render_with_correct_type_of_object
    skip "this test will pass later"
  end

end
