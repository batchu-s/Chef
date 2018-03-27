#
# Cookbook:: first
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


package 'apache2' do
	case node['platform']
	when 'centos', 'redhat', 'fedora', 'suse'
		package_name 'httpd'
	when 'debian', 'ubuntu'
		package_name 'apache2'
	end
	action :install
end

