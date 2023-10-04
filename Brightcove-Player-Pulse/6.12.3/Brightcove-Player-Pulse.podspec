Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Pulse"
  s.version      = "6.12.3"
  s.summary      = "Pulse Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Copyright', :text => 'Copyright © 2023 Brightcove Inc. All rights reserved.'}
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-pulse.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = '11.4'
  s.tvos.deployment_target = '11.4'

  s.default_subspec        = "Framework"

  s.subspec "Framework" do |ss|
    ss.dependency 'Brightcove-Player-Core', '6.12.3'

    ss.ios.vendored_framework    = "ios/BrightcovePulse.framework"
    ss.tvos.vendored_framework   = "tvos/BrightcovePulse.framework"

    ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.tvos.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
    ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency 'Brightcove-Player-Core/XCFramework', '6.12.3'

    ss.vendored_framework = "xcframework/BrightcovePulse.xcframework"
  end

end
