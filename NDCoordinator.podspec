Pod::Spec.new do |s|
s.name         = "NDCoordinator"
  s.version      = "0.0.1"
  s.summary      = "A implementation of coordinator pattern."
  s.description  = <<-DESC
  NDCoordinator is a small framework that support interface and a base class for coordinator pattern.
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-coordinator.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  #s.source        = { :http => 'file:' + URI.escape(__dir__) + '/' }
  s.source       = { :git => "https://github.com/hiep-nd/nd-coordinator.git", :tag => "Pod-#{s.version}" }
  s.requires_arc   = true
  s.source_files  = "NDCoordinator/**/*.{h,m,mm}"
  s.header_mappings_dir = 'NDCoordinator'
end
