class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :new
      t.integer :age
      t.text :mail

      t.timestamps
    end
  end
end
