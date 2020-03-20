class CreateCharacter < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name 
      t.integer :strength
      t.integer :hp 
      t.integer :score  
      t.integer :user_id
    end
  end
end
