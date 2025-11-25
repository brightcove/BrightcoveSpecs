Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-OpenMeasurement"
  s.version      = "7.2.0"
  s.summary      = "Open Measurement SDK for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2025 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = "12.0"

  s.ios.vendored_framework = "xcframework/OMSDK_Brightcove.xcframework"

end
