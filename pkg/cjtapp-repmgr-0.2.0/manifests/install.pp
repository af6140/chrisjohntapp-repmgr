# == Class repmgr::install
# Private class
class repmgr::install
{
  package { $repmgr::packages:
    ensure => installed,
  }
}