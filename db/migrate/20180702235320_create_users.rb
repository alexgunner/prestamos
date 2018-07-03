class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :address
      t.string :country
      t.string :city
      t.string :password
      t.string :ci

      t.timestamps
    end
  end
end
