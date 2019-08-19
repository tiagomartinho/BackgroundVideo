Pod::Spec.new do |s|
  s.name             = 'BackgroundVideo'
  s.version          = '0.2.0'
  s.summary          = 'Play a video in the Background of a view.'

  s.description      = <<-DESC
Great for onboarding screens where you want to play a video in loop below your UI.
                       DESC

  s.homepage         = 'https://github.com/Tiago Martinho/BackgroundVideo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tiago Martinho' => 'tiago@elit.software' }
  s.source           = { :git => 'https://github.com/Tiago Martinho/BackgroundVideo.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/martinho_t'

  s.ios.deployment_target = '10.0'

  s.source_files = 'BackgroundVideo/Classes/**/*'
  s.swift_versions = ['5.0']
end
