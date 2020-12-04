def validate_range(roman)
    chain = roman.split("")
    if chain[0] == "M" || chain[0] == "D" || chain[0] == "C"
        message = "Out of range"
    else 
        message = "Ok"
    end
end