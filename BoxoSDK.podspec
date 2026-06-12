

Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '13.0'
    s.name = "BoxoSDK"
    s.summary = "Boxo allows to run any web application on the fly."
    s.requires_arc = true
    s.version = "1.29.0"
    s.license = "Apache 2.0"
    s.author = { "Appboxo" => "signup@appboxo.com" }
    s.frameworks = "UIKit", "WebKit", "SafariServices", "CoreLocation", "CoreMotion"
    s.homepage = "https://www.boxo.io"
    s.documentation_url = "https://docs.boxo.io"
    s.swift_version = "5.0"


    s.source = { :git => "https://github.com/Appboxo/boxo-ios-sdk.git", :tag => "#{s.version}" }

    s.exclude_files = "Classes/Exclude"

    # Lottie ships bundled with BoxoSDK to avoid a Library Evolution / ABI mismatch
    # between BoxoSDK.xcframework (built with -enable-library-evolution) and a
    # source-compiled `lottie-ios` pod on the consumer side. Lottie.xcframework
    # is the official Airbnb build, copied into this repo by CI.
    #
    # Do NOT add `pod 'lottie-ios'` to your Podfile - that would link two copies
    # of Lottie into your app and produce duplicate symbols.
    s.ios.vendored_frameworks = ['BoxoSDK.xcframework', 'Lottie.xcframework']

end