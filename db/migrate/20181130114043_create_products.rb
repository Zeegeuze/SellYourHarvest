class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :amount
      t.string :delivery_option
      t.integer :stars, inclusion: { in: [1, 2, 3, 4, 5] }
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
