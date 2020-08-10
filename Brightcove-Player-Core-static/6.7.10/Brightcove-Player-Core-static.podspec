Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core-static"
  s.version      = "6.7.10"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = '11.0'

  s.static_framework         = true
  s.ios.vendored_framework   = "ios/static/BrightcovePlayerSDK.framework"
  s.ios.resource_bundle      = { 'BCOVPUIResources' => 'ios/static/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

end
