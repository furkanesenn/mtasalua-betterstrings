function capitalize(instring)
    local instring_table = to_array(instring)
    instring_table[1] = string.upper(instring_table[1])
    local capitalized_str = from_array(instring_table)
    return capitalized_str
end 

function count(instring, inelement)
    local chars = string.gmatch(instring, inelement)
    local i = 0
    for char in chars do 
        i = i + 1
    end 
    return i
end 

function startswith(instring, inelement)
    return instring:sub(1, #inelement) == inelement 
end 

function endswith(instring, inelement)
    return instring:sub(#instring - #inelement + 1, #instring) == inelement
end 

function indexOf(initerable, inelement)
    if type(initerable) == 'string' then initerable = to_array(initerable) end 
    for key, value in pairs(initerable) do 
        if value == inelement then return key end 
    end 
    return nil
end 

function slice(initerable, startIndex, endIndex)
    if type(initerable) == 'string' then initerable = to_array(initerable) end 
    local sliced = {}
    for i = startIndex or 1, endIndex or #initerable do 
        sliced[#sliced + 1] = initerable[i]
    end 
    return sliced
end 

function isalnum(instring)
    local i = 0
    for _,v in string.gmatch(instring, '%w') do 
        i = i + 1
    end 
    return i == #instring
end 

function isalpha(instring)
    local i = 0
    for _,v in string.gmatch(instring, '%a') do 
        i = i + 1
    end 
    return i == #instring    
end 

function isdigit(instring)
    local i = 0
    for _,v in string.gmatch(instring, '%d') do 
        i = i + 1
    end 
    return i == #instring
end 

function islower(instring)
    return string.lower(instring) == instring 
end 

function isupper(instring)
    return string.upper(instring) == instring
end 

function replace(instring, old, new, count)
    if type(initerable) == 'string' then initerable = to_array(initerable) end 
    if not tonumber(count) then count = nil end 
    return string.gsub(instring, old, new, count)
end 

function strip(instring, chars)
    if not chars then chars = {' '} else chars = to_array(chars) end 
    local intable = to_array(instring)
    for i = #intable, 1, -1 do 
        v = intable[i]
        if indexOf(chars, v) then 
            table.remove(intable, i)
        end 
    end 
    return from_array(intable)
end 

function swapcase(instring)
    local array = to_array(instring)
    for k, v in pairs(array) do 
        if islower(v) == true then array[k] = string.upper(v) end 
        if isupper(v) == true then array[k] = string.lower(v) end 
    end 
    return from_array(array)
end 

function title(instring)
    local words = split(instring, ' ')
    for key, word in pairs(words) do 
        words[key] = capitalize(word)
    end 
    return table.concat(words, ' ')
end 