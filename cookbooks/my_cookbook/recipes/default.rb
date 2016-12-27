#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "chef-client"
include_recipe "apt"
include_recipe "ntp"

node.default['my_cookbook']['greeting'] = "Ohai, Chefs!"

template '/tmp/greeting.txt' do
variables greeting: node.default['my_cookbook']['greeting']
content node['my_cookbook']['greeting']
end

include_recipe "chef_nginx::source"
nginx_site "default" do
  enable false
end
app_name = "my_app"
app_home = "/srv/#{app_name}"
template "#{node[:nginx][:dir]}/sites-available/#{app_name}" do
  source "nginx-site-#{app_name}.erb"
  owner  "root"
  group  "root"
  mode   "0644"
  variables :app_home => app_home
  notifies :restart, resources(:service => "nginx")
end
directory "#{app_home}/public" do
  recursive true
end
file "#{app_home}/public/index.html" do
  content "<h1>Hello World!</h1>"
end
nginx_site "#{app_name}" do
  enable false
end
