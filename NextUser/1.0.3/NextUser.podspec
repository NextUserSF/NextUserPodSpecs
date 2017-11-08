Pod::Spec.new do |s|
  s.name             = 'NextUser'
  s.version          = '1.0.3'
  s.summary          = 'NextUser analytics for IOS.'
  s.description      = 'NextUser SDK for IOS platform'

  s.homepage         = 'https://github.com/NextUserSF/mobile-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Next User' => 'marin@nextuser.com' }
  s.source           = { :git => 'https://github.com/NextUserSF/mobile-sdk-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'NextUser/Classes/**/*.{h,m}'
  s.public_header_files = 'NextUser/Classes/Public/**/*.h'
  s.resource_bundles = {
    'NextUser' => ['NextUser/Assets/*.png']
  }
    
  s.frameworks = 'SystemConfiguration', 'FirebaseCore', 'FirebaseRemoteConfig', 'FirebaseInstanceID', 'FirebaseAnalytics', 'FirebaseABTesting', 'FirebaseCoreDiagnostics', 'FirebaseNanoPB'
    
  s.dependency 'CocoaLumberjack'
  s.dependency 'AFNetworking', '~> 3.0'
  s.dependency 'PubNub', '~> 4'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/Messaging'
  s.dependency 'Firebase/Analytics'


  s.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Firebase $(PODS_ROOT)/FirebaseCore/Frameworks $(PODS_ROOT)/FirebaseRemoteConfig/Frameworks $(PODS_ROOT)/FirebaseInstanceID/Frameworks $(PODS_ROOT)/FirebaseAnalytics/Frameworks $(PODS_ROOT)/FirebaseABTesting/Frameworks'
  }

    s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

end
