Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI"
  s.version      = "6.8.5"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }
  
  s.ios.deployment_target  = '11.0'
  s.tvos.deployment_target = '11.0'

  s.dependency 'Brightcove-Player-Core', '6.8.5'
  s.ios.vendored_framework   = "ios/dynamic/BrightcoveSSAI.framework"
  s.tvos.vendored_framework  = "tvos/BrightcoveSSAI.framework"

  s.ios.resource_bundle      = { 'BCOVSSAIOMResources' => 'ios/dynamic/BrightcoveSSAI.framework/omsdk-v1.js' }

  s.libraries = 'xml2.2'
  
end
