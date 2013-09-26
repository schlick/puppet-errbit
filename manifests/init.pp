# == Class: errbit
#
# A Puppet module for installing and configuring Errbit.
#
# === Examples
#
#  class { errbit:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Fernando Almeida <fernando@fernandoalmeida.net>
#
# === Copyright
#
# Copyright 2013 Fernando Almeida, unless otherwise noted.
#
class errbit {

  include mongodb

  $libs = [
	   "libxml2",
	   "libxml2-dev",
	   "libcurl4-openssl-dev",
	   ]

  package {$libs:
    ensure => installed,
  }

  package {'bundler':
    ensure   => installed,
    provider => 'gem',
  }

}
