class AddBuildingNameToPayments < ActiveRecord::Migration[5.2]
    def change
      add_column :payments, :building_name, :string, null: true
    end
  end