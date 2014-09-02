#
# Cookbook Name:: et_datadog
# Recipe:: default
#
# Copyright (C) 2013 EverTrue, Inc.
#
# All rights reserved - Do Not Redistribute
#

service 'datadog-agent' do
  action [:stop]
end

package 'datadog-agent' do
  action :remove
end
