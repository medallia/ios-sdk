Pod::Spec.new do |spec|
    spec.name = 'medallia-ios-sdk'
    spec.version = '1.0.0-alpha.17'
    spec.summary = 'The Medallia SDKs Bundle for iOS.'
    spec.homepage = 'https://github.com/medallia/ios-sdk'
    spec.license = {
        :type => 'Commercial',
        :file => 'LICENSE.md'
    }
    spec.authors = {
        'Medallia' => 'cocoapods@medallia.com'
    }
    spec.source = { :git => 'https://github.com/medallia/ios-sdk.git', :tag => '1.0.0-alpha.17' }
    spec.ios.deployment_target = '15.0'
    spec.swift_versions = ['5.0', '5.9', '6.0']
    spec.subspec 'DXA' do |dx|
        dx.dependency 'medallia-dxa-ios-sdk', '~> 4.0.0'
        dx.dependency 'medallia-dxa-ios-objc-sdk', '~> 4.0.0'
    end
    spec.subspec 'Digital' do |di|
        di.dependency 'medallia-digital-ios-sdk', '~> 4.11.0'
    end
end
