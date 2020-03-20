class CreateItem < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name 
      t.string :description
      t.integer :effect
      t.integer :score_value
    end
  end
end
