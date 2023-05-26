class Solver
  def factorial(num)
    raise ArgumentError, 'Invalid input. Factorial accepts only positive integers.' if n.negative?

    (1..num).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 15).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    n.to_s
  end
end

solver = Solver.new
p solver.factorial(5)
p solver.reverse('hello')
p solver.fizzbuzz(75)
