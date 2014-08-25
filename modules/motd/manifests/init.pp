class motd{
	package{'setup':
		ensure => present,
	}
	
	file{ '/etc/motd':  #定义file资源
    		ensure  => present,  #要求file文件处于存在状态
    		owner   => 'root', #要求file文件属主为root
    		group   => 'root', #要求file文件属组为root
    		mode    => '0644', #要求file文件权限为644
    		source  => "puppet://$puppetserver/modules/motd/etc/motd", #要求file文件从puppetmaster端服务器下载
    		require => Package['setup'], #要求文件被配置之前先执行package资源
  	}

}
