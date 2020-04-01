require 'pry'
class CashRegister
    attr_accessor :total, :discount, :quantity, :cart

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount
        if discount != 0
            self.total = self.total - (self.total * self.discount / 100)
            result =  "After the discount, the total comes to $#{total}."
        else
            result = "There is no discount to apply."
        end
        return result
    end

    def item_list(title)
        item = [title]
        all_items = []
        item_list.each do |purchase|
            all_items << item
        end
        self.cart << all_items
    end

    def items
        return self.cart
    end

end
