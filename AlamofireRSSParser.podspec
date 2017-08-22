#
# Be sure to run `pod lib lint AlamofireRSS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AlamofireRSSParser"
  s.version          = "2.0.1"
  s.summary          = "An RSS parser response handler for Alamofire"
  s.description      = "An RSS parser plugin for Alamofire.  Adds a \"responseRSS()\" responseHandler to Alamofire."
  

  s.homepage         = "https://github.com/AdeptusAstartes/AlamofireRSSParser"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Don Angelillo" => "dangelillo@gmail.com" }
  s.source           = { :git => "https://github.com/AdeptusAstartes/AlamofireRSSParser.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  #s.resource_bundles = {
  #  'AlamofireRSS' => ['Pod/Assets/*.png']
  #}

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire'
end
