# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::config
class apache::config (
  $config_path = $apache::params::config_path,
  $config_source = $apache::params::config_source,
) inherits apache::params {
  file { 'apache_config':
    path => $config_path,
    source => $config_path,
    ensure => $apache::config_ensure,
    notify => Service['apache_service'],
}
}
