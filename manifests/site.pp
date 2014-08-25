$puppetserver = 'master.domain.com'

class environments{
	include motd,puppet,ssh
}


node 'master.domain.com'{
	include environments
}

node 'agent.domain.com'{
	include environments
}
