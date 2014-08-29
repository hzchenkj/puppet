class puppet::service{
  service { 'puppet':
    ensure     => running,  #设置puppet服务一直处于运行状态
    hasstatus  => true,  #通过标准的命令“service server_name status"进行检查状态
    hasrestart => true,  #设置puppet服务具有标准的restart命令
    enable     => true,  #要求开机自动启动，其实通过chkconfig设置puppet状态为on
#    provider   => init,
#    path       => "/etc/init.d",
#    restart    => "/etc/init.d/sshd reload",
#    start      => "/etc/init.d/sshd start",
#    stop       => "/etc/init.d/sshd stop",

  }
}
