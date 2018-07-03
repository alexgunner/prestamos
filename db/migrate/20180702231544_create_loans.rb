class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.float :amount
      t.date :valid_until
      t.text :additional_details

      t.timestamps
    end
  end
end
