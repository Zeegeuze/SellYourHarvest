class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :company_name
      t.string :contact_person
      t.string :address

      t.timestamps
    end
  end
end
