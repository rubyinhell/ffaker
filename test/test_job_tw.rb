# encoding: UTF-8

require 'helper'

class TestFakerJobTW < Test::Unit::TestCase
  def setup
    @tester = FFaker::JobTW
  end

  def test_title
    assert @tester.title.length >= 1
  end

  def test_nouns
    assert_kind_of Array, @tester::JOB_NOUNS
  end
end
