# frozen_string_literal: true

def caesar_cipher(phrase, shift)
  res = []
  phrase.bytes.each do |b_char|
    if (65..122).member?(b_char)
      char_offset = b_char >= 97 && b_char <= 122 ? 97 : 65
      b_char = (b_char + shift - char_offset) % 26 + char_offset
    end
    res.append(b_char.chr)
  end
  puts res.join
end

caesar_cipher('What a string!', 5)
