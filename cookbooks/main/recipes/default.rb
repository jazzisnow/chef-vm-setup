#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2011, Example Com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


include_recipe "nodejs"
include_recipe "npm"
include_recipe "mysql::server"
include_recipe "rabbitmq"
include_recipe "couchdb"
#include_recipe "vim"
include_recipe "java::sun"
include_recipe "ant"
include_recipe "rubymine"
include_recipe "pentaho"
include_recipe "github"
include_recipe "dotfiles"
include_recipe "rvm"
include_recipe "coffeescript"
include_recipe "rubies"
include_recipe "couchapp"
include_recipe "sqlite"
#include_recipe "system_config"
include_recipe "libcurl"
include_recipe "rvm::dhl_gemset"
#include_recipe "clone_projects"
