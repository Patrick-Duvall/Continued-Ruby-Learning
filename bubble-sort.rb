#Sorting without sort to better understand sorting
arr = [99,4,9,29,1]

def my_sort(arr)
#Switch allows us to return if the array is in order
    switch = true
    while switch
        switch = false
        # arr.length -2 to avoid comparison with element outside array
        for i in 0..(arr.length() -2)
            #if bigger, swap
            while arr[i] > arr[i+1]
                if  arr[i] > arr[i+1]
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                    switch = true
                end
            end
        end
    end
    arr
end
