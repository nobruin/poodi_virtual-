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
        bottle_number = BottleNumber.new(n)
        next_bottle_number = BottleNumber.new(bottle_number.successor)

        return "#{bottle_number} of beer on the wall, ".capitalize + 
               "#{bottle_number} of beer.\n"+
                  bottle_number.action + 
               "#{next_bottle_number} of beer on the wall.\n"        
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
    if self.number == 1
      return "bottle"
    end 
    
    "bottles"
  end

  def pronoun
    if(number == 1)
      return "it"
    end  
  
    "one"
  end

  def quantity
      if number == 0
        return "no more"
      end
      
      return number.to_s
  end

  def action
      if number == 0
      return "Go to the store and buy some more, "
      end 
      "Take #{pronoun} down and pass it around, "   
  end

  def successor
      if number == 0
        return 99
      end

      return number - 1
  end
end
