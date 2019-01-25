#
# Be sure to run `pod lib lint TDFDataDrivenKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDFDataDrivenKit'
  s.version          = '0.0.1'
  s.summary          = 'basic  TDFDataDrivenKit.'
  s.description      = <<-DESC
TDFDataDrivenKit TDFDataDrivenKit
                       DESC

  s.homepage         = 'https://github.com/ny8080/ADDataDrivenKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hongsang' => 'hongsang@2dfire.com' }
  s.source           = { :git => 'https://github.com/ny8080/ADDataDrivenKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  # 源码依赖配置
  s.source_files = 'TDFDataDrivenKit/Classes/**/*'
  s.public_header_files = 'TDFDataDrivenKit/Classes/**/*.{h}'
  # s.private_header_files = 

  # 资源依赖必须使用 bundle
  # s.resource_bundles = {
  #     'TDFDataDrivenKit' => ['TDFDataDrivenKit/Assets/*']
  # }

  s.dependency 'TDFCoreProtocol'
  s.dependency 'TDFBaseInfoKit'
  s.dependency 'Masonry'
end
