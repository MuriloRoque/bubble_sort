def bubble_sort(arr)
  for i in 0...arr.length
    for j in 0...arr.length - i - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end

def bubble_sort_by(arr)
  for i in 0...arr.length
    for j in 0...arr.length - i - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if yield(arr[j], arr[j + 1]).positive?
    end
  end
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2])

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end
