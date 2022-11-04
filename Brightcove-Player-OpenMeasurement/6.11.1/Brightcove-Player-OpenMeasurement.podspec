Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-OpenMeasurement"
  s.version      = "6.11.1"
  s.summary      = "Open Measurement SDK for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'OMLICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ssai.git", :tag => "v#{s.version}" }

  s.ios.deployment_target  = '11.4'

  s.ios.vendored_framework = "xcframework/OMSDK_Brightcove.xcframework"

end
