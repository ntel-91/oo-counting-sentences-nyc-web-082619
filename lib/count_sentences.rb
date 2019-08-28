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

  def count_sentences
    self.split.count do |word|
      word.sentence? || word.question? || word.exclamation?
    end
    
  end
end

# test = String.new 
# test = "Hello.. I am here, I am here, I am here. Are you there?? Talk to me!!"
# puts test.count_sentence
