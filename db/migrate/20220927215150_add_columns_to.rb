class AddColumnsTo < ActiveRecord::Migration[6.1]
  def change
    add_column :first_name, :last_name, :email, :password_digest
  end
end
