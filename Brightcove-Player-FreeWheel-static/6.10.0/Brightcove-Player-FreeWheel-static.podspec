Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-FreeWheel-static"
  s.version      = "6.10.0"
  s.summary      = "FreeWheel Plugin for Brightcove Player SDK for iOS"
  s.homepage     = "https://sdks.support.brightcove.com/"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-fw.git", :tag => "v#{s.version}" }

  s.static_framework = true

  s.ios.deployment_target  = '11.0'
  s.tvos.deployment_target = '11.0'

  # FreeWheel's AdManager requires these.
  s.ios.weak_frameworks =  'AdSupport', 'CoreLocation', 'MessageUI', 'WebKit'
  s.tvos.weak_frameworks = 'AdSupport', 'CoreLocation'

  s.libraries = 'xml2'

  s.ios.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]': 'arm64' }

  s.default_subspec = "Framework"

  s.subspec "Framework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core-static', '6.10.0'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core', '6.10.0'

    ss.ios.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]': 'arm64' }
    ss.tvos.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]': 'arm64' }

    ss.ios.vendored_framework  = "ios/BrightcoveFW.framework"
    ss.tvos.vendored_framework = "tvos/BrightcoveFW.framework"
  end

  s.subspec "XCFramework" do |ss|
    ss.ios.dependency 'Brightcove-Player-Core-static/XCFramework', '6.10.0'
    # Brightcove SDK for tvOS is dynamic-only
    ss.tvos.dependency 'Brightcove-Player-Core/XCFramework', '6.10.0'

    ss.ios.vendored_framework  = "ios/BrightcoveFW.xcframework"
    ss.tvos.vendored_framework = "tvos/BrightcoveFW.xcframework"
  end
  
end
