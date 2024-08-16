Pod::Spec.new do |s|
    s.name             = 'flutter_apple_spotlight'
    s.version          = '0.0.1'
    s.summary          = 'A new Flutter plugin project.'
    s.description      = <<-DESC
  A new Flutter plugin project.
                         DESC
    s.homepage         = 'http://example.com'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Your Company' => 'email@example.com' }
  
    s.source           = { :path => '.' }
    s.source_files     = 'Classes/**/*'
  
    s.ios.dependency 'Flutter'
    s.osx.dependency 'FlutterMacOS'
    s.ios.deployment_target = '9.0'
    s.osx.deployment_target = '10.11'
    
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.swift_version = '5.0'
  end
  