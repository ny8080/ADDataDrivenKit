#
# Be sure to run `pod lib lint TDFDataDrivenKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDFDataDrivenKit'
  s.version          = '0.1.4'

  # basic 基础组件 
  # weakbusiness 弱业务组件
  # business 业务组件
  
  s.summary          = 'basic  TDFDataDrivenKit.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TDFDataDrivenKit TDFDataDrivenKit
                       DESC

  s.homepage         = 'http://git.2dfire.net/ios/TDFDataDrivenKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiatiao' => 'qingmu@2dfire.com' }
  s.source           = { :git => 'http://git.2dfire.net/ios/TDFDataDrivenKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  
  tdfire_source_configurator = lambda do |s|
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

  unless %w[tdfire_set_binary_download_configurations tdfire_source tdfire_binary].reduce(true) { |r, m| s.respond_to?(m) & r }    
    tdfire_source_configurator.call s
  else
    s.tdfire_source tdfire_source_configurator
    s.tdfire_binary tdfire_source_configurator

    #s.tdfire_binary tdfire_source_configurator do |s|
    # 额外配置 (一般不用)
    #end

    s.tdfire_set_binary_download_configurations
  end
end
