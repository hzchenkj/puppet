class puppet::config{
	        
	include puppet::params 	

	file{'/etc/puppet/puppet.conf':
		ensure => present,
		content => template('puppet/puppet.conf.erb'),
		owner => 'root',
		group => 'root',
		mode => '0644',
		require => Class['puppet::install'],
		notify => Class['puppet::service'],
	}
}
