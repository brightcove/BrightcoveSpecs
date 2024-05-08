Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-DAI"
  s.version      = "6.13.1"
  s.summary      = "DAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2024 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-dai.git", :tag => "v#{s.version}" }

  s.ios.deployment_target     = "14.0"
  s.tvos.deployment_target    = "14.0"

  s.ios.dependency "GoogleAds-IMA-iOS-SDK", "3.22.0"
  s.tvos.dependency "GoogleAds-IMA-tvOS-SDK", "4.12.0"

  s.default_subspec           = "Framework"

  s.subspec "Framework" do |ss|
    ss.dependency "Brightcove-Player-Core", "6.13.1"

    ss.ios.vendored_framework  = "ios/BrightcoveDAI.framework"
    ss.tvos.vendored_framework = "tvos/BrightcoveDAI.framework"

    ss.ios.pod_target_xcconfig   = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" }
    ss.ios.user_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" }
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency "Brightcove-Player-Core/XCFramework", "6.13.1"

    ss.vendored_framework = "xcframework/BrightcoveDAI.xcframework"
  end

end
