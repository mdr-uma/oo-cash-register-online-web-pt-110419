require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times do
      items << title
    end
    @last_transaction_amount = price * quantity

    # if quantity > 1
    #   i = 0
    #   while i < quantity
    #     @items << title
    #     i += 1
    #   end
    # else
    #   @items << title
    # end
    end

    def apply_discount
      if @discount > 0
        @discount = @discount/100.to_f
        # binding.pry
        @total = @total - (@total * (@discount))
         "After the discount, the total comes to $#{@total.to_i}."
    else
        "There is no discount to apply."
      end
    end

    def void_last_transaction
      @total = @total - @last_transaction_amount
    end
end
