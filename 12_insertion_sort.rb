def insertion_sort(arr)
  (1...(arr.length)).each do |i|
    key = arr[i]
    j = i - 1
    while(j>=0 && arr[j]>key)
      arr[j+1] = arr[j]
      j -= 1
    end
    arr[j+1] = key
  end

  return arr
end

puts insertion_sort((1..10000).to_a.reverse).inspect