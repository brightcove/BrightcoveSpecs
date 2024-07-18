Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Omniture-static"
  s.version      = "6.13.3"
  s.summary      = "Adobe Marketing Cloud Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2024 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-omniture.git", :tag => "v#{s.version}" }

  s.static_framework    = true

  s.platform            = :ios, "12.0"

  # AdobeMobileLibrary requires this.
  s.ios.weak_frameworks =  "SystemConfiguration", "WebKit"

  s.library             = "sqlite3.0"
  
  s.default_subspec = "Framework"

  s.subspec "Framework" do |ss|
    ss.dependency "Brightcove-Player-Core-static", "6.13.3"

    ss.ios.vendored_framework   = "ios/BrightcoveAMC.framework"

    ss.ios.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
    ss.ios.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency "Brightcove-Player-Core-static/XCFramework", "6.13.3"

    ss.ios.vendored_framework   = "xcframework/BrightcoveAMC.xcframework"
  end
  
end
