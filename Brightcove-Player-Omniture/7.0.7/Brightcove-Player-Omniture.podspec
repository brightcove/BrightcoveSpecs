Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Omniture"
  s.version      = "7.0.7"
  s.summary      = "Adobe Marketing Cloud Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2025 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-omniture.git", :tag => "v#{s.version}" }

  s.platform            = :ios, "12.0"

  # AdobeMobileLibrary requires this.
  s.ios.weak_frameworks =  "SystemConfiguration", "WebKit"

  s.library             = "sqlite3.0"
  
  s.default_subspec     = "XCFramework"

  s.subspec "Framework" do |ss|
    ss.dependency "Brightcove-Player-Core", "7.0.7"

    ss.ios.vendored_framework = "ios/BrightcoveAMC.framework"

    ss.ios.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
    ss.ios.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency "Brightcove-Player-Core/XCFramework", "7.0.7"

    ss.vendored_framework       = "xcframework/BrightcoveAMC.xcframework"
  end
  
end
