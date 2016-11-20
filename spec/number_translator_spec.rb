require('rspec')
require('pry')
require('pry-doc')
require('number_translator')
describe('String#initial_test') do
  it("removes negatives and calls three_digit_test for numbers three digits or less") do
    expect('16'.initial_test()).to(eq("sixteen"))
  end
  it ("returns word form of value at index[0] point of array (ones digit of input number) prepended with 'negative' if value is negative ") do
    expect(('-2').initial_test()).to(eq("negative two"))
  end

  it ("returns word form of value for numbers with length 4-6") do
    expect(('1235').initial_test()).to(eq("one thousand two hundred thirty five"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('12235').initial_test()).to(eq("twelve thousand two hundred thirty five"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('112235').initial_test()).to(eq("one hundred twelve thousand two hundred thirty five"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('-112235').initial_test()).to(eq("negative one hundred twelve thousand two hundred thirty five"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('1112235').initial_test()).to(eq("one million one hundred twelve thousand two hundred thirty five"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('-100112235').initial_test()).to(eq("negative one hundred million one hundred twelve thousand two hundred thirty five"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('100100112235').initial_test()).to(eq("one hundred billion one hundred million one hundred twelve thousand two hundred thirty five"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('999999999999').initial_test()).to(eq("nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine"))
  end
  it ("returns word form of value for numbers with length 4-6") do
    expect(('400000000000').initial_test()).to(eq("four hundred billion"))
  end
end
# #
describe('Array#three_digit_test') do
#
  it ("returns 'zero' if value equals 0") do
    expect(["0"].three_digit_test()).to(eq("zero"))
  end
# #END ONES
#
  it ("returns word form of value for arrays holding numbers ten through twelve") do
    expect(['2','1'].three_digit_test()).to(eq("twelve"))
  end
  it ("returns word form of value for arrays holding numbers thirteen through nineteen") do
    expect(['6','1'].three_digit_test()).to(eq("sixteen"))
  end
  it ("returns word form of value for index[1] when value is equal to 2 - 9") do
    expect(['0','2'].three_digit_test()).to(eq("twenty"))
  end
  it ("concatinates word-string output of numbers where index[1] equals 2-9 with word-string at index[0] to produce complete word. Inserts space between word-numbers") do
    expect(['9','9'].three_digit_test()).to(eq("ninety nine"))
  end
# #END TENS
#
  it ("concatinates word-string from ones-digit hash of value at index[2] point of array with  string 'hundred'") do
    expect(['0','0','1'].three_digit_test()).to(eq("one hundred"))
  end
  it ("concatinates word-string of value at index[2] with word-string of value at index points [1] and [0]") do
    expect(['3','3','3'].three_digit_test()).to(eq("three hundred thirty three"))
  end
  it ("concatinates word-string of value at index[2] with word-string of value at index points [1] and [0]") do
    expect(['5','0','2'].three_digit_test()).to(eq("two hundred five"))
  end
#END HUNDREDS
  it ("concatinates word-string from ones-digit hash of value at index[3] point of array with  string 'thousand'") do
    expect('1000'.initial_test()).to(eq("one thousand"))
  end
  it ("concatinates word-string of value at index[3] with word-string of value at index points [2] through [0]") do
    expect('1205'.initial_test()).to(eq("one thousand two hundred five"))
  end
end
