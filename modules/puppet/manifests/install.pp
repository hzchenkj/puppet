class puppet::install{
  include puppet::puppet_install,puppet::facter_install
}


class puppet::puppet_install{
	package{'puppet':
		ensure => $puppet::params::puppet_release,
	}

}

class puppet::facter_install{
	package{'facter':
		ensure => $puppet::params::facter_release ,
	}
}
