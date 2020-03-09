Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-Core"
  s.version      = "6.7.2"
  s.summary      = "Brightcove Player SDK for iOS"
  s.homepage     = "https://support.brightcove.com/brightcove-player"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }

  s.ios.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'
  s.default_subspec = 'default'

  s.subspec "default" do |ss|

    ss.ios.deployment_target    = '11.0'
    ss.ios.vendored_framework   = "ios/static/BrightcovePlayerSDK.framework"
    ss.ios.resource_bundle = { 'BCOVPUIResources' => 'ios/static/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

    ss.tvos.deployment_target   = '11.0'
    ss.tvos.vendored_framework  = "tvos/BrightcovePlayerSDK.framework"

  end

  s.subspec "dynamic" do |ss|

    ss.ios.deployment_target    = '11.0'
    ss.ios.vendored_framework   = "ios/dynamic/BrightcovePlayerSDK.framework"
    ss.ios.resource_bundle 		= { 'BCOVPUIResources' => 'ios/dynamic/BrightcovePlayerSDK.framework/bcovpuiiconfont.ttf' }

    ss.tvos.deployment_target   = '11.0'
    ss.tvos.vendored_framework  = "tvos/BrightcovePlayerSDK.framework"

  end

end
