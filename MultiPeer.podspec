Pod::Spec.new do |s|
  s.name         = "MultiPeer"
  s.version      = "0.0.1"
  s.summary      = "MultiPeer makes it easy to automatically connect to multiple nearby devices and share information using MultipeerConnectivity."
  s.description  = "MultiPeer is a wrapper for the MultipeerConnectivity framework for offline data transmission between devices. This framework makes it easy to automatically connect to multiple nearby devices and share information using either bluetooth or wifi radios."
  s.homepage     = "https://github.com/dingwilson/MultiPeer"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Wilson Ding" => "hello@wilsonding.com",
                      "Quan Vo" => "qvo1987@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/dingwilson/MultiPeer.git", :tag => s.version }
  s.source_files  = "Sources/MultiPeer/*.{h,m,swift}"
end