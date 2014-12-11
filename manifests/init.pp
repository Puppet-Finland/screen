#
# == Class: screen
#
# Setup GNU screen
#
# == Parameters
#
# [*ensure*]
#   Status of GNU screen. Valid values 'present' and 'absent'. Defaults to 
#   'present'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-lisence. See file LICENSE for details.
#
class screen
(
    $ensure = 'present'

) inherits screen::params
{

    class { 'screen::install':
        ensure => $ensure,
    }
}
