class CreateEnemy < ActiveRecord::Migration[6.0]
  def change
    create_table :enemies do |t|
      t.string :name 
      t.integer :strength 
      t.integer :hp 
      t.string :description
      t.integer :score_value
    end
  end
end
