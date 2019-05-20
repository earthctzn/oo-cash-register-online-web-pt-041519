require "pry"
class CashRegister
  
  attr_accessor :items, :total, :items


  def initialize(emp_disc = nil)
    total = 0
    @total = total
    @emp_disc = emp_disc.to_f
    @items = []
    @transactions = []
    apply_discount
  end
  
  def add_item(product_name, unit_price = 0.0, qty = 1)
    count=0 
    while count < qty
      @total += unit_price
      @items << product_name
      count += 1
    end
    @transactions << unit_price
  end
  
  def apply_discount
     if @emp_disc != nil
       "There is no discount to apply."
     else
       
    end 
   end 
 
  def discount
   @emp_disc
  end
    
  
  def total
    @total
  end
  

  
  def void_last_transaction
    void = @transactions.pop
    @items.pop
    @total -= void
  end

  def items
    @items
  end








end
