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

  puts bubble_sort([4,3,78,2,0,2])