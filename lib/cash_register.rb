require "pry"
class CashRegister
  
  attr_accessor :items, :total, :items
  
  
  def initialize(discount = 0)
    total = 0
    @total = total
    @discount = discount
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
     if @discount == 0 
       "There is no discount to apply."
     end
     
    @total = @total * @discount/100
      "After the discount, the total comes to $#{@total}."   
  end 
  
  def discount
   @discount
  end

  def total
    @total
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    void = @transactions.pop
    @items.pop
    @total -= void
  end
end
