Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI-static"
  s.version      = "6.10.0"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }

  s.static_framework = true

  s.platform = :ios, '11.0'

  s.libraries     = 'xml2.2'

  s.default_subspec = "Framework"

  s.subspec "Framework" do |ss|
    ss.dependency 'Brightcove-Player-Core', '6.10.0'
    ss.ios.dependency 'Brightcove-Player-OpenMeasurement', '6.10.0'

    ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }
    ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }

    ss.ios.resource_bundle    = { 'BCOVSSAIOMResources' => 'ios/BrightcoveSSAI.framework/omsdk-v1.js' }
  
    ss.ios.vendored_framework = "ios/BrightcoveSSAI.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency 'Brightcove-Player-Core/XCFramework', '6.10.0'
    ss.ios.dependency 'Brightcove-Player-OpenMeasurement', '6.10.0'

    ss.ios.resource_bundle     = { 'BCOVSSAIOMResources' => 'ios/BrightcoveSSAI.xcframework/ios-arm64/BrightcoveSSAI.framework/omsdk-v1.js' }

    ss.ios.vendored_framework  = "ios/BrightcoveSSAI.xcframework"
  end

end
