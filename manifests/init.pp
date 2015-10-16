class sumo {

  include sumo::config
  include sumo::installer

    service { 'collector':
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        require    => Package['SumoCollector'],
    }

}
