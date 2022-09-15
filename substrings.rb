def substrings(string, dect)
  string.downcase!
  dect.reduce(Hash.new(0)) do |result, substring|
    if string.include? substring
      result[substring] += string.scan(substring).count
    end
    result
  end
end

p substrings(
  "Howdy partner, sit down! How's it going?",
  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
)