require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/nicolo-ribaudo/rn-reproducer"
  s.license      = "MIT"
  s.authors      = "Test"
  s.platforms    = { :ios => "15.0" }
  s.source       = { :git => "https://github.com/nicolo-ribaudo/rn-reproducer.git", :tag => "#{s.version}" }

  s.source_files = "ios/Sources/**/*.{h,m,mm,swift}", "ios/generated/**/*.{h,m,mm,cpp}"
  s.private_header_files = "ios/generated/**/*.h"

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/ios/generated"'
  }

  install_modules_dependencies(s)
end
