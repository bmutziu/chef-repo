#
# Cookbook Name:: my_handlers
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'chef_handler'
chef_gem "chef-irc-snitch"
chef_handler 'IRCSnitch' do
source File.join(Gem::Specification.find{|s| s.name =='chef-irc-snitch'}.gem_dir, 'lib', 'chef-irc-snitch.rb')
arguments :irc_uri => "irc://nick:password@irc.example.com:6667/#admins"
action :enable
end
