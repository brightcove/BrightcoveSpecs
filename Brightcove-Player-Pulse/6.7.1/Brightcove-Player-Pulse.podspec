Pod::Spec.new do |s|

	s.name         = "Brightcove-Player-Pulse"
	s.version      = "6.7.1"
	s.summary      = "Pulse Plugin for Brightcove Player SDK for iOS"
	s.homepage     = "https://support.brightcove.com/brightcove-player"
	s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
	s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

	s.platform = :ios
	s.ios.deployment_target = '10.0'
	s.tvos.deployment_target = '10.0'
	s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-pulse.git", :tag => "v#{s.version}" }
	s.requires_arc = true

	s.dependency 'Brightcove-Player-Core', '6.7.1'
	
	s.ios.vendored_framework   = "ios/BrightcovePulse.framework"
	s.tvos.vendored_framework  = "tvos/BrightcovePulse.framework"

end
