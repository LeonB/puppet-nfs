class nfs::client(
	$package_name  = params_lookup( 'package_name' ),
	$enabled       = params_lookup( 'enabled' ),
  ) inherits nfs::client::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include nfs::client::package, nfs::client::config, nfs::client::service
}
