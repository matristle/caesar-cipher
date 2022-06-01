require './lib/caesar_cipher.rb'

describe CaesarCipher do
  subject { CaesarCipher.new }

  describe "#check_and_transform" do
    it "returns ordinal number when not in bounds" do
      expect(subject.check_and_transform('#'.ord, 7)).to eql('#'.ord)
    end

    it "returns shifted ordinal number when in bounds" do
      expect(subject.check_and_transform('G'.ord, 2)).to eql('I'.ord)
    end

    it "returns cycled number when shift factor is positive" do
      expect(subject.check_and_transform('Z'.ord, 2)).to eql('B'.ord)
    end

    it "returns cycled number when shift factor is negative" do
      expect(subject.check_and_transform('D'.ord, -5)).to eql('Y'.ord)
    end

    it "returns cycled number when shift factor is zero" do
      expect(subject.check_and_transform('H'.ord, 0)).to eql('H'.ord)
    end
  end
end