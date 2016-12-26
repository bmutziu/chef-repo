#
# Cookbook Name:: my_handlers
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'chef_handler'
include_recipe "ntp"
chef_gem "chef-irc-snitch"
chef_gem "flowdock"

chef_handler 'IRCSnitch' do
            source File.join(Gem::Specification.find{|s| s.name =='chef-irc-snitch'}.gem_dir, 'lib', 'chef-irc-snitch.rb')
            arguments :irc_uri => "irc://nick:password@irc.example.com:6667/#admins"
            action :enable
end

chef_gem "flowdock"

remote_file "#{node["chef_handler"]["handler_path"]}/flowdock_handler.rb" do
            source "https://raw.githubusercontent.com/mmarschall/chef-handler-flowdock/master/lib/chef/handler/flowdock_handler.rb"
end
chef_handler "Chef::Handler::FlowdockHandler" do
            source "#{node["chef_handler"]["handler_path"]}/flowdock_handler.rb"
            arguments :api_token =>  "FLOWDOCK_API_TOKEN"
            action :enable
end
