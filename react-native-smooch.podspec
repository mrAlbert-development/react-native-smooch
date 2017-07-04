Pod::Spec.new do |s|
  s.name             = "react-native-smooch"
  s.version          = "0.1.3"
  s.summary          = "A React Native client for smooch.io"
  s.requires_arc = true
  s.author       = { "Mike Gozzo" => "gozman@users.noreply.github.com" }
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.source       = { :git => "https://github.com/smooch/react-native-smooch" }
  s.source_files = 'ios/RCTSmooch/*'
  s.platform     = :ios, "8.0"
  s.dependency 'Smooch', '~> 4.0'
  s.dependency 'React'
end


require 'json'
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name                = "RNFirebase"
  s.version             = package["version"]
  s.summary             = package["description"]
  s.description         = <<-DESC
                            Integrate firebase into your app using the React Native SDKs.
                          DESC
  s.homepage            = "http://invertase.io"
  s.license             = package['license']
  s.author              = "Mike Diarmid"
  s.source              = { :git => "https://github.com/invertase/react-native-firebase.git", :tag => "v#{s.version}" }
  s.social_media_url    = 'http://twitter.com/mikediarmid'
  s.platform            = :ios, "8.0"
  s.preserve_paths      = 'README.md', 'package.json', '*.js'
  s.source_files        = 'ios/RNFirebase/*.{h,m}'
end
