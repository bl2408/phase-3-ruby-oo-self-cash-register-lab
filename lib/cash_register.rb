
class CashRegister

    attr_accessor :discount, :total, :items, :last

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end
    
    def add_item title, price, quantity=1
        @total += price * quantity
        @last = price * quantity
        quantity.times { @items << title }
    end

    def apply_discount

        return "There is no discount to apply." if discount == 0

        @total = @total * (1 - (discount / 100.0 ) )
        "After the discount, the total comes to $#{total.to_i}."
    end

    def void_last_transaction
        p @last
        @total -= @last
    end


end