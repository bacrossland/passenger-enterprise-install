maintainer       'Bryan Crossland'
maintainer_email 'bacrossland@gmail.com'
license          'Apache 2.0'
description      'Installs and configures Passenger under Ruby Enterprise Edition with Apache'
source_url       'https://github.com/bacrossland/passenger-enterprise-install'
issues_url       'https://github.com/bacrossland/passenger-enterprise-install/issues'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.00.0'

recipe 'passenger-enterprise-install', 'Installs Passenger gem with Ruby Enterprise Edition'
recipe 'passenger-enterprise-install::apache2', 'Enables Apache module configuration for passenger under Ruby Enterprise Edition'
recipe 'passenger-enterprise-install::nginx', 'Installs Passenger gem w/ REE, and recompiles support into NGINX'

%w{ ruby-enterprise-install nginx apache2 }.each do |cb|
  depends cb
end

%w{redhat centos fedora ubuntu}.each do |os|
  supports os
end
