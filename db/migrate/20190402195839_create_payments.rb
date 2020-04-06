class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :building, foreign_key: true
      t.string :unit
      t.date :date
      t.string :name
      t.string :amount
      t.text :comments

      t.timestamps

      ActiveRecord::Base.connection.execute("UPDATE SQLITE_SEQUENCE SET seq = 909 WHERE name = 'invoices'")
    end
  end
end
