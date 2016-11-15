class Fixnum
  define_method(:initial_test) do
    num_string = self.to_s()
    negative_prefix= ""
    num_array= []

    number_to_pass_to_submethod = 0
    output = ""
    final_output = ""

# Test for negatives
digits1to3Array = []
digits4to6Array = []
digits7to9Array = []
digits10to12Array = []

    if self <0
      num_string_array = []
      num_string_array = num_string.split("")
      num_string_array.shift()
      num_string = num_string_array.join("")
      negative_prefix.concat("negative ")
    end

    num_array = num_string.split("")
    length = num_array.length()

    if length <= 3
      output_from_submethod = num_array.join().to_i().three_digit_test()
    elsif length <= 6
      digits1to3Array.push(num_array.pop(3))
      digits4to6Array.push(num_array)

      output_three_dig= digits1to3Array.join().to_i().three_digit_test()
      output_six_dig = digits4to6Array.join().to_i().three_digit_test()
      output_from_submethod = output_six_dig + " thousand " + output_three_dig
    elsif length <= 9
      digits1to3Array.push(num_array.pop(3))
      digits4to6Array.push(num_array.pop(3))
      digits7to9Array.push(num_array)

      output_three_dig= digits1to3Array.join().to_i().three_digit_test()
      output_six_dig = digits4to6Array.join().to_i().three_digit_test()
      output_nine_dig = digits7to9Array.join().to_i().three_digit_test()
      output_from_submethod = output_nine_dig + " million " + output_six_dig + " thousand " + output_three_dig
    elsif length <= 12
      digits1to3Array.push(num_array.pop(3))
      digits4to6Array.push(num_array.pop(3))
      digits7to9Array.push(num_array.pop(3))
      digits10to12Array.push(num_array)

      output_three_dig= digits1to3Array.join().to_i().three_digit_test()
      output_six_dig = digits4to6Array.join().to_i().three_digit_test()
      output_nine_dig = digits7to9Array.join().to_i().three_digit_test()
      output_twelve_dig = digits10to12Array.join().to_i().three_digit_test()
      output_from_submethod = output_twelve_dig + " billion " + output_nine_dig + " million " + output_six_dig + " thousand " + output_three_dig
    end
    final_output = negative_prefix.concat(output_from_submethod)
  end
end

class Fixnum
  define_method(:three_digit_test) do
    # onesHash = Hash.new()
    onesHash = {"1" => "one","2" => "two", "3" => "three","4" => "four","5" => "five","6" => "six","7" => "seven","8" => "eight","9" => "nine","0" => "" }
    preteensHash = {"10" => "ten","11" => "eleven","12" => "twelve"}
      prefixHash = {"2" => "twen", "3" => "thir","4" => "four","5" => "fif","6" => "six","7" => "seven","8" => "eight","9" => "nine"}
    num_string = self.to_s()
    negative_prefix= ""
    num_array= []
    output_word= ""

    num_array = num_string.split("").reverse!()
    length = num_array.length()
    ones_word = onesHash.fetch(num_array[0])
    tens_word = ""
    hundreds_word =""
    thousands_word=""

    if length >= 2
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

    if length >= 3
      if num_array[1] == "0" and num_array[0] == "0"
      hundreds_word = onesHash.fetch(num_array[2]) + " hundred"
      elsif num_array[1] == "0" and num_array[0].to_i >= 1
      hundreds_word = onesHash.fetch(num_array[2]) + " hundred " + ones_word
      elsif num_array[1].to_i >= 1
      hundreds_word = onesHash.fetch(num_array[2]) + " hundred " + tens_word
      end
    output_word = hundreds_word
    end
    else length=1
      if num_array == ["0"]
        output_word = "zero"
      else
        output_word = ones_word
      end
    end
    output_word
  end
end
