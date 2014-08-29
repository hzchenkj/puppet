class puppet::params{

	$puppetserver = 'master.domain.com'
	$certname = "${::hostname}.domain.com"
	case $operatingsystemmajrelease {
		5:{
			$puppet_release = '2.7.23-1.el5'
			$facter_release = '1.7.3-1.el5'
		}
		6:{
			$puppet_release = '3.6.2-1.el6'
                        $facter_release = '2.1.0-1.el6'
                }
		default:{
			fail("Module puppet  is not supported on ${::operatingsystem}")
		}
	}
}
