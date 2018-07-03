class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_status, :boolean
    add_column :users, :user_activation_token, :string
  end
end
