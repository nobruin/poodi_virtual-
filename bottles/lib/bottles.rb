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
        elsif n == 1
          return"1 bottle of beer on the wall, 1 bottle of beer.\n" \
          "Take it down and pass it around, no more bottles of beer on the wall.\n"
        elsif n == 2
          return "2 bottles of beer on the wall, 2 bottles of beer.\n" \
          "Take one down and pass it around, 1 bottle of beer on the wall.\n"
        end
        
          return "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
          "Take one down and pass it around, #{n - 1} bottles of beer on the wall.\n"        
    end
end