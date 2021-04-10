# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::install
class apache::install (
  $install_package = $apache::params::install_package
) inherits apache::params {
  package { 'install_apache':
    name => $install_package,
    ensure => $apache::install_ensure,
  }
}
