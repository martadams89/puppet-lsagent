# @summary A short summary of the purpose of this class
#
# This class installs the lansweeper agent
# 
class lsagent::install {

  if ! $lsagent_path {

    file { '/tmp/lsagentinstall.sh':
      ensure  => present,
      content => epp('lsagent/lsagentinstall.sh.epp'),
    }

    exec { 'sh /tmp/lsagentinstall.sh':
      path    => ['/usr/bin', '/usr/sbin', '/bin'],
      require => File['/tmp/lsagentinstall.sh'],
      returns => [0, 2]
    }

  }

}
