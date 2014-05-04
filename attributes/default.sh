compile_src_version="2.1.1"
compile_src_url="http://cache.ruby-lang.org/pub/ruby/$(echo $compile_src_version | cut -d . -f 1,2)/ruby-${compile_src_version}.tar.gz"
compile_src_path=/opt/srcv
compile_src_prefix=/opt/ruby-${compile_src_version}
compile_src_configure=""
compile_src_install="make,make install"
