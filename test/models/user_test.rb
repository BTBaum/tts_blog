require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_name
    user = User.new(first_name: 'Brandan', last_name: 'Lennox')
    assert_equal 'Brandan Lennox', user.name
  end 
end
