class Discount < ApplicationRecord
  include UUID

  def self.give_discount(quantity, price, discount, user_id)
    if (@discount = Discount.find_by(uuid: discount)) && @discount[:available]
      if @discount[:one_time_use]
        @discount.update({available: false, user_id: user_id})
        @price = price - (price * @discount[:percent])
        @price = @price + (quantity - 1) * price
        @price
      else
        total = quantity * price
        @price = total - (total * @discount[:percent])
      end
      return @price
    else
      0
    end
  end

  def self.generate(num, params)
    @discounts = []
    num.times do |i|
      discount = Discount.create(params)
      @discounts.push(discount)
    end
    @discounts
  end
end
