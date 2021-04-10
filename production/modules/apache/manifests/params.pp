# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {
  case $::osfamily {
    'RedHat': {
      $install_package = 'httpd'
      $service_name = 'httpd'
      $config_path = '/etc/httpd/conf/httpd.conf'
      $config_source = 'puppet:///modules/apache/httpd.conf'
      $vhosts_dir = '/etc/httpd/conf.d'
}
}
}

