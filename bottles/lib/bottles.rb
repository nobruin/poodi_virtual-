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
        bottle_number = bottle_number_for(n)
        next_bottle_number = bottle_number_for(bottle_number.successor)

        return "#{bottle_number} of beer on the wall, ".capitalize + 
               "#{bottle_number} of beer.\n"+
                  bottle_number.action + 
               "#{next_bottle_number} of beer on the wall.\n"        
    end

    def bottle_number_for(n)
        if n == 0
            BottleNumber0
        elsif n == 1
            BottlesNumber1
        else
            BottleNumber
        end.new(n)
    end
end

class BottleNumber
  attr_accessor :number
  def initialize(number)
    @number = number
  end 

  def to_s
    "#{quantity} #{container}"
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def quantity      
      return number.to_s
  end

  def action
      "Take #{pronoun} down and pass it around, "   
  end

  def successor
      return number - 1
  end
end
class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end
  def action
    "Go to the store and buy some more, "
  end

  def successor
    return 99
  end
end
class BottlesNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end  
end