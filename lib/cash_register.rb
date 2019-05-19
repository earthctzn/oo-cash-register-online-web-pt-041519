class CashRegister
  
  attr_accessor :items, :total


  def initialize(total = 0, emp_disc = "There is no discount to apply.")
    @total = total
    @shopping_cart = {:names => @items}
    discount(emp_disc)
  end
  
  def discount(num = 0)
    m = @total * num / 100
     @total - m
  end
  
  def total
    @total
  end
  
  def add_item(product_name, unit_price = 0.0, qty = 1)
    @items << product_name ||= qty += 1 
    @total += unit_price
  end
  
  # def void_last_transaction()
  
  # end

    # def items
    #   @@basket[]
      
    
 
    
    
  # end








end
