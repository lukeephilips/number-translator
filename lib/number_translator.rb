class String
  define_method(:initial_test) do
    magnitudeSyntax = ['thousand','million','billion','trillion']
    num_array = self.split("").reverse
    output_array =[]

    if num_array.last == "-"
      num_array.pop()
      negative = true
    end

    num_array.each_slice(3).to_a.each.with_index() do |array, i|
      if i > 0
        output_array.push(magnitudeSyntax[i-1])
      end
      if array
        output_array.push(array.three_digit_test())
      end
    end

    if negative
      output_array.push('negative')
    end
    output = output_array.reverse.join(" ")
  end
end

class Array
  define_method(:three_digit_test) do
    # onesHash = Hash.new()
    onesHash = {"1" => "one","2" => "two", "3" => "three","4" => "four","5" => "five","6" => "six","7" => "seven","8" => "eight","9" => "nine","0" => "" }

    preteensHash = {"10" => "ten","11" => "eleven","12" => "twelve"}

    prefixHash = {"2" => "twen", "3" => "thir","4" => "four","5" => "fif","6" => "six","7" => "seven","8" => "eight","9" => "nine"}

    num_array= []
    output_word= ""

    num_array = self
    ones_word = onesHash.fetch(num_array[0])
    tens_word = ""
    hundreds_word =""
    thousands_word=""
    if num_array.length() >= 2
      tens_digit = ""
      tens_digit_int = tens_digit.concat(num_array[1]+ num_array[0]).to_i

        if tens_digit_int >= 10 and tens_digit_int <= 12
          tens_word = preteensHash.fetch(tens_digit)
        elsif tens_digit_int >= 13 and tens_digit_int <= 19
          tens_word = prefixHash.fetch(num_array[0]) + "teen"
        elsif num_array[1].to_i >= 2 and num_array[0] == "0"
          tens_word = prefixHash.fetch(num_array[1]) + "ty"
        elsif num_array[1].to_i >= 2
          tens_word = prefixHash.fetch(num_array[1]) + "ty" + " " + ones_word
        end
        output_word = tens_word

    if num_array.length() >= 3
      if num_array[1] == "0" and num_array[0] == "0"
      hundreds_word = onesHash.fetch(num_array[2]) + " hundred"
      elsif num_array[1] == "0" and num_array[0].to_i >= 1
      hundreds_word = onesHash.fetch(num_array[2]) + " hundred " + ones_word
      elsif num_array[1].to_i >= 1
      hundreds_word = onesHash.fetch(num_array[2]) + " hundred " + tens_word
      end
    output_word = hundreds_word
    end
    else
      if num_array == ["0"]
        output_word = "zero"
      else
        output_word = ones_word
      end
    end
    output_word
  end
end
