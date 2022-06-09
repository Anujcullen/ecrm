class CreateUserManagements < ActiveRecord::Migration[6.0]
  def change
    create_table :user_managements do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.integer :policy_type
      t.string :company
      t.integer :phone
      t.string :email
      t.date :policy_effective
      t.date :expiration_date
      t.integer :premium
      t.integer :status

      t.timestamps
    end
  end
end
