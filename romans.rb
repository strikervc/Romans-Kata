def validate_range(roman)
    chain = roman.split("")
    if chain[0] == "M" || chain[0] == "D" || chain[0] == "C"
        message = "Out of range"
    else 
        message = "Ok"
    end
end

def validate_non_repetitions(roman)
    chain = roman.split("")
    v_times= 0
    l_times = 0
    for i in (0..chain.length - 1)
         if chain[i] == "V"
             v_times = v_times + 1
                if v_times > 1
                    message = "Syntax error"
                    break
                else 
                    message = "Ok"
                end
          elsif chain[i] == "L"
             l_times = l_times + 1
                if l_times > 1
                    message = "Syntax error"
                    break
                else
                    message = "Ok"
                end
          end
    end  
    return message     
end

def validate_romans(romans)
    result = validate_range(romans)
    if result == "Ok"
        rept = validate_non_repetitions(romans)
        if rept == "Ok"
            chain = romans.split("")
            first_l = chain[0]
            case first_l
            when "I"
                if chain[3] != nil
                    message = "Syntax error"
                else
                    if chain[1] == "V" || chain[i] == "L"
                        if chain[2] != nil
                            message = "Syntax error"
                        else
                            message = "Ok"
                        end
                    end
                    puts message
                end   
                return message

            when "V"
                if chain[4] != nil
                    message = "Syntax error"
                else
                    for i in (1..chain.length - 1)
                        if chain[i] == "I" || chain[i] == nil
                           message = "Ok"                    
                        else
                           message = "Syntax error"
                           break
                        end
                    end
                    puts message
                end
         
                return message

            when "X"
                x_times = 0
                if chain[7] != nil
                    message = "Syntax error"
                         
                else
                    for i in (0..chain.length - 1)
                        if chain[i] == "X" 
                            x_times = x_times + 1
                            if x_times > 3
                                message = "Syntax error"
                                break
                            else
                                message = "Ok"
                            end
                        end

                        if chain[i] != "M" || chain[i] != "D" || chain[i] != "C" 
                           message = "Ok"                    
                        else
                           message = "Syntax error"
                           break
                        end
                    end   
                    puts message
                end
                return message       

            when "L"
                x_times = 0
                if chain[7] != nil
                    message = "Syntax error"
                         
                else
                    for i in (1..chain.length - 1) 
                        if chain[i] == "M" || chain[i] == "D" || chain[i] == "C" 
                           message = "Syntax error"         
                           break           
                        else
                           message = "Ok"
                           break
                        end
                    end  
                    puts message 
                end     
                return message       
            else
            end 
        end
        return rept
    else
        return result
    end
end

validate_romans("IX")