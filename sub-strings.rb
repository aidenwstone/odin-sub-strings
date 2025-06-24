def substrings(phrase, substrings)
  # Take a phrase and array of substrings as arguments
  # Return a hash of each found substring & how many times it was found
  substrings.reduce(Hash.new) do |found_strings, string|
    string_count = phrase.downcase.scan(string).length
    found_strings[string] = string_count if string_count > 0
    found_strings
  end
end