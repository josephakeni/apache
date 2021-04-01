class apache::source (
	String $servicename = lookup({"name" => "apache.servicename", "default_value" => "default"})
	) {
	service { 'webserver-service':
		name		=> $servicename,
		ensure		=> running,
		enable		=> true,
		hasrestart	=> true,
	}
}  
