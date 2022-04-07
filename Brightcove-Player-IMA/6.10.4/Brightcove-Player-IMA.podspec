Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-IMA"
  s.version      = "6.10.4"
  s.summary      = "IMA Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }

  s.ios.deployment_target     = '11.0'
  s.tvos.deployment_target    = '11.0'

  s.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  => 'arm64' }
  s.tvos.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]'  =>  'arm64' }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' =>  'arm64' }

  s.ios.dependency 'GoogleAds-IMA-iOS-SDK', '3.14.4'
  s.tvos.dependency 'GoogleAds-IMA-tvOS-SDK', '4.3.2'

  s.default_subspec           = "Framework"

  s.subspec "Framework" do |ss|
    ss.dependency 'Brightcove-Player-Core', '6.10.4'

    ss.ios.vendored_framework  = "ios/BrightcoveIMA.framework"
    ss.tvos.vendored_framework = "tvos/BrightcoveIMA.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.dependency 'Brightcove-Player-Core/XCFramework', '6.10.4'

    ss.ios.vendored_framework  = "ios/BrightcoveIMA.framework"
    ss.tvos.vendored_framework = "tvos/BrightcoveIMA.framework"
  end

end
