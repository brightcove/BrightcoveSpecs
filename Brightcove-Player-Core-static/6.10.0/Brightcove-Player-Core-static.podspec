Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core-static"
  s.version      = "6.10.0"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }

  s.static_framework = true

  s.platform = :ios, '11.0'

  s.default_subspec = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }
    ss.ios.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }

    ss.ios.resource_bundle      = { 'BCOVPUIResources' => 'ios/static/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

    ss.ios.vendored_framework   = "ios/static/BrightcovePlayerSDK.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.ios.resource_bundle    = { 'BCOVPUIResources' => 'ios/static/BrightcovePlayerSDK.xcframework/ios-arm64/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

    ss.ios.vendored_framework = "ios/static/BrightcovePlayerSDK.xcframework"
  end

end
