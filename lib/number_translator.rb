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
      if array != (['0','0','0'])
        if i > 0 and array
          output_array.push(magnitudeSyntax[i-1])
        end
        if array
          output_array.push(array.three_digit_test())
        end
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
    onesHash = {"1" => "one","2" => "two", "3" => "three","4" => "four","5" => "five","6" => "six","7" => "seven","8" => "eight","9" => "nine",
    "0" => "" }

    teensHash = {"10" => "ten","11" => "eleven","12" => "twelve","13" => "thirteen","14" => "fourteen","15" => "fifteen","16" => "sixteen","17" => "seventeen","18" => "eighteen",
    "19" => 'nineteen'}

    prefixHash = {"2" => "twen", "3" => "thir","4" => "four","5" => "fif","6" => "six","7" => "seven","8" => "eight","9" => "nine"}

    magnitudes = ['ty','hundred']

    assign_tens = Proc.new {|number|
      output = ""
      tens_array=[]
      if number.to_i == 0
        output = ""
      elsif number.to_i < 10
        output = onesHash.fetch(number.to_i.to_s)
      end
      if number.to_i.between?(10,19)
        output = teensHash.fetch(number)
      elsif number.to_i >=20
        tens_array.push(prefixHash.fetch(number[0]) + magnitudes[0])
        tens_array.push(assign_tens.call(number[1]))
        output = tens_array.join(" ").rstrip()
      end
      output
    }

    output_word= ""

    if self == ['0']
      output_word = "zero"
    else
      ones_and_tens_combined = self.each_slice(2).to_a
      ones_and_tens_combined.map!{|n| n.reverse.join("")}

      hundreds_output_array = []
      if self.length() == 3
        hundreds_output_array.push(assign_tens.call(ones_and_tens_combined[1]), magnitudes[1])
      end
      output_word = hundreds_output_array.push(assign_tens.call(ones_and_tens_combined[0])).join(" ").rstrip
    end
    output_word
  end
end
