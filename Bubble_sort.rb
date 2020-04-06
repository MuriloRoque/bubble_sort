def bubble_sort(arr)
  arr.each do
    j = 0
    while j < arr.length - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      j += 1
    end
  end
  arr
end

def bubble_sort_by(arr)
  arr.each do
    j = 0
    while j < arr.length - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if yield(arr[j], arr[j + 1]).positive?
      j += 1
    end
  end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
