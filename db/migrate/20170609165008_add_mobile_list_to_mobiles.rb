class AddMobileListToMobiles < ActiveRecord::Migration
  def change
  	add_attachment :mobiles, :mobile_list
  end
end
