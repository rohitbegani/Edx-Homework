def sum (arr)
    return 0 if arr.length == 0
    arr.inject (:+)
end


def max_2_sum (arr)
    return 0 if arr.length == 0
    return arr[0] if arr.length == 1
    
    arr = arr.sort {|a,b| b <=> a }
    return arr[0] + arr[1]
end
 
def sum_to_n?(arr, n)
   arr = arr.sort
   i = 0  
   j = arr.length - 1
   found = false
   while (i < j) 
        sum = arr[i] + arr[j]
        if (sum < n) 
            i += 1
        elsif (sum > n) 
            j -= 1
        else
            found = true
            break
        end
   end  
   
   return found
end