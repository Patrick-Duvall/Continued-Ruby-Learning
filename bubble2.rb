#Now with a block
def my_sort_by(arr)
#Switch allows us to return if the array is in order
    switch = true
    while switch
        switch = false
        # arr.length -2 to avoid comparison with element outside array
        for i in 0..(arr.length() -2)
            #No longer need the while loop here as this is performed by the block
            sort_method = yield( arr[i],  arr[i+1] )
            if sort_method > 0
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                    switch = true
            end
        end
    end
arr
end


 x = my_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
p x
