
class CashRegister
  
  attr_accessor :total
  def initialize(discount= nil)
    @total = 0
    @discount = discount
    @cart = []
  end
  
   def add_item(title, price, quantity= 0)
      quantity > 0 ? @cart += [title] * quantity : @cart << title 
      quantity > 0 ? @total += price * quantity : @total += price
      @price = @total
    # @price
  end

  def apply_discount  
    return "There is no discount to apply." if @discount == nil
    discount_num = (self.total * @discount) / 100 unless @discount.nil?
    self.total -= discount_num
    "After the discount, the total comes to $#{self.total}."
  end
  
  def items
    @cart
  end
  
  # def void_last_transaction
  #   @price
  #   @cart.pop
  #   self.total -= @price.to_f
  #   @total.to_f
  # end
  
  def void_last_transaction
     self.total -= @price.to_f
     @total.to_f.round(2)
  end
end

