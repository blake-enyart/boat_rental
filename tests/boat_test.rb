require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'

class BoatTest < Minitest::Test

  def setup
    @kayak = Boat.new(:kayak, 20)
  end

  def test_it_exist

    assert_instance_of Boat, @kayak
  end

  def test_attributes_store_and_return_correctly

    assert_equal :kayak, @kayak.type
    assert_equal 20, @kayak.price_per_hour
    assert_equal 0, @kayak.hours_rented
  end

  def test_add_hour_increments_correctly

    assert_equal 0, @kayak.hours_rented

    @kayak.add_hour

    assert_equal 1, @kayak.hours_rented

    @kayak.add_hour

    assert_equal 2, @kayak.hours_rented
  end
end
