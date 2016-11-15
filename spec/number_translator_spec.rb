require('rspec')
require('pry')
require('number_translator')

describe('Fixnum#translate') do
  # it ("returns a string with number") do
  #   expect(12.translate()).to(eq("12"))
  # end
  # it ("returns an array of each digit of number") do
  #   expect(12.translate()).to(eq(["1","2"]))
  # end
  # it ("returns a reverse array of each digit of number") do
  #   expect(12.translate()).to(eq(["2","1"]))
  # end
  # it ("returns length of array") do
  #   expect(12.translate()).to(eq(2))
  # end
  # it ("returns value at index[0] point of array (ones digit of input number)") do
  #   expect(12.translate()).to(eq("2"))
  # end
  # it ("returns word form of value at index[0] point of array (ones digit of input number)") do
  #   expect(12.translate()).to(eq("two"))
  # end
#END ONES
  # it ("returns value at index[1] point of array (tens digit of input number)") do
  #   expect(12.translate()).to(eq("1"))
  # end
  it ("returns word form of value for arrays holding numbers ten through twelve") do
    expect(12.translate()).to(eq("twelve"))
  end
#   it ("returns word form of value for arrays holding numbers thirteen through nineteen") do
#     expect(16.translate()).to(eq(["sixteen"]))
#   end
#   it ("returns word form of value for index[1] when value is equal to 2 - 9") do
#     expect(22.translate()).to(eq(["twenty"]))
#   end
#   it ("concatinates word-string output of numbers where index[1] equals 2-9 with word-string at index[0] to produce complete word. Inserts space between word-numbers") do
#     expect(32.translate()).to(eq(["thirty two"]))
#   end
# #END TENS
#   it ("returns value at index[2] point of array (hundreds digit of input number)") do
#     expect(125.translate()).to(eq(["1"]))
#   end
#
#   it ("returns word-string from ones-digit hash of value at index[2] point of array") do
#     expect(125.translate()).to(eq(["one"]))
#   end
#   it ("concatinates word-string from ones-digit hash of value at index[2] point of array with  string 'hundred'") do
#     expect(125.translate()).to(eq(["one hundred"]))
#   end
#   it ("concatinates word-string of value at index[2] with word-string of value at index points [1] and [0]") do
#     expect(125.translate()).to(eq(["one hundred"]))
#   end
# #END HUNDREDS
#   it ("returns value at index[3] point of array (ones digit of input number)") do
#     expect(1205.translate()).to(eq(["1"]))
#   end
#   it ("returns word form of value at index[3] point of array (ones digit of input number)") do
#     expect(1205.translate()).to(eq(["one"]))
#   end
#   it ("concatinates word-string from ones-digit hash of value at index[3] point of array with  string 'thousand'") do
#     expect(1205.translate()).to(eq(["one thousand"]))
#   end
#   it ("concatinates word-string of value at index[3] with word-string of value at index points [2] through [0]") do
#     expect(1205.translate()).to(eq(["one thousand two hundred five"]))
#   end
#
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
