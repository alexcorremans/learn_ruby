def translate text
    list = text.split(' ')
    list.map! do |word|
      if ["a", "e", "i", "o", "u"].include? word[0]
        word = word + "ay"
      else
        if word[0..1] == "qu"
          word = word[2..-1] + "quay"
        elsif word[1..2] == "qu"
          word = word[3..-1] + word[0] + "quay"
        elsif ["a", "e", "i", "o", "u"].include? word[1]
          word = word[1..-1] + word[0] + "ay"
        elsif not ["a", "e", "i", "o", "u"].include? word[2]
          word = word[3..-1] + word[0..2] + "ay"
        elsif not ["a", "e", "i", "o", "u"].include? word[1]
          word = word[2..-1] + word[0..1] + "ay"
        end
      end
    end
    return list.join(' ')
end
