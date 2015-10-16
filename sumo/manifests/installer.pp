class sumo::installer {

  package { 'SumoCollector':
     provider => 'rpm',
     ensure => installed,
     source => "https://collectors.sumologic.com/rest/download/rpm/64"
 }
}
