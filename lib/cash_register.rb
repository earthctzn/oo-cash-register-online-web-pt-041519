class CashRegister
  
  attr_accessor :items, :total
  attr_reader :discount

  def initialize(total = 0, emp_disc = 0)
    @total = total
    @discount = emp_disc
    @shopping_cart = {:names => @items = []}
    apply_discount(emp_disc)
  end
  
  def apply_discount(num = 0)
    grand_total = @total - @total * num / 100
    return "After the discount, the total comes to $#{@total += grand_total}"
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
