def validate_range(roman)
    chain = roman.split("")
    if chain [0] == "I" || chain [0] == "V" || chain [0] == "X"  
        message = "Ok"
        if chain[0] == "X"
            if chain[1] != nil
                message = "Syntax error"
            else
            end
        end
    else
        message = "Syntax error"
    end  
    return message
end