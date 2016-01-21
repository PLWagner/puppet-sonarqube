class sonarqube (
  $sonarqube_version  = '4.5.6',
  $user               = 'sonar',
  $group              = 'sonar',
  $sonarqube_port     = 9000,
  $download_site      = 'https://sonarsource.bintray.com/Distribution/sonarqube/',
)
{

  validate_string($sonarqube_version, $user, $group, $download_site)
  validate_integer($sonarqube_port)

  include ::sonarqube::install
#  include ::sonarqube::config
#  include ::sonarqube::service

  anchor { '::sonarqube::begin': } ->
  Class['::Sonarqube::Install'] ->
#  Class['::Sonarqube::Config'] ~> #TODO
#  Class['::Sonarqube::Service'] ->
  anchor { '::bitretriever::end': }
}

