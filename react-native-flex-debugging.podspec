require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-flex-debugging"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-flex-debugging
                   DESC
  s.homepage     = "https://github.com/ShotSkydiver/react-native-flex-debugging"
  s.license      = "MIT"
  s.author       = { "Your Name" => "yourname@email.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/ShotSkydiver/react-native-flex-debugging.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React-Core"
  s.dependency "FLEX"
end
