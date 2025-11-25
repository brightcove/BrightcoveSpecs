Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-GoogleCast"
  s.version      = "7.2.0"
  s.summary      = "Google Cast Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2025 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-googlecast.git", :tag => "v#{s.version}" }

  s.platform        = :ios, "14.0"

  s.default_subspec = "XCFramework"

  s.dependency "google-cast-sdk", "4.8.3"

  s.subspec "Framework" do |f|
    f.dependency "Brightcove-Player-Core", "7.2.0"

    f.vendored_framework       = "ios/BrightcoveGoogleCast.framework"

    f.ios.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
    f.ios.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  end

  s.subspec "XCFramework" do |xc|
    xc.dependency "Brightcove-Player-Core/XCFramework", "7.2.0"

    xc.vendored_framework = "xcframework/BrightcoveGoogleCast.xcframework"
  end

end
