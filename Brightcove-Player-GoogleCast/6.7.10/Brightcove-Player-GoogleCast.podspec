Pod::Spec.new do |s|

	s.name         = "Brightcove-Player-GoogleCast"
	s.version      = "6.7.10"
	s.summary      = "Google Cast Plugin for Brightcove Player SDK for iOS"
	s.homepage     = "https://sdks.support.brightcove.com/"
	s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
	s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

	s.platform = :ios

	s.ios.deployment_target = '11.0'

	s.source           = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-googlecast.git", :tag => "v#{s.version}" }
	s.requires_arc     = true
	s.static_framework = true

	s.dependency 'Brightcove-Player-Core', '6.7.10'
	s.dependency 'google-cast-sdk', '4.4.5'
	
	s.vendored_framework   = "ios/BrightcoveGoogleCast.framework"

end
