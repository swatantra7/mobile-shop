# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :ABOUTUS, 'ABOUT US', '#' do |items|
    	items.item :about, 'ABOUT US', '#'
    end
    primary.item :HOME, 'HOME', '#'
   	primary.dom_class = 'nav navbar-nav'
    primary.dropdown = true
    primary.split = false
  end
end
