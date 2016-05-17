# == Class repmgr::params
class repmgr::params
{
  $packages = $::operatingsystem ?
  {
    'Ubuntu' => [ 'postgresql-9.3-repmgr', 'postgresql-server-dev-9.3' ]
  }

  # Unless specified otherwise, assume we're a cluster of one.
  $cluster_name    = 'my_cluster'
  $primary         = $::hostname
  $node_number     = 1

  $node_name       = $::hostname
  $node_priority   = 100
  $repmgr_conf_dir = '/usr/lib/postgresql/repmgr'
  $repmgr_log_dir  = '/var/log/repmgr'

  $postgresql_group = $::operatingsystem ?
  {
    'Ubuntu' => 'postgres'
  }

  $postgresql_user = $::operatingsystem ?
  {
    'Ubuntu' => 'postgres'
  }

  $postgresql_version  = '9.3'
  $postgresql_home     = '/var/lib/postgresql'
  $repmgr_db_name      = 'repmgr_db'
  $repmgr_db_user_name = 'repmgr_usr'
  $vc_server           = undef
}