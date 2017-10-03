Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-OnceUX"
  s.version      = "6.1.1"
  s.summary      = "OnceUX Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://docs.brightcove.com/en/player/mobile-sdks/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-oux.git", :tag => "v#{s.version}" }
  
  s.default_subspec = 'default'
   
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  
  s.subspec "default" do |ss|
  
    ss.dependency 'Brightcove-Player-Core/default', '6.1.1'
    
    ss.ios.vendored_framework   = "ios/static/BrightcoveOUX.framework"
    ss.ios.weak_framework       = 'WebKit'
    
    ss.tvos.vendored_framework  = "tvos/BrightcoveOUX.framework"

  end

  s.subspec "dynamic" do |ss|
  
    ss.dependency 'Brightcove-Player-Core/dynamic', '6.1.1'
    
    ss.ios.vendored_framework   = "ios/dynamic/BrightcoveOUX.framework"
    ss.ios.weak_framework       = 'WebKit'
    
    ss.tvos.vendored_framework  = "tvos/BrightcoveOUX.framework"
    
  end

  s.libraries = 'xml2.2'
  
end
