puppet
======

puppet conf server




【puppet nginx负载均衡安装】

　　安装nginx负载均衡所需的rubygem-mongrel

　　a.安装sohu的epel源。

　　1rpm -ivh http://mirrors.sohu.com/fedora-epel/5/x86_64/epel-release-5-4.noarch.rpm

　　b.安装rubygem-mongrel:

　　1yum -y install rubygem-mongrel


　　添加下面2行
修改puppet 端口
vim /etc/sysconfig/puppetmaster

PUPPETMASTER_PORTS=( 18140 18141 18142 18143 )
PUPPETMASTER_EXTRA_OPTS="--servertype=mongrel --ssl_client_header=HTTP_X_SSL_SUBJECT"

模块：
puppet module search nginx
puppet module install puppetlabs-nginx
puppet module upgrade puppetlabs-nginx
puppet module list 