require('rspec')
require('pry')
require('number_translator')
describe('Fixnum#initial_test') do
  it("removes negatives and calls three_digit_test for numbers three digits or less") do
    expect(16.initial_test()).to(eq("sixteen"))
  end
  it ("returns word form of value at index[0] point of array (ones digit of input number) prepended with 'negative' if value is negative ") do
    expect((-2).initial_test()).to(eq("negative two"))
  end
end

describe('Fixnum#three_digit_test') do
  # it ("returns a string with number") do
  #   expect(12.three_digit_test()).to(eq("12"))
  # end
  # it ("returns an array of each digit of number") do
  #   expect(12.three_digit_test()).to(eq(["1","2"]))
  # end
  # it ("returns a reverse array of each digit of number") do
  #   expect(12.three_digit_test()).to(eq(["2","1"]))
  # end
  # it ("returns length of array") do
  #   expect(12.three_digit_test()).to(eq(2))
  # end
  # it ("returns value at index[0] point of array (ones digit of input number)") do
  #   expect(12.three_digit_test()).to(eq("2"))
  # end
  it ("returns word form of value at index[0] point of array (ones digit of input number)") do
    expect(2.three_digit_test()).to(eq("two"))
  end
  it ("returns 'zero' if value equals 0") do
    expect(0.three_digit_test()).to(eq("zero"))
  end
  it ("returns word form of value at index[0] point of array (ones digit of input number) prepended with 'negative' if value is negative ") do
    expect((-2).three_digit_test()).to(eq("negative two"))
  end
#END ONES

  it ("returns word form of value for arrays holding numbers ten through twelve") do
    expect(12.three_digit_test()).to(eq("twelve"))
  end
  it ("returns word form of value for arrays holding numbers thirteen through nineteen") do
    expect(16.three_digit_test()).to(eq("sixteen"))
  end
  it ("returns word form of value for index[1] when value is equal to 2 - 9") do
    expect(20.three_digit_test()).to(eq("twenty"))
  end
  it ("concatinates word-string output of numbers where index[1] equals 2-9 with word-string at index[0] to produce complete word. Inserts space between word-numbers") do
    expect(99.three_digit_test()).to(eq("ninety nine"))
  end
#END TENS

  it ("concatinates word-string from ones-digit hash of value at index[2] point of array with  string 'hundred'") do
    expect(100.three_digit_test()).to(eq("one hundred"))
  end
  it ("concatinates word-string of value at index[2] with word-string of value at index points [1] and [0]") do
    expect(333.three_digit_test()).to(eq("three hundred thirty three"))
  end
#END HUNDREDS
  # it ("concatinates word-string from ones-digit hash of value at index[3] point of array with  string 'thousand'") do
  #   expect(1000.three_digit_test()).to(eq("one thousand"))
  # end
  # it ("concatinates word-string of value at index[3] with word-string of value at index points [2] through [0]") do
  #   expect(1205.three_digit_test()).to(eq(["one thousand two hundred five"]))
  # end

# #END Ones-Class of THOUSANDS
#   it ("returns value at index[4] point of array (tens digit of input number)") do
#     expect(12005.translate()).to(eq(["1"]))
#   end
#   it ("returns word form of value for index[4].concat(index[3]) and run through teens Hash to output correct word string") do
#     expect(12005.translate()).to(eq(["twelve"]))
#   end
#   it ("returns word form of value for index[4].concat(index[3]) when index[4] value is equal to 2 - 9") do
#     expect(22.translate()).to(eq(["twenty"]))
#   end
#   it ("concatinates word-string output of numbers where index[4] equals 2-9 with word-string at index[3] to produce complete word. Inserts space between word-numbers") do
#     expect(32000.translate()).to(eq(["thirty two"]))
#   end
#   it ("concatinates output of previous with string 'thousand'") do
#     expect(1205.translate()).to(eq(["one thousand"]))
#   end
#   it ("concatinates word-string of previous with word-string of value at index points [2] through [0]") do
#     expect(12205.translate()).to(eq(["twelve thousand two hundred five"]))
#   end
# #END Teens-Class of THOUSANDS
end
