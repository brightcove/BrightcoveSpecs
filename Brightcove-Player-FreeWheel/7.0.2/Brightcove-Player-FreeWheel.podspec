Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-FreeWheel"
  s.version      = "7.0.2"
  s.summary      = "FreeWheel Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => "Copyright", :text => "Copyright © 2025 Brightcove Inc. All rights reserved." }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-fw.git", :tag => "v#{s.version}" }

  s.static_framework       = true

  s.ios.deployment_target  = "12.0"
  s.tvos.deployment_target = "12.0"

  # FreeWheel"s AdManager requires these.
  s.ios.weak_frameworks    = "AdSupport", "CoreLocation", "MessageUI", "WebKit"
  s.tvos.weak_frameworks   = "AdSupport", "CoreLocation"

  s.libraries              = "xml2"

  s.default_subspec        = "XCFramework"

  s.subspec "Framework" do |ss|
    ss.dependency "Brightcove-Player-Core", "7.0.2"

    ss.ios.vendored_framework    = "ios/BrightcoveFW.framework"
    ss.tvos.vendored_framework   = "tvos/BrightcoveFW.framework"

    ss.ios.pod_target_xcconfig   = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.pod_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" }
    ss.ios.user_target_xcconfig  = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]"  => "arm64" }
    ss.tvos.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "arm64" }
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency "Brightcove-Player-Core/XCFramework", "7.0.2"

    ss.vendored_framework        = "xcframework/BrightcoveFW.xcframework"
  end
  
end
