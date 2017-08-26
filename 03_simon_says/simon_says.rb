def echo text
  return text
end

def shout text
  return text.upcase
end

def repeat(word, number=2)
  text = (word + ' ')*number
  return text.chomp(' ')
end

def start_of_word(word, number)
  return word[0..(number - 1)]
end

def first_word text
  space = text.index(' ') - 1
  return text[0..space]
end

def titleize text
  list = text.split(' ')
  list[0] = list[0].capitalize
  list.map! do |word|
    if word == "and" or word == "over" or word == "the"
      word = word
    else
      word = word.capitalize
    end
  end
  return list.join(' ')
end
