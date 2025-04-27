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
        bottle_number = BottleNumber.for(n)
        
        return "#{bottle_number} of beer on the wall, ".capitalize + 
               "#{bottle_number} of beer.\n"+
                  bottle_number.action + 
               "#{bottle_number.successor} of beer on the wall.\n"        
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
      BottleNumber.for(number - 1)
  end

  def self.for(number)
  
    if number == 0
        BottleNumber0
    elsif number == 1
        BottlesNumber1
    elsif number == 6
        BottleNumber6
    else
        BottleNumber
    end.new(number)
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
    return BottleNumber.for(99)
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

class BottleNumber6 < BottleNumber
  
  def container
    "six-pack"
  end
  
  def quantity
    "1"
  end 
end