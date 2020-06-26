def bubble_sort(arr)
    new_arr = Array.new()
    arr.each_with_index do |x,i|
        if i === arr.length-1
            arr[i]            
        else arr[i+1]
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
            else 
                arr[i], arr[i+1] = arr[i], arr[i+1]
            end
        end  
    end
    if arr.each_cons(2).all?{|left, right| left <= right}
        p arr 
    else
        bubble_sort(arr)  
    end 
end
bubble_sort([55,54,53,52,51,48,49,1,9,5,6])