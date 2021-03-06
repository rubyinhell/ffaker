# encoding: utf-8

require 'helper'

class TestMovie < Test::Unit::TestCase
  def setup
    @tester = FFaker::Movie
  end

  def test_title
    assert_match(/[ a-z]+/, FFaker::Movie.title)
  end

  def test_rating
    assert FFaker::Movie::RATINGS.include? @tester.rating
  end
end
