Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-GoogleCast"
  s.version      = "6.10.3"
  s.summary      = "Google Cast Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-googlecast.git", :tag => "v#{s.version}" }

  s.platform        = :ios, '11.0'

  s.default_subspec = "Bluetooth"

  s.subspec "Bluetooth" do |ss|
    ss.default_subspec = "Framework"

    ss.dependency 'google-cast-sdk', '4.6.1'

    ss.subspec "Framework" do |f|
      f.dependency 'Brightcove-Player-Core', '6.10.3'

      ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
      ss.ios.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' } 

      f.vendored_framework = "ios/BrightcoveGoogleCast.framework"
    end

    ss.subspec "XCFramework" do |xc|
      xc.dependency 'Brightcove-Player-Core/XCFramework', '6.10.3'

      ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

      xc.vendored_framework       = "xcframework/BrightcoveGoogleCast.xcframework"
    end
  end

  s.subspec "No-Bluetooth" do |ss|
    ss.default_subspec = "Framework"

    ss.dependency 'google-cast-sdk-no-bluetooth', '4.6.1'

    ss.subspec "Framework" do |f|
      f.dependency 'Brightcove-Player-Core', '6.10.3'

      ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
      ss.ios.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

      f.vendored_framework        = "ios/BrightcoveGoogleCast.framework"
    end

    ss.subspec "XCFramework" do |xc|
      xc.dependency 'Brightcove-Player-Core/XCFramework', '6.10.3'

      ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

      xc.vendored_framework       = "xcframework/BrightcoveGoogleCast.xcframework"
    end
  end

end
