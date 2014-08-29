class nginx{
	package{'nginx':
		ensure => installed,
	}

	service{'nginx':
		ensure => running,
		enable => true,
		subscribe => File['nginx'],
	}


	file{'nginx':
		ensure => present,
		mode => 644,
		owner => root,
		group => root,
		path => '/etc/nginx/nginx.conf',
		content => template("nginx/nginx.conf.erb"),
	}
}
