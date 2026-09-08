Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Omniture"
  s.version      = "7.2.21"
  s.summary      = "Adobe Marketing Cloud Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2026 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-omniture.git", :tag => "v#{s.version}" }
  s.deprecated   = true

  s.platform            = :ios, "12.0"

  # AdobeMobileLibrary requires this.
  s.ios.weak_frameworks =  "SystemConfiguration", "WebKit"

  s.library             = "sqlite3.0"

  s.dependency "Brightcove-Player-Core", "7.2.21"

  s.default_subspec     = "XCFramework"

  s.subspec "XCFramework" do |ss|
    ss.vendored_framework = "xcframework/BrightcoveAMC.xcframework"

    ss.source_files       = "DeprecationNotice/Notice.m"
  end

end
