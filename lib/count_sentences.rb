require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentence
    self.split(" ").count do |word|
      word.sentence?
    end
    
  end
end

test = String.new 
test = "Hello. I am here."
puts test.count_sentence
