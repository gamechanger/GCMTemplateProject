Pod::Spec.new do |s|
  s.name         = "GCMTemplateProject"
  s.version      = "0.1.0"
  s.summary      = "A template project."
  s.homepage     = "https://github.com/gamechanger/GCMTemplateProject"
  s.author       = { "Phil Sarin" => "phil.sarin@gamechanger.io" }
  s.source       = { :git => "https://github.com/gamechanger/GCMTemplateProject.git", :tag => "0.1.0" }
  s.source_files = "GCMTemplateProject/GCMTemplateProject/*.{h,m}"
  s.license = { :type => 'MIT', :type => 'LICENSE' }
  s.requires_arc = true
  s.ios.deployment_target = '6.0'
end
