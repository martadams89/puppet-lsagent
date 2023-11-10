# @summary A short summary of the purpose of this class
#
# This class controls the lsagent service
#
class lsagent::service {

  if $lsagent::service_manage == true {
    service { 'lsagent':
      ensure     => $lsagent::service_ensure,
      enable     => $lsagent::service_enable,
      name       => $lsagent::service_name,
      provider   => $lsagent::service_provider,
      hasstatus  => $lsagent::service_hasstatus,
      hasrestart => $lsagent::service_hasrestart,
    }
  }

}
