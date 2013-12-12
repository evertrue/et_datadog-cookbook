#
# Cookbook Name:: et_datadog
# Recipe:: default
#
# Copyright (C) 2013 EverTrue, Inc.
#
# All rights reserved - Do Not Redistribute
#

keys = Chef::EncryptedDataBagItem.load('secrets','api_keys')['datadog']
dd_app = node['datadog']['application']

node.set['datadog']['api_key'] = keys['api_key']
node.set['datadog']['application_key'] = keys['application_keys'][dd_app]

include_recipe "datadog::dd-agent"
