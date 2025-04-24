class Bottles
    def song()
        verses(99, 0)
    end
    
    def verses(start, finish)
        start.downto(finish).map do |n|
            verse(n)
        end.join("\n")
    end

    def verse(n)
        return "#{quantity(n).capitalize} #{container(n)} of beer on the wall, " + 
               "#{quantity(n)} #{container(n)} of beer.\n"+
               action(n) + 
               "#{quantity(successor(n))} #{container(successor(n))} of beer on the wall.\n"        
    end

    def container(number)
        if number == 1
          return "bottle"
        end 
        
        "bottles"
    end
    
    def pronoun(number)
      if(number == 1)
        return "it"
      end  
      
      "one"
    end

    def quantity(number)
        if number == 0
          return "no more"
        end
        
        return number.to_s
    end

    def action(number)
        if number == 0
        return "Go to the store and buy some more, "
        end 
        "Take #{pronoun(number)} down and pass it around, "   
    end

    def successor(number)
        if number == 0
          return 99
        end

        return number - 1
    end
end