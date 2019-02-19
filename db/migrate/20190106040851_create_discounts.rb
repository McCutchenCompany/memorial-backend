class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.decimal :percent, precision: 15, scale: 10
      t.boolean :available, default: true
      t.string :user_id
      t.boolean :one_time_use, default: true

      t.timestamps
    end
  end
end
