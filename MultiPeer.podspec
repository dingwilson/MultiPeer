Pod::Spec.new do |s|
  s.name         = "MultiPeer"
  s.version      = "0.2.0"
  s.summary      = "MultiPeer makes it easy to automatically connect to multiple nearby devices and share information using MultipeerConnectivity."
  s.description  = "MultiPeer is a wrapper for the MultipeerConnectivity framework for offline data transmission between devices. This framework makes it easy to automatically connect to multiple nearby devices and share information using either bluetooth or wifi radios."
  s.homepage     = "https://github.com/dingwilson/MultiPeer"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Wilson Ding" => "hello@wilsonding.com" }
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.10'
  s.source       = { :git => "https://github.com/dingwilson/MultiPeer.git", :tag => s.version }
  s.source_files  = "Sources/*.{h,m,swift}"
  s.documentation_url = 'http://wilsonding.com/MultiPeer/'
end
