#
# == Class: screen::params
#
# Defines some variables based on the operating system
#
class screen::params {

    case $::osfamily {
        default: {
            fail("Unsupported operating system: ${::osfamily}")
        }
        'RedHat': {
            $package_name = 'screen'
        }
        'Debian': {
            $package_name = 'screen'
        }
    }
}
