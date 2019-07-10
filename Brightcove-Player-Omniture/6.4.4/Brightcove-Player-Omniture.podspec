Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Omniture"
  s.version      = "6.4.4"
  s.summary      = "Adobe Marketing Cloud Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://support.brightcove.com/brightcove-player"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-omniture.git", :tag => "v#{s.version}" }

  s.ios.deployment_target = '10.0'
  
  s.dependency 'Brightcove-Player-Core/default', '6.4.4'
  s.ios.vendored_framework   = "ios/BrightcoveAMC.framework"

  s.weak_frameworks = 'SystemConfiguration'
  s.library    = 'sqlite3.0'
  
end
