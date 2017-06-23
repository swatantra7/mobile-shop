class CreatePersons< ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.string :first_name
      t.string :last_name
      t.string :account_id
      t.string :email

      t.timestamps null: false
    end
  end
end
