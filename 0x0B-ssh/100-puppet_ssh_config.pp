# puppet to creatie a config file of ssh
$str = "Host *
   IdentityFile ~/.ssh/school
   PasswordAuthentication no \n"
file {'/root/.ssh/config':
  ensure  => file,
  mode    => '0600',
  owner   => 'root',
  group   => 'root',
  content => $str,
}
