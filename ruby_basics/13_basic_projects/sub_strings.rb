# frozen_string_literal: true

# @param [Array] dictionary
# @param [String] string
def substrings(string, dictionary)
  string_hash = {}
  dictionary.each do |el|
    string_hash.store(el, string.downcase.gsub(el).count) if string.downcase.include?(el)
  end
  print string_hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
