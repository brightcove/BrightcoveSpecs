Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core"
  s.version      = "7.2.22"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2026 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }
  s.deprecated   = true

  s.ios.deployment_target  = "12.0"
  s.tvos.deployment_target = "12.0"

  s.swift_version = "5.0"

  s.default_subspec    = "XCFramework"

  s.subspec "XCFramework" do |ss|
    ss.vendored_framework = "xcframework/BrightcovePlayerSDK.xcframework"

    ss.source_files       = "DeprecationNotice/Notice.m"

    ss.resource           = "xcframework/BrightcovePlayerSDK.xcframework/ios-arm64/BrightcovePlayerSDK.framework/BCOVPUIResources.bundle"
  end

end
