class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :status
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
