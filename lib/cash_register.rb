require 'pry'
# class Person
#
#   attr_accessor :age
#
#   def initialize(age = 0)
#     @age = age
#   end
#
#   def birthday
#     self.age += 1
#   end
# end
class CashRegister

attr_accessor :total, :last_item_price
attr_reader :discount

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @ITEM_ARRAY = []
  end

  def add_item(title, price, quantity = 1)
    @last_item_price = price
    @total += price * quantity
    i = 0
    while i < quantity
      @ITEM_ARRAY << title
      i += 1
    end
  end

  def apply_discount
    @total *= (100.0 - @discount) / 100.0
    @total = @total.to_i
    if 0.0 == discount
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @ITEM_ARRAY
  end

  def void_last_transaction
    @total -= @last_item_price
  end


end
