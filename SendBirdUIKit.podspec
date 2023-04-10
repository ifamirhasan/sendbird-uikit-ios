Pod::Spec.new do |s|
	s.name         = "SendBirdUIKit"
	s.module_name  = "SendbirdUIKit"
	s.version      = "3.5.3"
	s.summary      = "UIKit based on SendbirdChatSDK"
	s.description  = "Sendbird UIKit is a framework composed of basic UI components based on SendbirdChatSDK."
	s.homepage     = "https://sendbird.com"
	s.documentation_url = 'https://sendbird.com/docs/uikit'
	s.license      = "Commercial"
	s.authors      = {
	"Jaesung Lee" => "jaesung.lee@sendbird.com",
	"Tez" => "tez.park@sendbird.com"
  	}
	s.platform     = :ios, "11.0"
	s.source = { :git => "https://github.com/ifamirhasan/sendbird-uikit-ios.git", :branch => "dev", :tag => "v#{s.version}" }
	s.ios.frameworks = ["UIKit", "Foundation", "CoreData", "SendbirdChatSDK"]
	s.source_files = 'Sources/**/*.{h,m,swift}'
    s.resources = ['Sources/Resource/*.*', 'Sources/**/*.xib']
	s.requires_arc = true
	s.dependency "SendbirdChatSDK", ">= 4.6.0"
	s.ios.library = "icucore"
	s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' } 
 	s.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER': 'com.sendbird.uikit' }
end