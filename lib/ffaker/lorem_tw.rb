# encoding: utf-8

module FFaker
  # Based on Perl's Text::Lorem
  module LoremTW
    extend ModuleUtils
    extend self

    def word
      WORDS.sample
    end

    def ptt
      PTT.sample
    end

    def words(num = 3)
      WORDS.sample(num)
    end

    def ptts(num = 3)
      PTT.sample(num)
    end

    def sentence(word_count = 4)
      s = words(word_count + rand(6))
      s = s.join
      "#{s},"
    end

    def sentence_p(word_count = 4)
      s = ptts(word_count + rand(6))
      s = s.join
      "#{s},"
    end

    def sentences(sentence_count = 3)
      s = (1..sentence_count).map { sentence }
      def s.to_s
        result = join(' ')
        result[-1] = '。'
        result
      end
      s
    end

    def sentences_p(sentence_count = 3)
      s = (1..sentence_count).map { sentence_p }
      def s.to_s
        result = join(' ')
        result[-1] = '。'
        result
      end
      s
    end

    def paragraph(sentence_count = 3)
      sentences(sentence_count + rand(3)).to_s
    end

    def paragraphs(paragraph_count = 3)
      (1..paragraph_count).map { paragraph }
    end
  end
end
