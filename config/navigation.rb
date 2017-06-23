# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
	navigation.autogenerate_item_ids = false
	navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.item :topic,:Topic,  topics_path
    primary.item :user, :User, users_path
    primary.item :mobile, :Mobile, mobiles_path
   	primary.dom_class = 'nav navbar-nav'
    primary.dropdown = true
  end
end