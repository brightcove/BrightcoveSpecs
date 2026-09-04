Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-GoogleCast"
  s.version      = "7.2.18"
  s.summary      = "Google Cast Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2026 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-googlecast.git", :tag => "v#{s.version}" }
  s.deprecated   = true

  s.platform        = :ios, "14.0"

  s.dependency "Brightcove-Player-Core", "7.2.18"
  s.dependency "google-cast-sdk", "4.8.3"

  s.vendored_framework = "xcframework/BrightcoveGoogleCast.xcframework"

  s.source_files = "DeprecationNotice/Notice.m"

end
