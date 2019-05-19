require "pry"
class CashRegister
  
  attr_accessor :items, :total


  def initialize(total = 0, emp_disc = 0)
    @total = total
    @emp_disc = emp_disc
    @shopping_cart = {:names => @items = []}
    apply_discount(emp_disc)
  end
  
  def apply_discount(num = 0)
    @total = @total - @total * num.to_f / 100
    return "After the discount, the total comes to $#{grand_total}"
  end 
  
  def discount
    @emp_disc
  end
    
  
  def total
    @total
  end
  
  def add_item(product_name, unit_price = 0.0, qty = 1)
    count=0 
    while count < qty
      @total += unit_price
      @items << product_name
      count += 1
    end
    
  end
  
  # def void_last_transaction()
  
  # end

    def items
     @items
    end








end
