class RemoveEmailFromCharities < ActiveRecord::Migration[6.0]
  def change
    remove_column :charities, :email, :string
  end
end
