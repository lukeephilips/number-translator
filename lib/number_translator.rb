

class Fixnum
  define_method(:translate) do
    # OnesHash = Hash.new()
    OnesHash = {"1" => "one",
                "2" => "two",
                "3" => "three",
                "4" => "four",
                "5" => "five",
                "6" => "six",
                "7" => "seven",
                "8" => "eight",
                "9" => "nine",
                "0" => "" }
      PreteensHash = {
                "10" => "ten",
                "11" => "eleven",
                "12" => "twelve"}
      PrefixHash = {
                "2" => "twen",
                "3" => "thir",
                "4" => "four",
                "5" => "fif",
                "6" => "six",
                "7" => "seven",
                "8" => "eight",
                "9" => "nine"}


    num_array= []
    output_word= ""
    num_array = self.to_s().split("").reverse!()
    length = num_array.length()

    ones_word = OnesHash.fetch(num_array[0])
    tens_word = ""

    if length>1
      tens_digit = ""
      tens_digit_int = tens_digit.concat(num_array[1]+ num_array[0]).to_i

      if tens_digit_int >= 10 and tens_digit_int <= 12
        tens_word = PreteensHash.fetch(tens_digit)
      elsif tens_digit_int >= 13 and tens_digit_int <= 19
        tens_word = PrefixHash.fetch(num_array[0]) + "teen"
      elsif num_array[1].to_i >= 2 and num_array[0] == "0"
        tens_word = PrefixHash.fetch(num_array[1]) + "ty"
      elsif num_array[1].to_i >= 2
        tens_word = PrefixHash.fetch(num_array[1]) + "ty" + " " + ones_word
      end
      output_word = tens_word

      if length==3 and num_array[1] == "0" and num_array[0] == "0"
        output_word = OnesHash.fetch(num_array[2]) + " hundred"
      elsif length==3 and num_array[1] == "0" and num_array[0].to_i >= 1
        output_word = OnesHash.fetch(num_array[2]) + " hundred " + ones_word
      elsif length==3 and num_array[1].to_i >= 1
        output_word = OnesHash.fetch(num_array[2]) + " hundred " + tens_word
      end
    else
    output_word = ones_word
    end
    output_word
  end
end
