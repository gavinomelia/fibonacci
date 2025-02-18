def merge_sort(array)
  return array if array.size <= 1

  left, right = split(array)
  left_sorted = merge_sort(left)
  right_sorted = merge_sort(right)
  merge(left_sorted, right_sorted)
end

def split(array)
  mid = array.size / 2
  left = array.slice(0, mid)
  right = array.slice(mid, array.size - mid)
  [left, right]
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end