# encoding: utf-8

require 'helper'

class TestPhoneNumberTW < Test::Unit::TestCase
  def setup
    @tester = FFaker::PhoneNumberTW
  end

  def test_mobile
    assert_match(/09\d{2}[\s]*\d{6}/, @tester.mobile)
  end

  def test_phone
    assert_match(/0\d{8,9}/, @tester.phone)
  end

  def test_phone_number
    10.times do
      assert_match(/0\d{8,9}/, @tester.phone)
    end
  end
end
