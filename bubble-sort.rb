def bubble_sort(arr)
  for i in 0...arr.length
    for j in 0...arr.length - i - 1
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
return arr
end

def bubble_sort_by(arr)
  for i in 0...arr.length
    for j in 0...arr.length-i-1
      if yield(arr[j],arr[j+1]) > 0
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
return arr
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end