Pod::Spec.new do |s|
	s.name         = "SendBirdUIKit"
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
	s.source = { :git => "https://github.com/sendbird/sendbird-uikit-ios.git", :tag => "v#{s.version}" }
	s.source_files = "Sources/**/*.{h,swift}"
	s.ios.frameworks = ["UIKit", "Foundation", "CoreData", "SendbirdChatSDK"]
	s.dependency "SendbirdChatSDK", ">= 4.6.0"
	s.ios.library = "icucore"
	s.swift_version = "5.0"
end
