#
# Be sure to run `pod lib lint AlamofireRSSParser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AlamofireRSSParser"
  s.version          = "3.0.0"
  s.summary          = "An RSS parser response handler for Alamofire"
  s.description      = "An RSS parser plugin for Alamofire.  Adds a \"responseRSS()\" responseHandler to Alamofire."
  

  s.homepage         = "https://github.com/AdeptusAstartes/AlamofireRSSParser"
  s.license          = 'MIT'
  s.author           = { "Don Angelillo" => "dangelillo@gmail.com" }
  s.source           = { :git => "https://github.com/AdeptusAstartes/AlamofireRSSParser.git", :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.requires_arc = true

  s.swift_version = '5.2'
  s.source_files = 'Pod/Classes/**/*'
  s.dependency 'Alamofire', '~> 5.0'
end
