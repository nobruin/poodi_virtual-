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
        if n == 0
          return "No more bottles of beer on the wall, no more bottles of beer.\n" \
          "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        end
        
        return "#{n} #{container(n)} of beer on the wall, #{n} #{container(n)} of beer.\n" \
        "Take #{pronoun(n)} down and pass it around, #{quantity(n - 1)} #{container(n - 1)} of beer on the wall.\n"        
    end

    def container(number)
        if number == 1
          "bottle"
        else
          "bottles"
        end
    end
    
    def pronoun(number)
      if(number == 1)
        "it"
      else
        "one"
      end
    end

    def quantity(number)
        if number == 0
          "no more"
        else
          number.to_s
        end
    end
end