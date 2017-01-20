require 'test_helper'

class CollaborationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user cannot be nil" do
    collab = Collaboration.new
    assert_not collab.save
  end

  test "uniquess of present buyer pair" do
    presentT = Present.create(description: "testP")
    user1 = User.create(name: "t1")
    user2 = User.create(name: "t2")


    collaborationTest = Collaboration.new(present: presentT, is_buyer: true, user: user1)
    assert collaborationTest.save

    collaborationTest = Collaboration.new(present: presentT, is_buyer: true, user: user2)
    assert_not collaborationTest.save

  end
end
