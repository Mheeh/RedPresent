require 'test_helper'

class PresentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "test" do
    assert_equal Present.find_by(name: "Bomb").price, 360.0
  end


  test "buyer" do
    assert_equal(User.find_by(name: "Eva"),Present.find_by(name: "Bomb").buyer)
  end

end
