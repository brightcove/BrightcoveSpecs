Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI"
  s.version      = "7.2.18"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2026 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }
  s.deprecated   = true

  s.ios.deployment_target  = "12.0"
  s.tvos.deployment_target = "12.0"

  s.libraries              = "xml2.2"

  s.dependency "Brightcove-Player-Core", "7.2.18"

  s.vendored_framework = "xcframework/BrightcoveSSAI.xcframework"

  s.source_files       = "DeprecationNotice/Notice.m"

  s.ios.resource       = "xcframework/BrightcoveSSAI.xcframework/ios-arm64/BrightcoveSSAI.framework/BCOVSSAIOMResources.bundle"

end
