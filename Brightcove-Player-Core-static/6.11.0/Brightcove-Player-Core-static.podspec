Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core-static"
  s.version      = "6.11.0"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }

  s.static_framework       = true

  s.ios.deployment_target  = '11.0'

  s.default_subspec        = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.vendored_framework    = "ios/static/BrightcovePlayerSDK.framework"

    ss.ios.resource_bundle       = { 'BCOVPUIResources' => 'ios/static/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

    ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64', 'CODE_SIGN_IDENTITY[sdk=iphoneos*]' => '' }
    ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }

  end

  s.subspec "XCFramework" do |ss|
    ss.vendored_framework      = "xcframework/static/BrightcovePlayerSDK.xcframework"

    ss.ios.resource_bundle     = { 'BCOVPUIResources' => 'xcframework/static/BrightcovePlayerSDK.xcframework/ios-arm64/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

    ss.ios.pod_target_xcconfig = { 'CODE_SIGN_IDENTITY[sdk=macosx*]' => '', 'CODE_SIGN_IDENTITY[sdk=iphoneos*]' => '' }
  end

end
