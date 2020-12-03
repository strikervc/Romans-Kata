def validate_non_repetitions_DLV(roman)
    chain = roman.split("")
    first_letter = chain [0]
    if first_letter == "D"
        for i in (1..chain.length - 1)
            if chain[i] == first_letter
                message = "Syntax error: 'D' letter cannot be repeated"
            else 
                message = "All right"
            end
        end
    end

    if first_letter == "L"
        for i in (1..chain.length - 1)
            if chain[i] == first_letter
                message = "Syntax error: 'L' letter cannot be repeated"
            else 
                message = "All right"
            end
        end
    end

    if first_letter == "V"
        for i in (1..chain.length - 1)
            if chain[i] == first_letter
                message = "Syntax error: 'V' letter cannot be repeated"
            else 
                message = "All right"
            end
        end
    end
    return message
end
         
def range_0_to_500 (roman)
    array = roman.split("")
    if array[0] == "M"
        message = "Syntax error: Range must be 500 or less (but no minus than 0)"
    else
        message = "All right"
    end
    return message
end

def validate_romans (roman)
    str = roman.split("")
    first_roman_letter = str[0]

    case first_roman_letter
    when "I"
        times = 0
        for i in (1..str.length - 1)
            if str[i] == "I"
                times += 1
                if times > 3
                    message = "Syntax error: 'I' cannot be repeated more than three times"
                else 
                    message = "All right"
                end
            end
        end
        if str[3] != nil 
            message = "Syntax error: No numbers allowed at pos 3"
        else 
            message = "All right"
        end

        if str[2] == "I" || str[2] == nil
            message = "All right"
        else 
            message = "Syntax error"
        end
    end
end