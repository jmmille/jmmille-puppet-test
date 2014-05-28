import 'classes/*.pp'

node 'puppet-s1.service.local' {
	include motd
	include genpacks
}

node 'puppet-s2.service.local' {
	include motd
	include genpacks
}

