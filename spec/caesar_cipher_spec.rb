require_relative '../lib/caesar_cipher'

describe "letter method" do
  it "should return letter x + y " do
    expect(letter("a", 5)).to eq("f")
    expect(letter("j", 3)).to eq("m")
    expect(letter("a", 26)).to eq("a")
    expect(letter("z", 1)).to eq("a")
    expect(letter("+", 6)).to eq("+")
  end
end



describe "sentence method" do
  it "should return sentence x + y" do
    expect(caesar_cipher("House", 4)).to eq("Lsywi")
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Hello mother + dad", 10)).to eq("Rovvy wydrob + nkn")
    expect(caesar_cipher("7 apple", 2)).to eq("7 crrng")
  end
end