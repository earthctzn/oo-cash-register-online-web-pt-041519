class CashRegister
  
  attr_accessor :items, :total


  def initialize(total = 0, emp_disc = 0)
    @total = total
    @shopping_cart = {}
    discount(emp_disc)
  end
  
  def discount(num = 0)
    m = @total * num / 100
     @total - m
  end
  
  def total
    @total
  end
  
  def add_item(item, unit_price = 0.0, qty)
    @shopping_cart
    @total += unit_price
  end
  
  # def void_last_transaction()
  
  # end

    # def items
    #   @@basket[]
      
    
 
    
    
  # end








end
