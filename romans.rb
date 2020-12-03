def validate_non_repetitions_DLV(roman)
    chain = roman.split("")
    first_letter = chain [0]
    if first_letter == "D"
        for i in (1..chain.length)
            if chain[i] == first_letter
                message = "Syntax error: 'D' letter cannot be repeated"
            else 
                message = "All right"
            end
        end
    end

    if first_letter == "L"
        for i in (1..chain.length)
            if chain[i] == first_letter
                message = "Syntax error: 'L' letter cannot be repeated"
            else 
                message = "All right"
            end
        end
    end

    if first_letter == "V"
        for i in (1..chain.length)
            if chain[i] == first_letter
                message = "Syntax error: 'V' letter cannot be repeated"
            else 
                message = "All right"
            end
        end
    end
    return message
end
            