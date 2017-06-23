class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
    	t.string :moble_name
    	t.string :model
      t.timestamps null: false
    end
  end
end
