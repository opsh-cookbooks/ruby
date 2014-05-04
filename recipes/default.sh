case "${node[os]} ${node[version]}" in
ubuntu*)
pkg_essential="curl openssh-server man-db build-essential make"
pkg_ubun12="libpcre3-dev libssl-dev libbz2-dev zlib1g-dev libcurl4-openssl-dev libssh2-1-dev libssh2-1"
pkg="libyaml-dev libreadline-dev libffi-dev libncurses5-dev libgdbm-dev libdbm-deep-perl"
#disable: win32ole X11 win
#dbm gdbm
${node[pkgtool]} install -y ${pkg_essential} ${pkg_ubun12} ${pkg}
;;
centos*)
pkg_essential="make gcc gcc-c++ git man"
pkg_cent6="pcre pcre-devel zlib zlib-devel openssl-devel openssl"
${node[pkgtool]} install -y ${pkg_essential} ${pkg_cent6}
;;
esac

echo $compile_src_url

compile from_url "$compile_src_url"

set_basic_path
