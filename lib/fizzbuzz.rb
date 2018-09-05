class Fizzbuzz
  def print number
    if fizz?(number) && buzz?(number)
      return "FizzBuzz"
    end

    if fizz? number
      return "Fizz"
    end

    if buzz? number
      return "Buzz"
    end

    number
  end

  private
  def fizz? number
    number % 3 == 0
  end

  def buzz? number
    number % 5 == 0
  end
end
