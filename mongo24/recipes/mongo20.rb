#
# Cookbook Name:: mongo
# Recipe:: mongo20
#
# Copyright (C) 2013 Sascha Bates
# 
# All rights reserved - Do Not Redistribute
#

node.set.override[:mongodb][:package_name] = "mongodb20-10gen"
include_recipe "mongodb::10gen_repo"
include_recipe "mongodb"
