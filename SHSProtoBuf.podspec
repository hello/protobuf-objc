Pod::Spec.new do |s|
  s.name         = "SHSProtoBuf"
  s.version      = "0.9"
  s.summary      = "Objective-C Protocol Buffers 2.5 implementation"
  
  s.homepage     = "https://code.google.com/p/protobuf"
  s.license      = "Apache 2.0"
  
  s.author       = { "Shatunov Sergey" => "sshatunov@yandex.ru" }
  s.author       = { "Alexey Khokhlov" => "alexeyxo@gmail.com" }
  s.author       = "David Bonnefoy"
  s.author       = { "Ragy Eleish" => "ragy@regwez.com" }
  s.author       = { "Jon Parise" => "jon@booyah.com" }
  s.authors      = "Kenton Varda", "Sanjay Ghemawat", "Jeff Dean"
  
  s.source       = { :git => "https://github.com/Serheo/protobuf-objc.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  
  s.header_dir = "ProtocolBuffers"
  s.xcconfig = { 'WARNING_CFLAGS' => '$(inherited) -Wno-missing-prototypes -Wno-format' }
  s.preserve_paths = 'README.md'
  
  s.subspec 'no-arc' do |sp|
    sp.source_files = 'src/runtime/Classes/*.{h,m}'
    sp.requires_arc = false
  end
  
  s.subspec 'arc' do |sp|
    sp.source_files = 'src/runtime/Classes/Descriptor/*'
    sp.requires_arc = true
  end  
  
end