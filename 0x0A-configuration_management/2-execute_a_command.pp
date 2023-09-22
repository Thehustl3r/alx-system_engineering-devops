# a file that kills the process
exec {'killmenow':
  command => 'pkill -f killmenow',
  onlyif  => 'pgrep -f killmenow',
  path    => ['/bin', '/user/bin'],
}
