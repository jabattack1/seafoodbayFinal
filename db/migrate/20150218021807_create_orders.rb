class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :foods
      t.string :instruction
      t.string :total

      t.timestamps null: false
    end
  end
end
