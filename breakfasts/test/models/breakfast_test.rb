require 'test_helper'

class BreakfastTest < ActiveSupport::TestCase

  test "name is required" do
    breakfast = Breakfast.new
    assert_equal false, breakfast.save
  end

  test "valid" do
    breakfast = breakfasts(:one)
    assert_equal true, breakfast.save!
  end

end
