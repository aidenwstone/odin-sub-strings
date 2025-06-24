def substrings(phrase, substrings)
  # Take a phrase and array of substrings as arguments
  # Return a hash of each found substring & how many times it was found
  downcased_phrase = phrase.downcase

  substrings.each_with_object(Hash.new) do |string, found_strings|
    string_count = downcased_phrase.scan(string).length
    found_strings[string] = string_count if string_count > 0
  end
end