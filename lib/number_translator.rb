

class Fixnum
  define_method(:translate) do
    # onesHash = Hash.new()
    onesHash = {"1" => "one",
                "2" => "two",
                "3" => "three",
                "4" => "four",
                "5" => "five",
                "6" => "six",
                "7" => "seven",
                "8" => "eight",
                "9" => "nine",
                "0" => "" }
      preteensHash = {
                "10" => "ten",
                "11" => "eleven",
                "12" => "twelve"}
      prefixHash = {
                "2" => "twe",
                "3" => "thir",
                "4" => "four",
                "5" => "fif",
                "6" => "six",
                "7" => "seven",
                "8" => "eight",
                "9" => "nine"}


    num_array= []
    outputWord= ""
    num_array = self.to_s().split("").reverse!()
    length = num_array.length()


    teenTest = num_array[1].concat(num_array[0])
    teenTestInt = teenTest.to_i

    if teenTestInt>=10 and teenTestInt<=12
      outputWord = preteensHash.fetch(teenTest)
    elsif teenTestInt>=13 and teenTestInt<=19
      outputWord = prefixHash.fetch(teenTest)+"teen"
    end

    outputWord
    # num_array.each.with_index() do |number, index|
    #
    # end
    # num_array
  end
end
