class CashRegister

  attr_accessor :total, :discount, :items, :last_item_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    @last_item_price = (price * quantity)
    quantity.times do 
      @items << item
    end
  end

  def apply_discount
    @total = @total - ((@total * discount )/ 100)
    if discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_item_price
  end

end
