# encoding: utf-8

require 'helper'

class TestLoremTW < Test::Unit::TestCase
  def test_paragraph
    assert FFaker::LoremTW.paragraph.length >= 3 * 4 * 2
  end

  def test_sentence
    assert FFaker::LoremTW.sentence.length >= 4 * 2
  end

  def test_paragraphs
    assert FFaker::LoremTW.paragraphs.length >= 2
  end

  def test_paragraphs_is_not_a_string_representation_of_an_array
    assert !/[\[\]]+/.match([FFaker::LoremTW.paragraphs].flatten.join(' '))
  end

  def test_paragraphs_is_an_array
    assert FFaker::LoremTW.paragraphs.class == Array
  end

  def test_sentences
    assert FFaker::LoremTW.sentences.length >= 2
  end

  def test_sentences_is_an_array
    assert FFaker::LoremTW.sentences.class == Array
  end

  def test_sentences_via_to_s_produces_string_terminated_with_period
    string = FFaker::LoremTW.sentences.to_s
    assert string.class == String
    assert string =~ /。$/
  end

  def test_words
    assert FFaker::LoremTW.words.length >= 2
  end

  def test_word
    assert FFaker::LoremTW.word.length >= 1
  end

  def test_ptts
    assert FFaker::LoremTW.ptts.length >= 2
  end

  def test_ptt
    assert FFaker::LoremTW.ptt.length >= 1
  end

  def test_sentence_p
    assert FFaker::LoremTW.sentence_p.length >= 4 * 2
  end

  def test_sentences_p
    assert FFaker::LoremTW.sentences_p.length >= 2
  end

  def test_sentences_p_is_an_array
    assert FFaker::LoremTW.sentences_p.class == Array
  end
end
