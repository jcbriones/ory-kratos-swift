Pod::Spec.new do |s|
  s.name = 'OryKratosSwift'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'
  s.version = ''
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'OryKratosSwift Swift SDK'
  s.source_files = 'Sources/OryKratosSwift/**/*.swift'
end
