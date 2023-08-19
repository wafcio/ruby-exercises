# frozen_string_literal: true

class Euler17
  WORDS = [
    nil,
    "one ",
    "two ",
    "three ",
    "four ",
    "five ",
    "six ",
    "seven ",
    "eight ",
    "nine ",
    "ten ",
    "eleven ",
    "twelve ",
    "thirteen ",
    "fourteen ",
    "fifteen ",
    "sixteen ",
    "seventeen ",
    "eighteen ",
    "nineteen "
  ].freeze

  DECIMAL_WORDS = [
    nil,
    nil,
    "twenty ",
    "thirty ",
    "forty ",
    "fifty ",
    "sixty ",
    "seventy ",
    "eighty ",
    "ninety "
  ].freeze

  def run(max)
    (1..max)
      .map { |number| in_words(number).gsub(" ", "") }
      .map { |number| number.gsub(" ", "").size }.sum
  end

  private

  def in_words(n)
    return big_number_in_words(n) if n >= 1_000
    return houndreds_in_word(n) if n >= 100
    return "#{DECIMAL_WORDS[n / 10]} #{in_words(n % 10)}" if n >= 20
    return WORDS[n] if (1..19).include?(n)

    ""
  end

  def big_number_in_words(n)
    return "#{in_words(n / 1_000_000_000)}billion #{in_words(n % 1_000_000_000)}" if n >= 1_000_000_000
    return "#{in_words(n / 1_000_000)}million #{in_words(n % 1_000_000)}" if n >= 1_000_000

    "#{in_words(n / 1_000)}thousand #{in_words(n % 1_000)}"
  end

  def houndreds_in_word(n)
    return "#{in_words(n / 100)}hundred " if (n >= 100) && (n % 100).zero?

    "#{in_words(n / 100)}hundred and #{in_words(n % 100)}" if n >= 100
  end
end
