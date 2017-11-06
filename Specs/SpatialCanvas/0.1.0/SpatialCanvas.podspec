Pod::Spec.new do |spec|
  spec.name = "SpatialCanvas"
  spec.version = "0.1.0"
  spec.summary = "Great framework"
  spec.homepage = "https://github.com/xmartlabs/spatialcanvas-ios"
  spec.authors = { "Diego Ernst" => 'dernst@xmartlabs.com' }
  spec.platform = :ios, "11.0"
  spec.requires_arc = true
  spec.source = { git: "git@github.com:xmartlabs/spatialcanvas-ios.git", tag: "#{spec.version}", submodules: true }
  spec.ios.source_files = 'SpatialCanvas/SpatialCanvas/**/*.swift'
  spec.ios.frameworks = 'UIKit', 'Foundation', 'ARKit'
  spec.dependency "SwiftSocket", "~> 2.0.2"
end
