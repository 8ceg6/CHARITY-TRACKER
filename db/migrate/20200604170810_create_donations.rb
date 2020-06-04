class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :donor_id
      t.string :charity_id
      t.timestamps
    end
  end
end
