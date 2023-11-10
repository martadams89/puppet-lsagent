# @summary A short summary of the purpose of this class
#
# This module aids the installation of the LanSweeper Agent
#
# @param lsagent_server_hostname
#   Sets the management server hostname.
#
# @param lsagent_server_port
#   Sets the management server port. Default value is '2222'.
#
# @param service_enable
#   Whether to enable the lsagent service at boot. Default value: true.
#
# @param service_ensure
#   Whether the lsagent service should be running. Default value: 'running'.
#
# @param service_manage
#   Whether to manage the lsagent service.  Default value: true.
#
# @param service_name
#   The lsagent service to manage. Default value: varies by operating system.
#
# @param service_provider
#   Which service provider to use for NTP. Default value: 'undef'.
#
# @param service_hasstatus
#   Whether service has a functional status command. Default value: true.
#
# @param service_hasrestart
#   Whether service has a restart command. Default value: true.
#
# @example
#   include lsagent
class lsagent(
  String $lsagent_server_hostname,
  String $lsagent_server_port, 
  String $lsagent_server_version,
  Optional[String] $lsagent_http_proxy_hostname = undef,
  Optional[String] $lsagent_http_proxy_port = undef,
  Optional[String] $lsagent_http_proxy_user = undef,
  Optional[String] $lsagent_http_proxy_pass = undef,
  Boolean $service_enable,
  Enum['running', 'stopped'] $service_ensure,
  Boolean $service_manage,
  String $service_name,
  Optional[String] $service_provider = undef,
  Boolean $service_hasstatus,
  Boolean $service_hasrestart
){
  
  contain lsagent::install
  contain lsagent::service

  Class['::lsagent::install']
  ~> Class['::lsagent::service']

}
