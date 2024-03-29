# this puppet file that increases the available working file process for apache

# change available limit to 4096 instead of 15
exec {'fix-limit':
    command => '/bin/sed -i "/s/15/4096/g" /etc/default/nginx',
    path    => '/usr/local/bin/:/bin/',
}

#restart the server
exec {'nginx-restart':
    command => '/etc/init.d/nginx restart',
    path    => '/etc/init.d',
}