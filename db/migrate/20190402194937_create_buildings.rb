class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :idAdm
      t.string :street
      t.string :streetNumber
      t.string :code

      t.timestamps
    end
  end
end
