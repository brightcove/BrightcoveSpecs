Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-IMA-static"
  s.version      = "6.11.0"
  s.summary      = "IMA Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }

  s.static_framework          = true

  s.ios.deployment_target     = '11.0'
  s.tvos.deployment_target    = '11.0'

  s.ios.dependency 'GoogleAds-IMA-iOS-SDK', '3.14.4'
  s.tvos.dependency 'GoogleAds-IMA-tvOS-SDK', '4.3.2'

  s.default_subspec           = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core-static', '6.11.0'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core', '6.11.0'

    ss.ios.vendored_framework  = "ios/BrightcoveIMA.framework"
    ss.tvos.vendored_framework = "tvos/BrightcoveIMA.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core-static/XCFramework', '6.11.0'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core/XCFramework', '6.11.0'

    ss.ios.vendored_framework  = "ios/BrightcoveIMA.framework"
    ss.tvos.vendored_framework = "tvos/BrightcoveIMA.framework"
  end

  s.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
  s.tvos.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }

end
