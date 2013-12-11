#
# Cookbook Name:: email
# Recipe:: hostname
#
# Copyright 2012, Hausn
#
# All rights reserved - Do Not Redistribute
#

time = Time.new

# Setup /etc/hosts
template "/etc/hosts" do
  source "hosts.erb"
  variables( :date => time )
  mode 0644
  owner "root"
  group "root"
end

