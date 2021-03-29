Pod::Spec.new do |s|
  s.name         = "SwiftCollection"
  s.version      = "0.5.0"
  s.summary      = "Abstraction Over UICollectionViewDelegate and UICollectionViewDataSource"
  s.description  = <<-DESC
                    SwiftCollection creates an abstraction layer over UICollectionViewDelegate and UICollectionViewDataSource that allows you to compose data representations at the item, section and collection level.
                   DESC
  s.homepage     = "https://github.com/bradhilton/SwiftCollection"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Brad Hilton" => "brad.hilton.nw@gmail.com" }
  s.source       = { :git => "https://github.com/bradhilton/SwiftCollection.git", :tag => "0.5.0" }
  s.swift_version = '5.0'

  s.ios.deployment_target = "8.0"

  s.source_files  = "SwiftCollection", "SwiftCollection/**/*.{swift,h,m}"
  s.requires_arc = true
  s.dependency 'AssociatedValues', '~> 5.0.0'
  s.dependency 'OrderedObjectSet', '~> 5.0.0'
end
