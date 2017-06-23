class Mobile < ActiveRecord::Base

	has_attached_file :mobile_list,
					 styles: { medium: "300x300>", thumb: "100x100>" }

	validates_attachment_content_type :mobile_list, :content_type => ['image/jpeg', 'image/png']


	def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end

end

