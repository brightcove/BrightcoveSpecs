Pod::Spec.new do |s|

	s.name         = "Brightcove-Player-IMA"
	s.version      = "6.8.3"
	s.summary      = "IMA Plugin for Brightcove Player SDK for iOS"
	s.homepage     = "https://sdks.support.brightcove.com/"
	s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
	s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

	s.platform = :ios

	s.ios.deployment_target  = '11.0'
	s.tvos.deployment_target = '11.0'

	s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }
	s.requires_arc = true

	s.dependency 'Brightcove-Player-Core', '6.8.3'
	s.ios.dependency 'GoogleAds-IMA-iOS-SDK', '3.12.1'
	s.tvos.dependency 'GoogleAds-IMA-tvOS-SDK', '4.3.2'
	
	s.ios.vendored_framework   = "ios/BrightcoveIMA.framework"
	s.tvos.vendored_framework  = "tvos/BrightcoveIMA.framework"

end
