Pod::Spec.new do |s|
  s.name = 'NextUser'
  s.version = '1.1.2'
  s.summary = "NextUser analytics for IOS."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"Next User"=>"a.lazea@gmail.com"}
  s.homepage = "https://github.com/NextUserSF/mobile-sdk-ios"
  s.description = "NextUser SDK for IOS platform"
  s.frameworks = "SystemConfiguration"
  s.requires_arc = true
  s.xcconfig = {"FRAMEWORK_SEARCH_PATHS"=>"\"$(PODS_ROOT)/NextUser/**\"", "ENABLE_BITCODE"=>"YES"}
  s.source = { :http => 'https://github.com/NextUserSF/mobile-sdk-ios/files/1711656/NextUser.Framework.zip' }
  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'NextUser.framework'
end
