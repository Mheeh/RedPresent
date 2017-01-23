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
    presentT = Present.create(description: "testP", price: 100.00)
    user1 = User.create(name: "t1")
    user2 = User.create(name: "t2")


    collaborationTest = Collaboration.new(present: presentT, is_buyer: true, user: user1, part: 150.00)
    assert collaborationTest.save

    collaborationTest = Collaboration.new(present: presentT, is_buyer: true, user: user2,part: 150.00)
    assert_not collaborationTest.save

  end

  test "buyer scope" do
    assert_equal Collaboration.where( is_buyer:  true).count, Collaboration.buyer.count
  end


  context "Shoulda Tests" do

    should validate_presence_of(:part)
    should validate_presence_of(:is_buyer)
    should validate_presence_of(:user)
    should validate_presence_of(:present)
  end

  # NOT WORKING
  # context "test 3" do
  #   should validate_uniqueness_of(:is_buyer).scoped_to(:present)
  # end

end


