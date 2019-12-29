class AddIsPasswordChangedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_password_change_required, :boolean, default: true, null: false
  end
end
