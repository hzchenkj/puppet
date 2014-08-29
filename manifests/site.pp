$puppetserver = 'master.domain.com'

class environments{
# ssh yum
	include motd,puppet,nginx
}


node 'master.domain.com'{
	include environments
}

node 'agent.domain.com'{
	include environments
}
