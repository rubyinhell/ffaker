# encoding: utf-8

module FFaker
  # Based on information from https://en.wikipedia.org/wiki/Telephone_numbers_in_Taiwan
  module PhoneNumberTW
    extend ModuleUtils
    extend self

    # Number Ranges
    # ex: 02 2022 7410
    # prefix 02/04 - 8digits
    # prefix 03/04/05/06/07/08 - 7digits
    # prefix 037/082/089 - 6digits
    # prefix 0826/0836 - 5digits
    #
    # 09xx xxx xxx - Mobile phone services 
    # 0800 xxx xxx - Toll-Free line services

    PHONE_FORMAT_PREFIX_8 = ['%s########',
                             '%s########'].freeze
    PHONE_FORMAT_PREFIX_7 = ['%s#######',
                             '%s#######'].freeze
    PHONE_FORMAT_PREFIX_6 = ['%s######',
                             '%s######'].freeze
    PHONE_FORMAT_PREFIX_5 = ['%s#####',
                             '%s#####'].freeze
    COUNTRY_PREFIX_8 = %w(02 04).freeze
    COUNTRY_PREFIX_7 = %w(03 04 05 06 07 08).freeze
    COUNTRY_PREFIX_6 = %w(037 082 089).freeze
    COUNTRY_PREFIX_5 = %w(0826 0836).freeze

    MOBILE_PHONE_FORMAT = ['%s ######', '%s######'].freeze
    MOBILE_PHONE_PREFIX = ['09', '8869'].freeze

    # Generates a phone number
    #  02 xxxx xxxx
    #
    def phone
      case rand(4)
      when 0 then FFaker.numerify("#{phone_format_prefix_8}")
      when 1 then FFaker.numerify("#{phone_format_prefix_7}")
      when 2 then FFaker.numerify("#{phone_format_prefix_6}")
      when 3 then FFaker.numerify("#{phone_format_prefix_5}")
      end
    end

    # Generates a mobile number
    #  09xx xxx xxx
    #
    def mobile
      FFaker.numerify("#{mobile_phone_number_format}")
    end

    def mobile_phone_number_format
      MOBILE_PHONE_FORMAT.sample % "09#{rand(11..89)}"
    end

    def phone_format_prefix_8
      PHONE_FORMAT_PREFIX_8.sample % COUNTRY_PREFIX_8.sample.to_s
    end

    def phone_format_prefix_7
      PHONE_FORMAT_PREFIX_7.sample % COUNTRY_PREFIX_7.sample.to_s
    end

    def phone_format_prefix_6
      PHONE_FORMAT_PREFIX_6.sample % COUNTRY_PREFIX_6.sample.to_s
    end

    def phone_format_prefix_5
      PHONE_FORMAT_PREFIX_5.sample % COUNTRY_PREFIX_5.sample.to_s
    end

    def country_code
      '+886'
    end
  end
end
