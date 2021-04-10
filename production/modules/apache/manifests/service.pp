# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::service
class apache::service (
  $service_name = $apache::params::service_name 
) inherits apache::params {
  service { 'apache_service':
    name => $service_name,
    ensure => $apache::service_ensure,
    enable => $apache::service_enable,
    hasrestart => $apache::service_hasrestart,
}
}
