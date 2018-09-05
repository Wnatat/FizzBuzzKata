require 'fizzbuzz'

RSpec.describe Fizzbuzz do
  subject { described_class.new }

  context "when numbers not multiples of 3 or 5" do
    it "prints same number" do
      (1..100).each do |number|
        if((number % 3 != 0) && (number % 5 != 0))
          expect(subject.print(number)).to eq number
        end
      end
    end
  end

  context "when numbers multiple of 3" do
    it "prints Fizz" do
      (3..99).step(3) do |number|
        if(number % 3 == 0 && !(number % 5 == 0))
          expect(subject.print(number)).to eq "Fizz"
        end
      end
    end
  end

  context "when numbers multiple of 5" do
    it "prints Buzz" do
      (5..100).step(5) do |number|
        if(!(number % 3 == 0) && number % 5 == 0)
          expect(subject.print(number)).to eq "Buzz"
        end
      end
    end
  end

  context "when numbers multiple of both 3 and 5" do
    it "prints FizzBuzz" do
      expect(subject.print(15)).to eq "FizzBuzz"
    end
  end
end
