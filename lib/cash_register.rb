require "pry"
class CashRegister
  
  attr_accessor :items, :total


  def initialize(emp_disc=0)
    total = 0
    @total = total
    @emp_disc = emp_disc.to_f
    @shopping_cart = [ @items = []]
    apply_discount
  end
  
  def add_item(product_name, unit_price = 0.0, qty = 1)
    count=0 
    while count < qty
      @total += unit_price
      @items << product_name
      count += 1
    end
    
  end
  
  def apply_discount
   if grand_total = @total - @total * @emp_disc.to_f / 100
    @total = grand_total
    return "After the discount, the total comes to $#{grand_total.to_i}."
  else
    return "There is no discount to apply."
  end 
end
  def discount
   @emp_disc
  end
    
  
  def total
    @total
  end
  

  
  # def void_last_transaction()
  
  # end

    def items
     @items
    end








end
