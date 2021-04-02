class ntp {

# Define Variable
$timeserver = "server 0.centos.pool.ntp.org iburst\n"

# Installing NTP Package
        package {"ntp":
                ensure  => "installed",
        }

# Configuring NTP configuration file
        file { "/etc/ntp.conf":
        ensure  => "present",
        content => "$timeserver",
        }

# Starting NTP services
        service { "ntpd":
        ensure  => "running",
        enable  => "true",
        }


}