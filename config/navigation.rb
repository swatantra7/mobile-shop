# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :home, I18n.t('navigation.home'), page_path('home')
    primary.item :mobile, I18n.t('navigation.mobile'), '#'
    primary.item :compare, I18n.t('navigation.compare'), '#'
    primary.item :about, I18n.t('navigation.about_us'), page_path('about')
   	primary.dom_class = 'nav navbar-nav'
    primary.dropdown = true
    primary.split = false
  end
end