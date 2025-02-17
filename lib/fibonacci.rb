class Fibonacci
  def iterative_fibs(length)
    a = 0
    b = 1
    sequence = []

    length.times do
      sequence << a
      a, b = b, a + b
    end

    sequence
  end
end