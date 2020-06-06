class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.belongs_to :donor
      t.belongs_to :charity
      t.timestamps
    end
  end
end
