Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI-static"
  s.version      = "6.11.2"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }

  s.static_framework       = true

  s.ios.deployment_target  = '11.4'
  s.tvos.deployment_target = '11.4'

  s.libraries              = 'xml2.2'

  s.default_subspec        = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core', '6.11.2'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core', '6.11.2'

    ss.ios.vendored_framework    = "ios/BrightcoveSSAI.framework"

    ss.ios.resource              = "ios/BrightcoveSSAI.framework/BCOVSSAIOMResources.bundle"

    ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.tvos.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' } 
    ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  end

  s.subspec "XCFramework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core-static/XCFramework', '6.11.2'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core/XCFramework', '6.11.2'

    ss.vendored_framework = "xcframework/BrightcoveSSAI.xcframework"

    ss.ios.resource       = "xcframework/BrightcoveSSAI.xcframework/ios-arm64/BrightcoveSSAI.framework/BCOVSSAIOMResources.bundle"
  end

end
