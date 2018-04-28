
Pod::Spec.new do |s|

    s.name = 'KZ_Categories'
    s.version = '0.1.2'
    s.summary = 'iOS & macOS categories.'
    s.homepage = 'https://github.com/KieronZhang/KZ_Categories'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang' => 'https://github.com/KieronZhang'}

    s.source = {:git => 'https://github.com/KieronZhang/KZ_Categories.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.requires_arc = true

    s.frameworks = 'Foundation'

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.10'

    s.ios.vendored_frameworks = 'KZ_Categories/KZ_Categories_iOS.framework'
    s.osx.vendored_frameworks = 'KZ_Categories/KZ_Categories_macOS.framework'

    s.dependency 'KZ_JSON'

end
