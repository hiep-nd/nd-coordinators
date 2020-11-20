Pod::Spec.new do |s|
s.name         = "NDCoordinators"
  s.version      = "0.0.5.1"
  s.summary      = "A implementation of coordinator pattern."
  s.description  = <<-DESC
  NDCoordinators is a small framework that support interface and a base class for coordinator pattern.
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-coordinator.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
  #s.tvos.deployment_target = '9.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  #s.source        = { :http => 'file:' + URI.escape(__dir__) + '/' }
  s.source       = { :git => "https://github.com/hiep-nd/nd-coordinator.git", :tag => "Pod-#{s.version}" }
  s.requires_arc   = true

  s.subspec 'Core_ObjC' do |ss|
    ss.source_files  = "Sources/Core_ObjC/*.{h,m,mm}"

    ss.framework = 'Foundation'
  end

  s.subspec 'Core_Swift' do |ss|
    ss.dependency 'NDCoordinators/Core_ObjC'
  end

  s.subspec 'Core' do |ss|
    ss.dependency 'NDCoordinators/Core_Swift'
  end

  s.subspec 'Abstracts_ObjC' do |ss|
    ss.source_files  = "Sources/Abstracts_ObjC/*.{h,m,mm}"

    ss.framework = 'Foundation'

    ss.dependency 'NDCoordinators/Core_ObjC'
  end

  s.subspec 'Abstracts_Swift' do |ss|
    ss.dependency 'NDCoordinators/Abstracts_ObjC'
  end

  s.subspec 'Abstracts' do |ss|
    ss.dependency 'NDCoordinators/Abstracts_Swift'
  end

  s.subspec 'Coordinators_ObjC' do |ss|
    ss.source_files  = "Sources/Coordinators_ObjC/*.{h,m,mm}"

    ss.framework = 'Foundation', 'UIKit'

    ss.dependency 'NDCoordinators/Abstracts_ObjC'

    ss.dependency 'NDLog/ObjC', '~> 0.0.6'
    ss.dependency 'NDUtils/objc_ObjC', '~> 0.0.5'
  end

  s.subspec 'Coordinators_Swift' do |ss|
    ss.dependency 'NDCoordinators/Coordinators_ObjC'
  end

  s.subspec 'Coordinators' do |ss|
    ss.dependency 'NDCoordinators/Coordinators_Swift'
  end

  s.subspec 'ObjC' do |ss|
    ss.dependency 'NDCoordinators/Core_ObjC'
    ss.dependency 'NDCoordinators/Abstracts_ObjC'
    ss.dependency 'NDCoordinators/Coordinators_ObjC'
  end

  s.subspec 'Swift' do |ss|
    ss.dependency 'NDCoordinators/Core'
    ss.dependency 'NDCoordinators/Abstracts'
    ss.dependency 'NDCoordinators/Coordinators'
  end

  s.default_subspec = 'Swift'
end
