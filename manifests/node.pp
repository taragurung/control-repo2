node default{

class {'apache':}

#this is how you fetch the hiera value
#hiera  file location /production/data/common.yaml (default location is dir , default name is common check hiera.yaml for details)
$data=hiera('hierakey')
notify{"============fetchin from hiera===>${data}":}


#$myvhosts = create_resources('apache::vhost', hiera('vhosts',{}))

}
