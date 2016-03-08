class CreateHungryPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :hungry_people do |t|
      t.string :name

      t.timestamps
    end
  end
end
