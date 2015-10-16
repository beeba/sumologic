class sumo::config {

    file { "/etc/sumo.conf":
        ensure => present,
        owner => root,
        group => root,
        mode => 644,
        content => template('sumo/sumo.conf.erb'),
        #require => Package['SumoCollector'],
        notify => Service['collector'],
    }

    file { "/etc/sources.json":
        ensure => present,
        owner => root,
        group => root,
        mode => 644,
        source   => "puppet:///modules/sumo/sources.json",
        #require => Package['SumoCollector'],
        notify => Service['collector'],
    }

}


