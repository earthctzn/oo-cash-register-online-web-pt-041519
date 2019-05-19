class CashRegister
  
  attr_accessor :items, :total
  @@basket = []

  def initialize(total = 0.0, emp_disc = 0)
    @total = total
    apply_discount(emp_disc)
  end
  
  def add_item(item, unit_price = 0.0)
    @@basket << item
    @total += unit_price
  end
  
  def apply_discount(num = 0)
    
  
  end
  
  # def void_last_transaction()
  
  # end

    # def items
    #   @@basket[]
      
    
 
    
    
  # end








end
