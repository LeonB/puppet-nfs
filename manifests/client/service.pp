class nfs::client::service {

  # service { 'rpcbind-boot':
  #   ensure     => running,
  #   hasstatus  => true,
  #   hasrestart => true,
  #   enable     => true,
  #   require    => Class['nfs::client::package'],
  # }

  service { 'portmap':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['nfs::client::package'],
  }
}
