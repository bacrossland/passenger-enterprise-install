# passenger-enterprise-install

Description
===========
Installs and configures Passenger under Ruby Enterprise Edition with Apache.
REE is no longer supported. You should migrate off it as soon as you can. This cookbook is here to help you do that by
installing REE onto newer OS versions of Ubuntu, CentOS, and Fedora. It's based off the no longer maintained
cookbook passenger_enterprise (https://supermarket.chef.io/cookbooks/passenger_enterprise).

Requirements
============

## Cookbooks:
* `ruby-enterprise-install` - Install REE with all patches
* `nginx` - Install and configure for nginx
* `apache2` - Install and configure for apache2

Attributes
==========

* `node[:passenger_enterprise][:version]` - Version to install. Default 2.2.15
* `node[:passenger_enterprise][:root_path]` - Install path. Default /opt/ruby-enterprise/lib/ruby/gems/1.8/gems/passenger-2.2.15
* `node[:passenger_enterprise][:module_path]` - Passenger module path. Default /opt/ruby-enterprise/lib/ruby/gems/1.8/gems/passenger-2.2.15/ext/apache2/mod_passenger.so

Usage
=====
Include the passenger-enterprise-install recipe to install REE for the version of web server you want.

Apache2

    include_recipe "passenger-enterprise-install::apache2"

NGINX

    include_recipe "passenger-enterprise-install::nginx"

Or add it to your role, or directly to a node's recipes.

Note
====
Ruby Enterprise Edition has been dropped.
A [post from Phusion][1] explains the reason for dropping the support.
This cookbook serves as a way to install Passenger and REE onto new versions of infrastructure.

[1]: http://blog.phusion.nl/2012/02/21/ruby-enterprise-edition-1-8-7-2012-02-released-end-of-life-imminent/

License and Authors
===================

Author:: Bryan Crossland ([bacrossland](https://github.com/bacrossland))
Author:: Joshua Timberman (<joshua@opscode.com>)
Author:: Joshua Sierles (<joshua@37signals.com>)
Author:: Michael Hale (<mikehale@gmail.com>)

Copyright:: 2015, Bryan Crossland
Copyright:: 2009, Opscode, Inc
Copyright:: 2009, 37signals
Coprighty:: 2009, Michael Hale

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
