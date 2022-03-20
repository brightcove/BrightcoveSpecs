Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core"
  s.version      = "6.10.3"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = '11.0'
  s.tvos.deployment_target = '11.0'

  s.default_subspec        = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
    ss.tvos.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }  
    ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }    
    ss.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }

    ss.ios.resource_bundle       = { 'BCOVPUIResources' => 'ios/dynamic/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }
    
    ss.ios.vendored_framework    = "ios/dynamic/BrightcovePlayerSDK.framework"
    ss.tvos.vendored_framework   = "tvos/BrightcovePlayerSDK.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.ios.pod_target_xcconfig = { 'CODE_SIGN_IDENTITY[sdk=macosx*]' => '-' }

    ss.ios.resource_bundle     = { 'BCOVPUIResources' => 'xcframework/dynamic/BrightcovePlayerSDK.xcframework/ios-arm64/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

    ss.vendored_framework      = "xcframework/dynamic/BrightcovePlayerSDK.xcframework"
  end

end
