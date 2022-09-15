def caeser_cipher(string, key)
  string.chars.map! do |char| 
    case char
    when /[[:upper:]]/ then ((char.ord + key - 65) % 26 + 65).chr
    when /[[:lower:]]/ then ((char.ord + key - 97) % 26 + 97).chr
    else char
    end  
  end.join ""
end

p caeser_cipher("What a String!", 26)