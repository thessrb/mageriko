class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :hungry_person, index: true
      t.belongs_to :dish, index: true
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
