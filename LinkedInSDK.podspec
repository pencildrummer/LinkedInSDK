#
# Be sure to run `pod lib lint LinkedInSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LinkedInSDK'
  s.version          = '1.0.7'
  s.summary          = 'A short description of LinkedInSDK.'

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/LinkedInSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fabio Borella' => 'info@pencildrummer.com' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/LinkedInSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.header_dir = 'LinkedInSDK'

  s.source_files = 'LinkedInSDK/linkedin-sdk.framework/Headers/*.{h,m}', 'LinkedInSDK/*.{swift,m}'

  s.frameworks = 'linkedin-sdk'
  s.vendored_frameworks = 'LinkedInSDK/linkedin-sdk.framework'
  s.public_header_files = 'LinkedInSDK/linkedin-sdk.framework/**/*.h'
  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => '-framework linkedin-sdk',
    'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/../../LinkedInSDK/"'
  }

end
