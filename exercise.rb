class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    output_arr = []
    str.split(" ").each do |word|
      if word.length > 4
        last_char = word[word.length - 1]
        if word[0] == word[0].upcase
          if last_char == "." or last_char == "?" or last_char == ","
            output_arr.push("Marklar" + word[word.length - 1])
          else
            output_arr.push("Marklar")
          end
        else
          if last_char == "." or last_char == "?" or last_char == ","
            output_arr.push("marklar" + word[word.length - 1])
          else
            output_arr.push("marklar")
          end
        end
      else
        output_arr.push(word)
      end
    end
    return output_arr.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sequence_arr = [1, 1]
    i = 1
    until i == (nth - 1)
      sequence_arr.push(sequence_arr[i] + sequence_arr[i-1]) unless sequence_arr.length <= 1
      
      i += 1
    end
    return sequence_arr.filter { |num| num % 2 == 0  }.sum
  end

end
