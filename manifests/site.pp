import 'classes/*.pp'

node 'puppet-s1' {
	include motd
	include genpacks
}

node 'puppet-s2' {
	include motd
	include genpacks
}

