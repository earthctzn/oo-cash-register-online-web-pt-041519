class CashRegister
  
  attr_accessor :items, :total


  def initialize(total = 0, emp_disc = 0)
    @total = total
    @shopping_cart = {:names => @items = []}
    # def self.discount(emp_disc)
    #   @total - @total * emp_disc / 100
    # end
  end
  
  def apply_discount(num = 0)
    @total - @total * num / 100
  end 
  
  def discount(num = 0)
    @total - @total * num / 100
  end
  
  def total
    @total
  end
  
  def add_item(product_name, unit_price = 0.0, qty = 1)
    @items << product_name
    if qty > 1
      @total += unit_price * qty
    else
      @total += unit_price
    end
  end
  
  # def void_last_transaction()
  
  # end

    # def items
    #   @@basket[]
      
    
 
    
    
  # end








end
