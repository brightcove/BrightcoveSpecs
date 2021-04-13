Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Omniture-static"
  s.version      = "6.8.7"
  s.summary      = "Adobe Marketing Cloud Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-omniture.git", :tag => "v#{s.version}" }

  s.ios.deployment_target = '11.0'
  
  s.dependency 'Brightcove-Player-Core-static', '6.8.7'
  s.ios.vendored_framework   = "ios/BrightcoveAMC.framework"
  s.static_framework         = true

  s.library    = 'sqlite3.0'

  # AdobeMobileLibrary requires this.
  s.ios.weak_frameworks =  'SystemConfiguration'
  
end
