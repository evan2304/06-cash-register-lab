class CashRegister
    
    attr_reader :discount
    attr_accessor :total
    attr_reader :quantity
    attr_accessor :last_transaction
    
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end 
    
    def total
        @total
    end 
    
    def add_item(title, price,quantity=1)
        price.to_i
        @total += (price*quantity)
        quantity.times{@items << title}
        @last_transaction=(price*quantity)
    end 
    
    def apply_discount
        @total_reduce = @total*@discount/100
        @total = @total - @total_reduce
        if @discount == 0
            return "There is no discount to apply."
        else
            return "After the discount, the total comes to $#{@total}."
        end 
    end
    
    def items
        @items
    end 
    
    
    def void_last_transaction
        @total = @total-@last_transaction
    end
    
    
end 