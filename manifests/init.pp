class sonarqube (
  $sonarqube_version  = '4.5.6',
  $user               = 'sonar',
  $group              = 'sonar',
  $sonarqube_port     = 9000,
  $download_site      = 'https://sonarsource.bintray.com/Distribution/sonarqube/',
)
{



  anchor { '::sonarqube::begin': } ->
  Class['::Sonarqube::Install'] ->
  Class['::Sonarqube::Config'] ~>
  Class['::Sonarqube::Service'] ->
  anchor { '::bitretriever::end': }
}

