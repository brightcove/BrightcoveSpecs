Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core"
  s.version      = "7.0.3"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2025 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = "12.0"
  s.tvos.deployment_target = "12.0"

  s.swift_version = "5.0"

  s.default_subspec        = "XCFramework"

  s.subspec "Framework" do |ss|
    ss.ios.vendored_framework    = "ios/BrightcovePlayerSDK.framework"
    ss.tvos.vendored_framework   = "tvos/BrightcovePlayerSDK.framework"

    ss.ios.resource              = "ios/BrightcovePlayerSDK.framework/BCOVPUIResources.bundle"
    ss.tvos.resource             = "tvos/BrightcovePlayerSDK.framework/BCOVPUIResources.bundle"

    ss.ios.pod_target_xcconfig   = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" }  
    ss.ios.user_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" }
  end

  s.subspec "XCFramework" do |ss|
    ss.vendored_framework = "xcframework/BrightcovePlayerSDK.xcframework"

    ss.resource           = "xcframework/BrightcovePlayerSDK.xcframework/ios-arm64/BrightcovePlayerSDK.framework/BCOVPUIResources.bundle"
  end

end
