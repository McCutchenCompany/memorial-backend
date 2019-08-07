class CreateUserMemorials < ActiveRecord::Migration[5.2]
  def change
    create_table :user_memorials, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :user_id
      t.string :memorial_id

      t.timestamps
    end

    @memorials = Memorial.all
    @memorials.each do |mem|
      user = User.find(mem[:user_id])
      user_mem = mem.user_memorials.new()
      user_mem.user = user
      user_mem.save
    end
  end
end
