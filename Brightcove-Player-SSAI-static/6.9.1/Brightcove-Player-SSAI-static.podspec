Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI-static"
  s.version      = "6.9.1"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }
  
  s.ios.deployment_target  = '11.0'

  s.dependency 'Brightcove-Player-Core-static', '6.9.1'
  s.ios.vendored_framework   = "ios/static/BrightcoveSSAI.framework"
  s.static_framework         = true

  s.ios.resource_bundle      = { 'BCOVSSAIOMResources' => 'ios/static/BrightcoveSSAI.framework/omsdk-v1.js' }

  s.libraries = 'xml2.2'
  
end
