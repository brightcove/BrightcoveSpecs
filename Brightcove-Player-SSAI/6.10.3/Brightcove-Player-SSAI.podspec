Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI"
  s.version      = "6.10.3"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = '11.0'
  s.tvos.deployment_target = '11.0'

  s.libraries              = 'xml2.2'

  s.default_subspec        = "Framework"

  s.subspec "Framework" do |ss|
    ss.dependency 'Brightcove-Player-Core', '6.10.3'

    ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.tvos.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' } 
    ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }

    ss.ios.resource_bundle       = { 'BCOVSSAIOMResources' => 'ios/BrightcoveSSAI.framework/omsdk-v1.js' }

    ss.ios.vendored_framework    = "ios/BrightcoveSSAI.framework"
    ss.tvos.vendored_framework   = "tvos/BrightcoveSSAI.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency 'Brightcove-Player-Core/XCFramework', '6.10.3'

    ss.ios.pod_target_xcconfig = { 'CODE_SIGN_IDENTITY[sdk=macosx*]' => '-' }

    ss.ios.resource_bundle     = { 'BCOVSSAIOMResources' => 'xcframework/BrightcoveSSAI.xcframework/ios-arm64/BrightcoveSSAI.framework/omsdk-v1.js' }

    ss.vendored_framework      = "xcframework/BrightcoveSSAI.xcframework"
  end

end
