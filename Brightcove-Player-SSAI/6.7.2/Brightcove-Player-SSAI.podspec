Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SSAI"
  s.version      = "6.7.2"
  s.summary      = "SSAI Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://support.brightcove.com/brightcove-player"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }
  
  s.default_subspec = 'default'
   
  s.ios.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'
  
  s.subspec "default" do |ss|
  
    ss.dependency 'Brightcove-Player-Core/default', '6.7.2'
    
    ss.ios.vendored_framework   = "ios/static/BrightcoveSSAI.framework"
    
    ss.tvos.vendored_framework  = "tvos/BrightcoveSSAI.framework"

  end

  s.subspec "dynamic" do |ss|
  
    ss.dependency 'Brightcove-Player-Core/dynamic', '6.7.2'
    
    ss.ios.vendored_framework   = "ios/dynamic/BrightcoveSSAI.framework"
    
    ss.tvos.vendored_framework  = "tvos/BrightcoveSSAI.framework"
    
  end

  s.libraries = 'xml2.2'
  
end
