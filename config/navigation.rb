# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :HOME, :HOME, page_path('home')
    primary.item :MOBILE, 'MOBILE', '#'
    primary.item :COMPARE, 'COMPARE', '#'
    primary.item :HOME, :ABOUT, page_path('about')
   	primary.dom_class = 'nav navbar-nav'
    primary.dropdown = true
    primary.split = false
  end
end