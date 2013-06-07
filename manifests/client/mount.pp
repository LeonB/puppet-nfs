define nfs::client::mount(
  $server,
  $share,
  $ensure         = present,
  $mountpoint     = $name,
  $client_options = undef,
) {

  mount { $mountpoint:
    ensure   => $ensure,
    device   => "${server}:${share}",
    fstype   => 'nfs',
    name     => $mountpoint,
    options  => $client_options,
    remounts => false,
    atboot   => true,
    require  => Class['nfs::client'],
  }

}
