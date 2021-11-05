Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Pulse-static"
  s.version      = "6.10.1"
  s.summary      = "Pulse Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-pulse.git", :tag => "v#{s.version}" }

  s.static_framework = true

  s.ios.deployment_target  = '11.0'
  s.tvos.deployment_target = '11.0'

  s.default_subspec = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core-static', '6.10.1'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core', '6.10.1'

    ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }
    ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }
    ss.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]': 'arm64' }
    ss.tvos.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]': 'arm64' }

    ss.ios.vendored_framework  = "ios/BrightcovePulse.framework"
    ss.tvos.vendored_framework = "tvos/BrightcovePulse.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core-static/XCFramework', '6.10.1'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core/XCFramework', '6.10.1'

    ss.ios.vendored_framework  = "ios/BrightcovePulse.xcframework"
    ss.tvos.vendored_framework = "tvos/BrightcovePulse.xcframework"
  end

end
