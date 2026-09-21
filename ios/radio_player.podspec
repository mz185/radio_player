#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint radio_player.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'radio_player'
  s.version          = '2.2.0'
  s.summary          = 'Radio Player'
  s.description      = <<-DESC
A Flutter plugin to play streaming audio content with background support and lock screen controls.
                       DESC
  s.homepage         = 'https://github.com/cheebeez/radio_player'
  s.license          = { :type => 'CC-BY-NC-SA-4.0', :file => '../LICENSE' }
  s.author           = { 'Ilia Chirkunov' => 'contact@cheebeez.com' }
  s.source           = { :path => '.' }
  s.source_files = 'radio_player/Sources/radio_player/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '15.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # Kept beside Package.swift so CocoaPods and Swift Package Manager read the
  # same sources. See https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  s.resource_bundles = {'radio_player_privacy' => ['radio_player/Sources/radio_player/PrivacyInfo.xcprivacy']}
end
