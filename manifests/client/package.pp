class nfs::client::package {

  package  { $nfs::client::package_name:
    ensure => $nfs::client::ensure,
  }

}
