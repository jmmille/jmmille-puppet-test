class motd {
        package { "figlet":
                ensure => installed
        }

        ## Dynamic MOTD Install
        file { "/etc/update-motd.d/":
                ensure => directory,
                mode => 755,
                owner => root,
                group => root,
        }
        file { "/etc/update-motd.d/00-header":
                source => "puppet:///files/dyn-motd/00-header",
                mode => 755,
        }
        file { "/etc/update-motd.d/10-sysinfo":
                source => "puppet:///files/dyn-motd/10-sysinfo",
                mode => 755,
        }
        file { "/etc/update-motd.d/90-footer":
                source => "puppet:///files/dyn-motd/90-footer",
                mode => 755,
        }
        file { "/etc/motd":
                ensure => link,
                target => "/var/run/motd",
        }
        ## End Dynamic MOTD

}
