Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Omniture"
  s.version      = "6.7.9"
  s.summary      = "Adobe Marketing Cloud Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-omniture.git", :tag => "v#{s.version}" }

  s.ios.deployment_target = '11.0'
  
  s.dependency 'Brightcove-Player-Core-static', '6.7.9'
  s.ios.vendored_framework   = "ios/BrightcoveAMC.framework"
  s.static_framework         = true

  s.library    = 'sqlite3.0'
  
end
