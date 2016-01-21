class sonarqube::install(
  $version_number = 0 + $::sonarqube::sonarqube_version,
) inherits sonarqube {

  if $version_number <= 0 + "3.7" {
    wget::fetch {
      source => "${download_site}/sonar-${sonarqube_version}.zip",
      destination => '/tmp/',
    }
  }

  else {
    wget::fetch {
      source => "${download_site}/sonarqube-${sonarqube_version}.zip",
      destination => '/tmp/',
    }
  }


}