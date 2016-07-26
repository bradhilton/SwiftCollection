Pod::Spec.new do |s|
  s.name         = "SwiftCollection"
  s.version      = "0.1.8"
  s.summary      = "Abstraction Over UICollectionViewDelegate and UICollectionViewDataSource"
  s.description  = <<-DESC
                    SwiftCollection creates an abstraction layer over UICollectionViewDelegate and UICollectionViewDataSource that allows you to compose data representations at the item, section and collection level.
                   DESC
  s.homepage     = "https://github.com/bradhilton/SwiftCollection"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Brad Hilton" => "brad@skyvive.com" }
  s.source       = { :git => "https://github.com/bradhilton/SwiftCollection.git", :tag => "0.1.8" }

  s.ios.deployment_target = "8.0"

  s.source_files  = "SwiftCollection", "SwiftCollection/**/*.{swift,h,m}"
  s.requires_arc = true
  s.dependency 'AssociatedValues', '~> 1.0.3'
  s.dependency 'OrderedObjectSet', '~> 1.0.0'
end
