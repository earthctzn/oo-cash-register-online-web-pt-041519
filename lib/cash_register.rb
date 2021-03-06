require "pry"
class CashRegister
  
  attr_accessor :items, :total
  attr_reader :discount
  
  
  def initialize(emp_disc = nil)

    @total = 0
    @discount = emp_disc
    @items = []
    @transactions = []
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
    if @discount != nil
      "After the discount, the total comes to $#{@total -= (@total * (@discount/100.0)).to_i}."
    else 
        "There is no discount to apply."
    end
  end
  # def apply_discount
  #   if @discount != nil
  #     deduction = @discount/100.to_f
  #     @total = @total - @total * deduction
  #     "After the discount, the total comes to $#{@total.to_i}."
  #   else
  #     "There is no discount to apply."
  #   end
  # end
  
  
  def void_last_transaction
    void = @transactions.pop
    @items.pop
    @total -= void
  end
end
