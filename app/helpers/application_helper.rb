module ApplicationHelper
	def bootstrap_class_for flash_type
	   { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
	 end

	 def flash_messages(opts = {})
	   flash.each do |msg_type, message|
	     concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do
	             concat content_tag(:button, 'x'.html_safe, class: "close", data: { dismiss: 'alert' })
	             concat message
	           end)
	   end
	   nil
	end

	def glyph(*names)
    content_tag :i, nil, class: glyph_class(*names)
  end

  def cart_glyph
    content_tag :i, nil, class: 'fi-shopping-cart'
  end


  def glyph_class(*names)
    if names.include?('login')
      'glyphicon glyphicon-log-in'
    else
      'glyphicon glyphicon-log-out'
    end
  end

end
