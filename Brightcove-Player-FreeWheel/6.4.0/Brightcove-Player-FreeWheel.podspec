Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-FreeWheel"
  s.version      = "6.4.0"
  s.summary      = "FreeWheel Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://support.brightcove.com/brightcove-player"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  
  s.platform = :ios
  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '9.0'
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-fw.git", :tag => "v#{s.version}" }
  s.requires_arc = true

  s.ios.vendored_framework   = "ios/BrightcoveFW.framework"
  s.tvos.vendored_framework  = "tvos/BrightcoveFW.framework"
  s.dependency 'Brightcove-Player-Core/default', '6.4.0'

  s.ios.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreLocation', 'CoreMedia', 'EventKit', 'MessageUI', 'QuartzCore', 'UIKit', 'WebKit'
  s.tvos.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreLocation', 'CoreMedia', 'QuartzCore', 'MediaPlayer', 'UIKit'
  s.weak_frameworks = 'AdSupport'
  s.libraries = 'xml2'
  
end
