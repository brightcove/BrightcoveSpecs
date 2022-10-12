Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-GoogleCast-static"
  s.version      = "6.11.0"
  s.summary      = "Google Cast Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-googlecast.git", :tag => "v#{s.version}" }

  s.static_framework = true

  s.platform         = :ios, '11.0'

  s.default_subspec  = "Bluetooth"

  s.subspec "Bluetooth" do |ss|
    ss.default_subspec = "Framework"

    ss.dependency 'google-cast-sdk', '4.6.1'

    ss.subspec "Framework" do |f|
      f.dependency 'Brightcove-Player-Core-static', '6.11.0'

      f.vendored_framework         = "ios/BrightcoveGoogleCast.framework"

      ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
      ss.ios.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end

    ss.subspec "XCFramework" do |xc|
      xc.dependency 'Brightcove-Player-Core-static/XCFramework', '6.11.0'

      xc.vendored_framework        = "xcframework/BrightcoveGoogleCast.xcframework"

      ss.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end
  end

  s.subspec "No-Bluetooth" do |ss|
    ss.default_subspec = "Framework"

    ss.dependency 'google-cast-sdk-no-bluetooth', '4.6.1'

    ss.subspec "Framework" do |f|
      f.dependency 'Brightcove-Player-Core-static', '6.11.0'

      f.vendored_framework        = "ios/BrightcoveGoogleCast.framework"

      ss.ios.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
      ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end

    ss.subspec "XCFramework" do |xc|
      xc.dependency 'Brightcove-Player-Core-static/XCFramework', '6.11.0'

      xc.vendored_framework       = "xcframework/BrightcoveGoogleCast.xcframework"

      ss.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    end
  end

end
