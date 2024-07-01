Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI"
  s.version      = "6.13.2"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2024 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = "12.0"
  s.tvos.deployment_target = "12.0"

  s.libraries              = "xml2.2"

  s.default_subspec        = "Framework"

  s.subspec "Framework" do |ss|
    ss.dependency "Brightcove-Player-Core", "6.13.2"

    ss.ios.vendored_framework    = "ios/BrightcoveSSAI.framework"
    ss.tvos.vendored_framework   = "tvos/BrightcoveSSAI.framework"

    ss.ios.resource              = "ios/BrightcoveSSAI.framework/BCOVSSAIOMResources.bundle"

    ss.ios.pod_target_xcconfig   = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" } 
    ss.ios.user_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" }
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency "Brightcove-Player-Core/XCFramework", "6.13.2"

    ss.vendored_framework = "xcframework/BrightcoveSSAI.xcframework"

    ss.vendored_framework = "xcframework/BrightcoveSSAI.xcframework"

    ss.ios.resource       = "xcframework/BrightcoveSSAI.xcframework/ios-arm64/BrightcoveSSAI.framework/BCOVSSAIOMResources.bundle"
  end

end
