require 'pry'

class Anagram
    attr_reader :anagram
    def initialize(anagram)
        @anagram = anagram
    end

    def match(words)
        matches = []
        sorted_anagram = @anagram.chars.sort
        words.each do |word|
            if word.chars.sort == sorted_anagram
                matches << word
            end
        end
        matches
    end
end