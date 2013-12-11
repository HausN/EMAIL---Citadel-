#
# Cookbook Name:: email
# Recipe:: default
#
# Copyright 2013, HAUSN
#
# All rights reserved - Do Not Redistribute
#


time = Time.new

execute 'apt-get update'

log 'installing Apache'
# Install Apache
apt_package "apache2" do
  action :install
end

log 'installing PHP5'
#install php 5
apt_package "php5 libapache2-mod-php5" do
	action:install
end

service "apache2" do
  action :restart
end

log 'installing PHP test pages now'
#Copy Files to /var/www
remote_directory "/var/www" do
source "www"
end

log 'page is up and running now boi!'