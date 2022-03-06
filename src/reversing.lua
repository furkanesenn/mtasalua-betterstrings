-- string reversing 

function reverseString(instring)
    local base_table = to_array(instring)
    local reversed_table = {}
    for j = #base_table, 1, -1 do 
        reversed_table[#instring - j + 1] = base_table[j]
    end 
    local reversed_str = from_array(reversed_table)
    return reversed_str
end 
