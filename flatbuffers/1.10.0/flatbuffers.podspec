Pod::Spec.new do |spec|
  spec.name = 'flatbuffers'
  spec.version = '1.10.0'
  spec.summary = 'Memory Efficient Serialization Library'
  spec.homepage = 'http://google.github.io/flatbuffers/'
  spec.license = {:type => 'Apache License V2.0', :file => 'LICENSE.txt'}
  spec.module_name = 'Flatbuffers'
  spec.source = {:http => 'https://github.com/google/flatbuffers/archive/v1.10.0.zip'}

  spec.prepare_command = 'mv flatbuffers-1.10.0/* .'
  spec.source_files = 'include/flatbuffers/*.h', 'src/**/*.{c,cpp,h,m}'
  spec.exclude_files = 'src/flatc_main.cpp'
  
  spec.osx.deployment_target = '10.11'
  
  spec.subspec 'src' do |src|
    src.subspec 'compiler' do |compiler|
      compiler.header_mappings_dir = 'grpc'
      compiler.source_files = 'grpc/src/**/*.{c,cpp,h,m}'
    end
  end
end
  
