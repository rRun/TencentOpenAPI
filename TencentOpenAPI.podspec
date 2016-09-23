Pod::Spec.new do |s|
  s.name         = 'TencentOpenAPI'
  s.version      = '3.1.0'
  s.summary      = 'TencentOpenAPI3.1'
  s.description  = <<-DESC
                   This pod is used who want to use tencentOpenAPI v3.1 with podfile.
                   DESC
  s.author       = 'http://open.qq.com'
  s.homepage     = 'http://open.qq.com'
  s.license      = {
      :type => 'LGPL',
      :file => "LICENSE"
  }
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source       = { :git => 'https://github.com/rRun/TencentOpenAPI.git', :tag => 'v#{spec.version}' }

  s.resources = "QQConnectSDk/TencentOpenApi_IOS_Bundle.bundle"
  s.vendored_frameworks = 'QQConnectSDk/TencentOpenAPI.framework'
  s.public_header_files = "QQConnectSDk/TencentOpenAPI.framework/Headers/**/*.h"
  
  the_frameworks =  [
                      '"SystemConfiguration"',
                      '"CoreTelephony"'
                    ]
  the_ldflags    = '$(inherited) -lz -lsqlite3 -liconv -lstdc++ -framework ' + the_frameworks.join(' -framework ') + ''

  s.xcconfig = { 'OTHER_LDFLAGS' => the_ldflags }
end