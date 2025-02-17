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

  def recursive_fibs(length, a = 0, b = 1, sequence = [])
    return sequence if sequence.length == length

    sequence <<= a
    recursive_fibs(length, b, a + b, sequence)
  end
end