class apache::package (
	String $packagename=lookup({"name"=>"apache.packagename", "default_value" => "httpd"})
	) {
	package { 'apache_package':
		name	=>  $packagename,
		ensure  =>  present
	}
}
