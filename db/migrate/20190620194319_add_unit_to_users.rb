class AddUnitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :unit, :string
  end
end
