class sonarqube::install(

)
{

  if $::sonarqube::version <= '3.7' {
    wget::fetch {
      source => "${download_site}/sonar-${sonarqube_version}.zip",
      destination => '/tmp/',
    }
  }
  else {
    wget::fetch {
      source      => "${download_site}/sonarqube-${sonarqube_version}.zip",
      destination => '/tmp/',
    }
  }
}