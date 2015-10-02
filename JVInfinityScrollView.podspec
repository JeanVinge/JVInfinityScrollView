#
# Be sure to run `pod lib lint JVInfinityScrollView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JVInfinityScrollView"
  s.version          = "1.0.0"
  s.summary          = "The idea is to create a similar Apple Store Banner, and learn some code in **swift** =)"

  s.description      = <<-DESC
                        The implementation is in progress,
                        if you liked the idea, and want to help me and keep improve this code,
                        you can make a pull request or talk on [@jean_vinge](https://twitter.com/jean_vinge).
                       DESC

  s.homepage         = "https://github.com/JeanVinge/JVInfinityScrollView"
  # s.screenshots     = "https://github.com/JeanVinge/JVInfinityScrollView/blob/master/Examples/LiveDemo/infinityScrollView.gif"
  s.license          = 'MIT'
  s.author           = { "Jean Vinge" => "jean_vinge@hotmail.com" }
  s.source           = { :git => "https://github.com/JeanVinge/JVInfinityScrollView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jean_vinge'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'JVInfinityScrollView/classes/**/*'

end
