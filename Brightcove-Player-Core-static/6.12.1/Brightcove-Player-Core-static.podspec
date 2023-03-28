Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core-static"
  s.version      = "6.12.1"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Copyright', :text => 'Copyright (c) 2023 Brightcove, Inc. All rights reserved.'}
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }

  s.static_framework       = true

  s.ios.deployment_target  = '11.4'

  s.default_subspec        = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.vendored_framework   = "ios/static/BrightcovePlayerSDK.framework"

    ss.resource                 = "ios/static/BrightcovePlayerSDK.framework/BCOVPUIResources.bundle"

    ss.ios.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
  end

  s.subspec "XCFramework" do |ss|
    ss.vendored_framework = "xcframework/static/BrightcovePlayerSDK.xcframework"

    ss.resource           = "xcframework/static/BrightcovePlayerSDK.xcframework/ios-arm64/BrightcovePlayerSDK.framework/BCOVPUIResources.bundle"
  end

end
