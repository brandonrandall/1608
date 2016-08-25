# use refute equal on something
# require_relative 'linked_list'
require_relative 'aug_22'
require 'minitest/autorun'
require 'minitest/pride'

class OfficeTest < Minitest::Test

  def test_office_exists
      office = Office.new("room 112")
      assert_equal true, office.exists?
  end

  def test_office_has_blue_windows
      office = Office.new("J 13")
      assert_equal "blue", office.window_color
  end

end
