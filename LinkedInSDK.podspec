#
# Be sure to run `pod lib lint LinkedInSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LinkedInSDK'
  s.version          = '1.0.8'
  s.summary          = 'A short description of LinkedInSDK.'

  s.homepage         = 'https://github.com/pencildrummer/LinkedInSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fabio Borella' => 'info@pencildrummer.com' }
  s.source           = { :git => 'https://github.com/pencildrummer/LinkedInSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LinkedInSDKDummy.{h,m}'
  s.preserve_paths = 'linkedin-sdk.framework'
  s.requires_arc = true
  s.user_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/LinkedInSDK"' }

end
