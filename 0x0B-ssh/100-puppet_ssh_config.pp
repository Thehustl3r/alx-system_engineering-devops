# puppet to creatie a config file of ssh
$str = "Host *
	   IdentityFile ~/.ssh/config
	   PasswordAuthentication no"
file {'/home/root/.ssh/config':
  ensure  => file,
  content => $str,
}
