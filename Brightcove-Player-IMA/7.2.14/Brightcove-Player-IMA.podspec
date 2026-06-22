Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-IMA"
  s.version      = "7.2.14"
  s.summary      = "IMA Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2026 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }

  s.ios.deployment_target     = "14.0"
  s.tvos.deployment_target    = "15.0"

  s.dependency "Brightcove-Player-Core", "7.2.14"
  s.ios.dependency "GoogleAds-IMA-iOS-SDK", "3.26.1"
  s.tvos.dependency "GoogleAds-IMA-tvOS-SDK", "4.16.0"

  s.vendored_framework = "xcframework/BrightcoveIMA.xcframework"

end
