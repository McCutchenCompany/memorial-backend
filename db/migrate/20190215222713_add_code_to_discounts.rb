class AddCodeToDiscounts < ActiveRecord::Migration[5.2]
  def change
    add_column :discounts, :code, :string
    Discount.reset_column_information
    Discount.find_each do |discount|
      discount.update(code: SecureRandom.hex(4))
    end
  end
end
