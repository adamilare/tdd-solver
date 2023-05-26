class Solver
  def factorial(n)
    raise ArgumentError, 'Invalid input. Factorial accepts only positive integers.' if n.negative?

    (1..n).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    return 'fizzbuzz' if (n % 15).zero?
    return 'fizz' if (n % 3).zero?
    return 'buzz' if (n % 5).zero?

    n.to_s
  end
end

solver = Solver.new
p solver.factorial(5)
p solver.reverse('hello')
p solver.fizzbuzz(75)
