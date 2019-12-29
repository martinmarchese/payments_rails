class AddIsPasswordChangedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_password_changed, :boolean, default: false, null: false
  end
end
