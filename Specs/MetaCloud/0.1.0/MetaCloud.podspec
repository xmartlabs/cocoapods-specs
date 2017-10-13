Pod::Spec.new do |spec|
  spec.name = "MetaCloud"
  spec.version = "0.1.0"
  spec.summary = "Great framework"
  spec.homepage = "https://github.com/xmartlabs/postar-sdk"
  spec.authors = { "Diego Ernst" => 'dernst@xmartlabs.com' }
  spec.platform = :ios, "11.0"
  spec.requires_arc = true
  spec.source = { git: "git@github.com:xmartlabs/postar-sdk.git", tag: "#{spec.version}", submodules: true }
  spec.ios.source_files = 'MetaCloud/MetaCloud/**/*.swift'
  spec.ios.frameworks = 'UIKit', 'Foundation', 'ARKit'
  spec.dependency "SwiftSocket", "~> 2.0.2"
end
