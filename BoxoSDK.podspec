

Pod::Spec.new do |s|
    
    s.platform = :ios
    s.ios.deployment_target = '13.0'
    s.name = "BoxoSDK"
    s.summary = "Boxo allows to run any web application on the fly."
    s.requires_arc = true
    s.version = "1.18.0"
    s.license = "Apache 2.0"
    s.author = { "Appboxo" => "signup@appboxo.com" }
    s.frameworks = "UIKit", "WebKit", "SafariServices", "CoreLocation", "CoreMotion"
    s.homepage = "https://www.boxo.io"
    s.documentation_url = "https://docs.boxo.io"
    s.swift_version = "4.2"
    
    
    s.source = { :git => "https://github.com/Appboxo/boxo-ios-sdk.git", :tag => "#{s.version}" }
    
    s.exclude_files = "Classes/Exclude"
    s.ios.vendored_frameworks = 'BoxoSDK.xcframework'
    
end

