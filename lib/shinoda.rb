# frozen_string_literal: true

require_relative 'shinoda/version'

module Shinoda
  class << self
    def check_digit(basic_number)
      raise ArgumentError, 'The basic number is a 12-digit numeral.' unless basic_number.match(/\d{12}/)

      array1, array2 = basic_number.split('').each_slice(2).to_a.transpose

      total = array1.map(&:to_i).sum * 2 + array2.map(&:to_i).sum
      check_digit = 9 - (total % 9)

      check_digit.to_s
    end

    def corporate_number(basic_number)
      check_digit(basic_number) + basic_number
    end
  end
end
