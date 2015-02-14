Pod::Spec.new do |s|
  s.name         = "CrossFadingText"
  s.version      = '0.1'
  s.summary      = "Cocoapod and framework to make labels, buttons, and text fields animate when their contents are changed."
  s.homepage     = "http://github.com/ConventionalC/ScrollFromBottomTableView"
  s.license      = 'MIT'
  s.author       = { "Peter DeWeese" => "peter@dewee.se" }
  s.source       = { :git => "https://github.com/ConventionalC/CrossFadingText.git", :tag => '0.1' }
  s.requires_arc = true

  s.ios.source_files = 'CrossFadingText/*.{m,h}'
  s.ios.deployment_target = '7.1'
  s.ios.frameworks = 'Foundation', 'UIKit'
end
