# Basic Hello World Define
define windows_beaker_test (

) {

  exec { "Hello World Powershell":
    command  => "Write-Host “Hello, World!”",
    provider => powershell,
  }
}
