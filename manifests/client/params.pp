# Class: nfs::client::params
#
# This class defines default parameters used by the main module class nfs::client
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to nfs::client class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class nfs::client::params {

	### Application related parameters

	$package_name = $::operatingsystem ? {
		default => 'nfs-common'
	}

	$enabled = true

}
