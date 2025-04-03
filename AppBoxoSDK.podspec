

Pod::Spec.new do |s|
    
    s.platform = :ios
    s.ios.deployment_target = '9.0'
    s.name = "AppBoxoSDK"
    s.summary = "AppBoxo allows to run any web application on the fly."
    s.requires_arc = true
    s.version = "1.9.1"
    s.license = "Apache 2.0"
    s.author = { "Appboxo" => "signup@appboxo.com" }
    s.frameworks = "UIKit", "WebKit", "SafariServices", "CoreLocation", "CoreMotion"
    s.homepage = "https://appboxo.com"
    s.documentation_url = "https://docs.appboxo.com/"
    s.swift_version = "4.2"
    
    
    s.source = { :git => "https://github.com/Appboxo/appboxo-ios-sdk.git", :tag => "#{s.version}" }
    
    s.exclude_files = "Classes/Exclude"
    s.ios.vendored_frameworks = 'AppBoxoSDK.xcframework'
    
end

