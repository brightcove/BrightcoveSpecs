Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-FreeWheel-static"
  s.version      = "6.8.1"
  s.summary      = "FreeWheel Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  
  s.platform = :ios

  s.ios.deployment_target  = '11.0'
  s.tvos.deployment_target = '11.0'

  s.source               = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-fw.git", :tag => "v#{s.version}" }
  s.requires_arc         = true
  s.static_framework     = true

  s.ios.vendored_framework   = "ios/BrightcoveFW.framework"
  s.tvos.vendored_framework  = "tvos/BrightcoveFW.framework"

  s.ios.dependency 'Brightcove-Player-Core-static', '6.8.1'
  # Brightcove SDK for tvOS is dynamic-only
  s.tvos.dependency 'Brightcove-Player-Core', '6.8.1'

  # FreeWheel's AdManager requires these.
  s.ios.weak_frameworks =  'AdSupport', 'CoreLocation', 'MessageUI', 'WebKit'
  s.tvos.weak_frameworks = 'AdSupport', 'CoreLocation'
  s.libraries = 'xml2'
  
end
