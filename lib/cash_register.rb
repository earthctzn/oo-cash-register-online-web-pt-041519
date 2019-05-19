class CashRegister
  
  attr_accessor :items 


  def initialize(total = 0, emp_disc = )
    @total = total
    @basket = []
    #apply_discount(emp_disc)
  end
  
  def add_item(item, unit_price = 0.0)
    @@basket << item
    @total += unit_price
  end
  
  def apply_discount(num)
    m = @total * num / 100
     @total - m
  end
  
  # def void_last_transaction()
  
  # end

    # def items
    #   @@basket[]
      
    
 
    
    
  # end








end
