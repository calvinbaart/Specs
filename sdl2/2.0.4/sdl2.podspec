Pod::Spec.new do |spec|
  spec.name = 'sdl2'
  spec.version = '2.0.4'
  spec.summary = 'Simple DirectMedia Layer is a cross-platform development library designed to provide low level access to audio, keyboard, mouse, joystick, and graphics hardware via OpenGL and Direct3D.'
  spec.homepage = 'https://www.libsdl.org/index.php'
  spec.description = "sed -i -E 's|exit_status =|//exit_status =|g' SDL2-2.0.4/src/video/uikit/SDL_uikitappdelegate.m;"
  spec.license = {:type => 'ZLIB', :file => 'COPYING.txt'}
  spec.module_name = 'SDL2'
  spec.authors = {'Sam Lantinga' => 'slouken@libsdl.org'}
  spec.source = {:http => 'https://www.libsdl.org/release/SDL2-2.0.4.zip'}
  
  spec.ios.deployment_target = '9.0'
  spec.osx.deployment_target = '10.11'

  spec.ios.requires_arc = true;
  spec.osx.requires_arc = false;

  spec.prepare_command = 'mv SDL2-2.0.4/* .'
  spec.source_files = 'src/thread/generic/SDL_syssem.c', 'include/*.h', 'src/**/*.{c,h,m}'
  spec.exclude_files = 'include/SDL_test*', 'include/SDL_config_android.h', 'include/SDL_config_minimal.h', 'include/SDL_config_pandora.h', 'include/SDL_config_psp.h', 'include/SDL_config_windows.h', 'include/SDL_config_winrt.h', 'include/SDL_config_wiz.h', 'include/SDL_alsa_audio.h', 'src/thread/pthread/SDL_syssem.c', 'src/thread/generic/SDL_syscond.c', 'src/thread/generic/SDL_sysmutex.c', 'src/thread/generic/SDL_systhread.c', 'src/thread/generic/SDL_systls.c', 'src/**/android/*', 'src/**/haiku/*', 'src/**/linux/*', 'src/**/nacl/*', 'src/**/pandora/*', 'src/**/raspberry/*', 'src/**/vivante/*', 'src/**/windows/*', 'src/**/psp/*', 'src/**/wayland/*', 'src/**/x11/*', 'src/**/emscripten/*', 'src/**/winrt/*', 'src/**/direct3d/*', 'src/**/direct3d11/*', 'src/**/directfb/*', 'src/**/mir/*', 'src/**/alsa/*', 'src/**/arts/*', 'src/**/bsd/*', 'src/**/directsound/*', 'src/**/dsp/*', 'src/**/esd/*', 'src/**/fusionsound/*', 'src/**/nas/*', 'src/**/paudio/*', 'src/**/qsa/*', 'src/**/pulseaudio/*', 'src/**/sndio/*', 'src/**/sun/*', 'src/**/winmm/*', 'src/**/xaudio2/*', 'src/main/dummy/SDL_dummy_main.c', 'src/test/*'
  spec.ios.exclude_files = 'include/SDL_egl.h', 'include/SDL_opengl_glext.h', 'include/SDL_opengles2_gl2.h', 'include/SDL_opengles2_gl2ext.h', 'include/SDL_config_macosx.h', 'src/**/darwin/*', 'src/**/disk/*'
  spec.osx.exclude_files = 'include/SDL_config_iphoneos.h', 'src/**/uikit/*', 'src/**/iphoneos/*'

  spec.ios.private_header_files = 'src/video/uikit/SDL_*.h'
  spec.osx.private_header_files = 'src/video/cocoa/SDL_*.h'

  spec.xcconfig = {}
  spec.compiler_flags = '-I${PODS_ROOT}/src/libm'
  
  spec.osx.frameworks = 'CoreAudio', 'AudioToolbox', 'GameController', 'OpenGL'
  spec.ios.frameworks = 'CoreAudio', 'AudioToolbox', 'GameController', 'CoreMotion'
end
  
