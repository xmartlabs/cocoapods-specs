Pod::Spec.new do |s|
  s.name                  = "SwiftyMatter"
  s.version               = "1.0.2"
  s.summary               = "A swift framework that helps you build awesome iOS apps."
  s.homepage              = "https://github.com/xmartlabs/SwiftyMatter"
  s.license               = { type: 'MIT', file: 'LICENSE' }
  s.author                = { "Xmartlabs SRL" => "swift@xmartlabs.com" }
  s.source                = { git: "git@github.com:xmartlabs/SwiftyMatter.git", tag: s.version.to_s }
  s.social_media_url      = 'https://twitter.com/xmartlabs'
  s.ios.deployment_target = '9.0'
  s.requires_arc          = true
  s.ios.frameworks        = 'UIKit', 'Foundation'

  s.subspec 'Core' do |sp|
    sp.ios.source_files = 'Sources/**/*.{swift}'
    sp.dependency 'Eureka', '~> 3.0.0'
    sp.dependency 'PluggableApplicationDelegate', '~> 0.1.2'
    sp.dependency 'OperaSwift', '~> 2.0.0'
    sp.dependency 'RealmSwift', '~> 2.6.1'
    sp.dependency 'RxRealm', '~> 0.6.0'
    sp.dependency 'RxSwift', '~> 3.4.0'
    sp.dependency 'Decodable', '~> 0.5'
  end

  s.subspec 'Onboarding' do |sp|
    sp.ios.source_files = 'Onboarding/Onboarding/**/*.{swift}'
    sp.dependency 'Ahoy', '~> 1.0.3'
    sp.dependency 'SwiftyMatter/Core'
  end

  s.subspec 'PushNotifications' do |sp|
    sp.ios.source_files = 'PushNotifications/PushNotifications/**/*.{swift}'
    sp.dependency 'Ecno', '~> 1.0'
    sp.dependency 'Whisper', '~> 5.0.0'
    sp.dependency 'PluggableApplicationDelegate', '~> 0.1.2'
    sp.dependency 'SwiftyMatter/Core'
  end

  s.subspec 'Analytics' do |sp|
    sp.ios.source_files = 'Analytics/Analytics/**/*.{swift}'
  end

  s.subspec 'RouteHandling' do |sp|
    sp.ios.source_files = 'RouteHandling/RouteHandling/**/*.{swift}'
    sp.dependency 'SwiftyMatter/Core'
    sp.dependency 'URLNavigator', '~> 1.2'
  end

end
