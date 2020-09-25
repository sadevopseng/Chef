#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

package 'git'

file '/var/www/html/index.html' do
  content '<h1> Hello World! </h1>'
end

service 'httpd' do
  action [ :enable, :start ]
end

