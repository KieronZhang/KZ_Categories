
Pod::Spec.new do |s|

    s.name = 'KZ_Categories'
    s.version = '0.1.1'
    s.summary = 'iOS categories.'
    s.homepage = 'https://github.com/KieronZhang/KZ_Categories'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang.' => 'https://github.com/KieronZhang'}
    s.platform = :ios, '8.0'
    s.source = {:git => 'https://github.com/KieronZhang/KZ_Categories.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.frameworks = 'Foundation'
    s.vendored_frameworks = 'KZ_Categories/KZ_CategoriesFramework.framework'
    s.requires_arc = true

    s.dependency 'KZ_JSON'

end
