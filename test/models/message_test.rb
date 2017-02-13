require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "message attributes must not be empty" do
  	message = Message.new
  	assert message.invalid?
  	assert message.errors[:title].any?
  	assert message.errors[:description].any?
  end
  test "message is not valid without a unique title" do
  	message = Message.new(title:messages(:one).title,
  		description:messages(:one).description)
  	assert message.invalid?
  	assert_equal ["has already been taken"], message.errors[:title]
  end
  test "message is not valid if the description is too short" do
  	message = Message.new(title:"This is a title", description: "too short")
  	assert message.invalid?
  	assert message.errors[:description].any?
  end
end
