Pod::Spec.new do |s|
  s.name          = "AudioKit"
  s.version       = "3.5.2"
  s.summary       = "Open-source audio synthesis, processing, & analysis platform."
  #s.description   = ""
  s.social_media_url = "http://twitter.com/AudioKitMan"
  s.homepage      = "http://audiokit.io/"
  s.documentation_url = "http://audiokit.io/docs/"
  s.license       = { :type => 'MIT', :file => 'LICENSE' }

  s.authors       = { 'Aurelius Prochazka' => 'audiokit@audiokit.io' }
  s.source        = { git: "https://github.com/riboseinc/AudioKit" }

  #s.source_files  = []
  #s.resources     = []

  s.frameworks    = 'AVFoundation'

  s.pod_target_xcconfig = {
    "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES": "YES"
  }

  s.osx.deployment_target = '10.11'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'

  s.osx.source_files = "macOS/AudioKit.framework/Versions/A/Headers/*.h"
  s.osx.public_header_files = "macOS/AudioKit.framework/Versions/A/Headers/*.h"
  s.osx.vendored_frameworks = "macOS/AudioKit.framework"

  s.ios.source_files = "iOS/AudioKit.framework/Versions/Headers/*.h"
  s.ios.public_header_files = "iOS/AudioKit.framework/Versions/Headers/*.h"
  s.ios.vendored_frameworks = "iOS/AudioKit.framework"

  s.tvos.source_files = "tvOS/AudioKit.framework/Versions/Headers/*.h"
  s.tvos.public_header_files = "tvOS/AudioKit.framework/Versions/Headers/*.h"
  s.tvos.vendored_frameworks = "tvOS/AudioKit.framework"

end
