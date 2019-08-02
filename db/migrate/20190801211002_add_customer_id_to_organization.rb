class AddCustomerIdToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :customer_id, :string
    add_column :organizations, :card_brand, :string
    add_column :organizations, :card_last_four, :string
  end
end
