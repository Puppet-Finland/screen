#
# == Class: screen::install
#
# Install GNU screen
#
class screen::install
(
    $ensure

) inherits screen::params
{
    package { 'screen-screen':
        ensure => $ensure,
        name   => $::screen::params::package_name,
    }
}
