Pod::Spec.new do |s|

	s.name         = "Brightcove-Player-IMA"
	s.version      = "6.4.4"
	s.summary      = "IMA Plugin for Brightcove Player SDK for iOS"
	s.homepage     = "https://support.brightcove.com/brightcove-player"
	s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
	s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

	s.platform = :ios
	s.ios.deployment_target = '10.0'
	s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }
	s.requires_arc = true

	s.dependency 'Brightcove-Player-Core/dynamic', '6.4.4'
	s.dependency 'GoogleAds-IMA-iOS-SDK', '3.9.0'
	
	s.vendored_framework   = "ios/BrightcoveIMA.framework"

end
