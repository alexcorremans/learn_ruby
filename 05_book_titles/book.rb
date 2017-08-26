class Book
  def title=(title)
    @title = title
  end

  def title
    @list = @title.split(' ')
    @list[0] = @list[0].capitalize
    @list.map! do |word|
      if ["the","a","an","and","in","of"].include? word
        word = word
      else
        word = word.capitalize
      end
    end
    return @list.join(' ')
  end
end
