function to_array(instring)
    local str_Table = {}
    for i = 1, #instring do 
        str_Table[i] = instring:sub(i, i)
    end 
    return str_Table
end 

function from_array(inarray)
    local text = ''
    for i = 1, #inarray do 
        text = text .. inarray[i]
    end 
    return text 
end 
